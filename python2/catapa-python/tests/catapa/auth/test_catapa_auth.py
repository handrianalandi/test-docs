"""Tests for CatapaAuth and CatapaConfig classes.

This module contains tests for the CATAPA authentication classes.

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)

References:
    NONE
"""

import time
from unittest.mock import MagicMock, patch

import pytest
import requests
from catapa.auth.catapa_auth import CatapaAuth, CatapaConfig, TokenInfo


@pytest.fixture
def sample_config():
    """Fixture providing a sample CatapaConfig for tests."""
    return CatapaConfig(
        tenant="test-tenant",
        client_id="test-client-id",
        client_secret="test-client-secret",
        base_url="https://api.catapa.com"
    )


@pytest.fixture
def sample_token_response():
    """Fixture providing a sample OAuth token response."""
    return {
        "access_token": "test-access-token-12345",
        "token_type": "Bearer",
        "expires_in": 3600
    }


def test_catapa_config_creation():
    """
    Condition:
    CatapaConfig is created with required fields.

    Expected:
    Config is created successfully with all provided fields.
    """
    config = CatapaConfig(
        tenant="my-tenant",
        client_id="my-client-id",
        client_secret="my-secret",
        base_url="https://custom.api.com"
    )

    assert config.tenant == "my-tenant"
    assert config.client_id == "my-client-id"
    assert config.client_secret == "my-secret"
    assert config.base_url == "https://custom.api.com"


def test_catapa_config_default_base_url():
    """
    Condition:
    CatapaConfig is created without base_url.

    Expected:
    Config uses default base_url.
    """
    config = CatapaConfig(
        tenant="my-tenant",
        client_id="my-client-id",
        client_secret="my-secret"
    )

    assert config.base_url == "https://api.catapa.com"


def test_catapa_auth_initialization(sample_config):
    """
    Condition:
    CatapaAuth is initialized with a config.

    Expected:
    Auth instance is created with no token initially.
    """
    auth = CatapaAuth(sample_config)

    assert auth.config == sample_config
    assert auth._token_info is None


@patch("catapa.auth.catapa_auth.requests.post")
def test_get_access_token_fetches_new_token(mock_post, sample_config, sample_token_response):
    """
    Condition:
    get_access_token is called when no token exists.

    Expected:
    New token is fetched from OAuth endpoint and returned.
    """
    mock_response = MagicMock()
    mock_response.json.return_value = sample_token_response
    mock_response.raise_for_status.return_value = None
    mock_post.return_value = mock_response

    auth = CatapaAuth(sample_config)
    token = auth.get_access_token()

    assert token == "test-access-token-12345"
    assert auth._token_info is not None
    assert auth._token_info.access_token == "test-access-token-12345"
    assert auth._token_info.token_type == "Bearer"
    mock_post.assert_called_once()


@patch("catapa.auth.catapa_auth.requests.post")
def test_get_access_token_uses_existing_valid_token(mock_post, sample_config, sample_token_response):
    """
    Condition:
    get_access_token is called when a valid token already exists.

    Expected:
    Existing token is returned without making a new request.
    """
    mock_response = MagicMock()
    mock_response.json.return_value = sample_token_response
    mock_response.raise_for_status.return_value = None
    mock_post.return_value = mock_response

    auth = CatapaAuth(sample_config)

    # First call - fetch token
    token1 = auth.get_access_token()

    # Second call - should use cached token
    token2 = auth.get_access_token()

    assert token1 == token2 == "test-access-token-12345"
    # Should only be called once
    assert mock_post.call_count == 1


@patch("catapa.auth.catapa_auth.requests.post")
def test_get_access_token_refreshes_expired_token(mock_post, sample_config, sample_token_response):
    """
    Condition:
    get_access_token is called when token is expired.

    Expected:
    New token is fetched and returned.
    """
    mock_response = MagicMock()
    mock_response.json.return_value = sample_token_response
    mock_response.raise_for_status.return_value = None
    mock_post.return_value = mock_response

    auth = CatapaAuth(sample_config)

    # Set an expired token
    auth._token_info = TokenInfo(
        access_token="old-token",
        token_type="Bearer",
        expires_at=time.time() - 1000  # Expired long ago
    )

    token = auth.get_access_token()

    assert token == "test-access-token-12345"
    assert auth._token_info.access_token == "test-access-token-12345"
    # Should have been called to refresh
    assert mock_post.call_count == 1


@patch("catapa.auth.catapa_auth.requests.post")
def test_get_access_token_refreshes_token_near_expiration(mock_post, sample_config, sample_token_response):
    """
    Condition:
    get_access_token is called when token is near expiration (within 5-minute buffer).

    Expected:
    New token is fetched due to 5-minute buffer.
    """
    mock_response = MagicMock()
    mock_response.json.return_value = sample_token_response
    mock_response.raise_for_status.return_value = None
    mock_post.return_value = mock_response

    auth = CatapaAuth(sample_config)

    # Set a token that expires in 4 minutes (within 5-minute buffer)
    auth._token_info = TokenInfo(
        access_token="old-token",
        token_type="Bearer",
        expires_at=time.time() + (4 * 60)  # 4 minutes from now
    )

    token = auth.get_access_token()

    assert token == "test-access-token-12345"
    # Should have been called to refresh
    assert mock_post.call_count == 1


@patch("catapa.auth.catapa_auth.requests.post")
def test_get_access_token_handles_http_error(mock_post, sample_config):
    """
    Condition:
    OAuth endpoint returns an HTTP error.

    Expected:
    Exception is raised with descriptive message.
    """
    mock_response = MagicMock()
    mock_response.raise_for_status.side_effect = requests.exceptions.HTTPError("401 Unauthorized")
    mock_post.return_value = mock_response

    auth = CatapaAuth(sample_config)

    with pytest.raises(Exception, match="Failed to obtain access token"):
        auth.get_access_token()


@patch("catapa.auth.catapa_auth.requests.post")
def test_get_access_token_handles_request_exception(mock_post, sample_config):
    """
    Condition:
    OAuth request fails with a network error.

    Expected:
    Exception is raised with descriptive message.
    """
    mock_post.side_effect = requests.exceptions.ConnectionError("Connection failed")

    auth = CatapaAuth(sample_config)

    with pytest.raises(Exception, match="Failed to obtain access token"):
        auth.get_access_token()


@patch("catapa.auth.catapa_auth.requests.post")
def test_refresh_token_clears_existing_token(mock_post, sample_config, sample_token_response):
    """
    Condition:
    refresh_token is called.

    Expected:
    Existing token is cleared and a new token is fetched.
    """
    mock_response = MagicMock()
    mock_response.json.return_value = sample_token_response
    mock_response.raise_for_status.return_value = None
    mock_post.return_value = mock_response

    auth = CatapaAuth(sample_config)

    # Set an existing token
    auth._token_info = TokenInfo(
        access_token="old-token",
        token_type="Bearer",
        expires_at=time.time() + 3600
    )

    auth.refresh_token()

    assert auth._token_info.access_token == "test-access-token-12345"
    assert mock_post.call_count == 1


def test_is_token_valid_with_no_token():
    """
    Condition:
    _is_token_valid is called when no token exists.

    Expected:
    Returns False.
    """
    config = CatapaConfig(
        tenant="test",
        client_id="test",
        client_secret="test"
    )
    auth = CatapaAuth(config)

    assert auth._is_token_valid() is False


def test_is_token_valid_with_valid_token(sample_config):
    """
    Condition:
    _is_token_valid is called with a valid token.

    Expected:
    Returns True.
    """
    auth = CatapaAuth(sample_config)
    auth._token_info = TokenInfo(
        access_token="test-token",
        token_type="Bearer",
        expires_at=time.time() + 3600  # Valid for 1 hour
    )

    assert auth._is_token_valid() is True


def test_is_token_valid_with_expired_token(sample_config):
    """
    Condition:
    _is_token_valid is called with an expired token.

    Expected:
    Returns False.
    """
    auth = CatapaAuth(sample_config)
    auth._token_info = TokenInfo(
        access_token="test-token",
        token_type="Bearer",
        expires_at=time.time() - 1000  # Expired
    )

    assert auth._is_token_valid() is False


@patch("catapa.auth.catapa_auth.requests.get")
def test_validate_token_with_valid_token(mock_get, sample_config):
    """
    Condition:
    validate_token is called with a valid token.

    Expected:
    Returns True.
    """
    mock_response = MagicMock()
    mock_response.ok = True
    mock_get.return_value = mock_response

    auth = CatapaAuth(sample_config)
    auth._token_info = TokenInfo(
        access_token="test-token",
        token_type="Bearer",
        expires_at=time.time() + 3600
    )

    result = auth.validate_token()

    assert result is True
    mock_get.assert_called_once()


@patch("catapa.auth.catapa_auth.requests.get")
def test_validate_token_with_invalid_token(mock_get, sample_config):
    """
    Condition:
    validate_token is called with an invalid token.

    Expected:
    Returns False.
    """
    mock_response = MagicMock()
    mock_response.ok = False
    mock_get.return_value = mock_response

    auth = CatapaAuth(sample_config)
    auth._token_info = TokenInfo(
        access_token="invalid-token",
        token_type="Bearer",
        expires_at=time.time() + 3600
    )

    result = auth.validate_token()

    assert result is False


@patch("catapa.auth.catapa_auth.requests.get")
def test_validate_token_with_custom_token(mock_get, sample_config):
    """
    Condition:
    validate_token is called with a custom token parameter.

    Expected:
    Validates the provided token instead of stored token.
    """
    mock_response = MagicMock()
    mock_response.ok = True
    mock_get.return_value = mock_response

    auth = CatapaAuth(sample_config)

    result = auth.validate_token(access_token="custom-token")

    assert result is True
    # Verify the custom token was used in the Authorization header
    call_args = mock_get.call_args
    assert "Bearer custom-token" in call_args[1]["headers"]["Authorization"]


def test_validate_token_with_no_token(sample_config):
    """
    Condition:
    validate_token is called when no token exists.

    Expected:
    Returns False.
    """
    auth = CatapaAuth(sample_config)

    result = auth.validate_token()

    assert result is False


@patch("catapa.auth.catapa_auth.requests.get")
def test_validate_token_handles_request_exception(mock_get, sample_config):
    """
    Condition:
    validate_token request fails with an exception.

    Expected:
    Returns False.
    """
    mock_get.side_effect = requests.exceptions.RequestException("Network error")

    auth = CatapaAuth(sample_config)
    auth._token_info = TokenInfo(
        access_token="test-token",
        token_type="Bearer",
        expires_at=time.time() + 3600
    )

    result = auth.validate_token()

    assert result is False


@patch("catapa.auth.catapa_auth.requests.post")
def test_get_token_info_returns_token_info(mock_post, sample_config, sample_token_response):
    """
    Condition:
    get_token_info is called when a token exists.

    Expected:
    Returns token info dictionary with truncated access token.
    """
    mock_response = MagicMock()
    mock_response.json.return_value = sample_token_response
    mock_response.raise_for_status.return_value = None
    mock_post.return_value = mock_response

    auth = CatapaAuth(sample_config)
    auth.get_access_token()

    token_info = auth.get_token_info()

    assert token_info is not None
    assert "access_token" in token_info
    assert "..." in token_info["access_token"]  # Should be truncated
    assert token_info["token_type"] == "Bearer"
    assert "expires_at" in token_info
    assert "is_valid" in token_info


def test_get_token_info_with_no_token(sample_config):
    """
    Condition:
    get_token_info is called when no token exists.

    Expected:
    Returns None.
    """
    auth = CatapaAuth(sample_config)

    token_info = auth.get_token_info()

    assert token_info is None


def test_clear_token(sample_config):
    """
    Condition:
    clear_token is called.

    Expected:
    Stored token is cleared.
    """
    auth = CatapaAuth(sample_config)
    auth._token_info = TokenInfo(
        access_token="test-token",
        token_type="Bearer",
        expires_at=time.time() + 3600
    )

    auth.clear_token()

    assert auth._token_info is None


@patch("catapa.auth.catapa_auth.requests.post")
def test_token_expires_in_handled_correctly(mock_post, sample_config):
    """
    Condition:
    Token response includes expires_in field.

    Expected:
    Token expiration is calculated correctly.
    """
    mock_response = MagicMock()
    mock_response.json.return_value = {
        "access_token": "test-token",
        "token_type": "Bearer",
        "expires_in": 7200  # 2 hours
    }
    mock_response.raise_for_status.return_value = None
    mock_post.return_value = mock_response

    auth = CatapaAuth(sample_config)
    auth.get_access_token()

    # Check that expires_at is approximately 2 hours from now
    expected_expires_at = time.time() + 7200
    assert abs(auth._token_info.expires_at - expected_expires_at) < 5  # Within 5 seconds


@patch("catapa.auth.catapa_auth.requests.post")
def test_token_default_expires_in(mock_post, sample_config):
    """
    Condition:
    Token response does not include expires_in field.

    Expected:
    Default expiration of 3600 seconds is used.
    """
    mock_response = MagicMock()
    mock_response.json.return_value = {
        "access_token": "test-token",
        "token_type": "Bearer"
        # No expires_in
    }
    mock_response.raise_for_status.return_value = None
    mock_post.return_value = mock_response

    auth = CatapaAuth(sample_config)
    auth.get_access_token()

    # Check that expires_at is approximately 1 hour from now (default)
    expected_expires_at = time.time() + 3600
    assert abs(auth._token_info.expires_at - expected_expires_at) < 5  # Within 5 seconds
