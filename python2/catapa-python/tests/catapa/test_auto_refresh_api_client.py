"""Tests for AutoRefreshApiClient class.

This module contains tests for the auto-refresh API client wrapper.

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)

References:
    NONE
"""

from unittest.mock import patch

import pytest
from catapa.auth.catapa_auth import CatapaAuth, CatapaConfig
from catapa.auto_refresh_api_client import AutoRefreshApiClient


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
def sample_auth(sample_config):
    """Fixture providing a CatapaAuth instance for tests."""
    return CatapaAuth(sample_config)


@pytest.fixture
def sample_configuration(mock_configuration):
    """Fixture providing a sample Configuration for tests."""
    # Use the mocked configuration from conftest
    config = mock_configuration
    config.host = "https://api.catapa.com"
    config.access_token = "initial-token"
    return config


def test_auto_refresh_api_client_initialization(sample_configuration, sample_auth):
    """
    Condition:
    AutoRefreshApiClient is initialized with configuration and auth.

    Expected:
    Client is initialized with auth instance stored.
    """
    client = AutoRefreshApiClient(sample_configuration, auth=sample_auth)

    assert client._catapa_auth == sample_auth
    assert client.configuration == sample_configuration


def test_auto_refresh_api_client_initialization_without_auth(sample_configuration):
    """
    Condition:
    AutoRefreshApiClient is initialized without auth.

    Expected:
    Client is initialized with None auth.
    """
    client = AutoRefreshApiClient(sample_configuration)

    assert client._catapa_auth is None
    assert client.configuration == sample_configuration


def test_auto_refresh_api_client_initialization_with_headers(sample_configuration):
    """
    Condition:
    AutoRefreshApiClient is initialized with custom headers.

    Expected:
    Client is initialized with custom headers.
    """
    client = AutoRefreshApiClient(
        sample_configuration,
        header_name="X-Custom-Header",
        header_value="custom-value"
    )

    assert client._catapa_auth is None
    assert client.configuration == sample_configuration


@patch("catapa.auto_refresh_api_client.ApiClient.call_api")
def test_call_api_refreshes_token_before_request(
    mock_super_call_api, sample_configuration, sample_auth, mock_rest_response, mock_configuration
):
    """
    Condition:
    call_api is called with auth configured.

    Expected:
    Token is refreshed before calling parent call_api method.
    """
    # Mock the auth's get_access_token to return a new token
    with patch.object(sample_auth, "get_access_token", return_value="refreshed-token") as mock_get_token:
        # Mock the parent call_api to return a RESTResponse
        mock_super_call_api.return_value = mock_rest_response

        client = AutoRefreshApiClient(sample_configuration, auth=sample_auth)

        # Call call_api
        result = client.call_api(resource_path="/test", method="GET")

        # Verify token was refreshed
        mock_get_token.assert_called_once()
        # Verify configuration was updated with new token
        assert client.configuration.access_token == "refreshed-token"
        # Verify parent call_api was called
        mock_super_call_api.assert_called_once()
        # Verify result is returned
        assert result == mock_rest_response


@patch("catapa.auto_refresh_api_client.ApiClient.call_api")
def test_call_api_without_auth_does_not_refresh(mock_super_call_api, sample_configuration, mock_rest_response):
    """
    Condition:
    call_api is called without auth configured.

    Expected:
    Parent call_api is called without token refresh.
    """
    mock_super_call_api.return_value = mock_rest_response
    client = AutoRefreshApiClient(sample_configuration)

    result = client.call_api(resource_path="/test", method="GET")

    # Verify parent call_api was called
    mock_super_call_api.assert_called_once()
    # Configuration should remain unchanged
    assert client.configuration.access_token == "initial-token"
    # Verify result is returned
    assert result == mock_rest_response


@patch("catapa.auto_refresh_api_client.ApiClient.call_api")
def test_call_api_without_configuration(mock_super_call_api, sample_auth, mock_rest_response):
    """
    Condition:
    call_api is called when configuration is None.

    Expected:
    Token refresh is attempted but configuration update is skipped.
    """
    mock_super_call_api.return_value = mock_rest_response
    with patch.object(sample_auth, "get_access_token", return_value="refreshed-token") as mock_get_token:
        client = AutoRefreshApiClient(None, auth=sample_auth)

        result = client.call_api(resource_path="/test", method="GET")

        # Verify token was still refreshed
        mock_get_token.assert_called_once()
        # Verify parent call_api was called
        mock_super_call_api.assert_called_once()
        # Verify result is returned
        assert result == mock_rest_response


@patch("catapa.auto_refresh_api_client.ApiClient.call_api")
def test_call_api_passes_all_arguments(mock_super_call_api, sample_configuration, sample_auth, mock_rest_response):
    """
    Condition:
    call_api is called with various arguments.

    Expected:
    All arguments are passed to parent call_api method.
    """
    mock_super_call_api.return_value = mock_rest_response
    with patch.object(sample_auth, "get_access_token", return_value="refreshed-token"):
        client = AutoRefreshApiClient(sample_configuration, auth=sample_auth)

        result = client.call_api(
            resource_path="/api/v1/employees",
            method="POST",
            body={"name": "Test"},
            query_params={"page": 1},
            header_params={"Content-Type": "application/json"}
        )

        # Verify parent call_api was called with all arguments
        mock_super_call_api.assert_called_once()
        call_args = mock_super_call_api.call_args
        assert call_args[1]["resource_path"] == "/api/v1/employees"
        assert call_args[1]["method"] == "POST"
        assert call_args[1]["body"] == {"name": "Test"}
        # Verify result is returned
        assert result == mock_rest_response


@patch("catapa.auto_refresh_api_client.ApiClient.call_api")
def test_call_api_handles_auth_exception_gracefully(mock_super_call_api, sample_configuration, sample_auth):
    """
    Condition:
    Token refresh fails with an exception.

    Expected:
    Exception is raised and parent call_api is not called.
    """
    with patch.object(sample_auth, "get_access_token", side_effect=Exception("Auth failed")):
        client = AutoRefreshApiClient(sample_configuration, auth=sample_auth)

        with pytest.raises(Exception, match="Auth failed"):
            client.call_api(resource_path="/test", method="GET")

        # Verify parent call_api was not called
        mock_super_call_api.assert_not_called()
