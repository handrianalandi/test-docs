"""Tests for Catapa wrapper class.

This module contains tests for the main Catapa wrapper class.

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)

References:
    NONE
"""

from unittest.mock import MagicMock, patch

import pytest
from catapa import Catapa
from catapa.auth.catapa_auth import CatapaConfig
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


@patch("catapa.wrapper.AutoRefreshApiClient.__init__")
@patch("catapa.wrapper.CatapaAuth")
def test_catapa_initialization(mock_auth_class, mock_super_init, sample_config):
    """
    Condition:
    Catapa is initialized with required parameters.

    Expected:
    Catapa instance is created with correct configuration and auth.
    """
    mock_auth_instance = MagicMock()
    mock_auth_instance.get_access_token.return_value = "test-token"
    mock_auth_class.return_value = mock_auth_instance
    mock_super_init.return_value = None

    client = Catapa(
        tenant="test-tenant",
        client_id="test-client-id",
        client_secret="test-client-secret"
    )

    assert client.config.tenant == "test-tenant"
    assert client.config.client_id == "test-client-id"
    assert client.config.client_secret == "test-client-secret"
    assert client.config.base_url == "https://api.catapa.com"
    assert client._tenant_key == "Tenant"
    mock_auth_class.assert_called_once()
    mock_super_init.assert_called_once()


@patch("catapa.wrapper.AutoRefreshApiClient.__init__")
@patch("catapa.wrapper.CatapaAuth")
def test_catapa_initialization_with_custom_base_url(mock_auth_class, mock_super_init):
    """
    Condition:
    Catapa is initialized with custom base_url.

    Expected:
    Catapa instance uses the custom base_url.
    """
    mock_auth_instance = MagicMock()
    mock_auth_instance.get_access_token.return_value = "test-token"
    mock_auth_class.return_value = mock_auth_instance
    mock_super_init.return_value = None

    client = Catapa(
        tenant="test-tenant",
        client_id="test-client-id",
        client_secret="test-client-secret",
        base_url="https://custom.api.com"
    )

    assert client.config.base_url == "https://custom.api.com"


@patch("catapa.wrapper.AutoRefreshApiClient.__init__")
@patch("catapa.wrapper.CatapaAuth")
@patch("catapa.wrapper.Configuration")
def test_catapa_initialization_creates_configuration(
    mock_config_class, mock_auth_class, mock_super_init, mock_configuration
):
    """
    Condition:
    Catapa is initialized.

    Expected:
    Configuration is created with correct host and access token.
    """
    mock_auth_instance = MagicMock()
    mock_auth_instance.get_access_token.return_value = "test-token-123"
    mock_auth_class.return_value = mock_auth_instance

    # Use the mocked configuration from conftest
    mock_config_class.return_value = mock_configuration
    mock_super_init.return_value = None

    Catapa(
        tenant="test-tenant",
        client_id="test-client-id",
        client_secret="test-client-secret",
        base_url="https://api.catapa.com"
    )

    # Verify Configuration was created with correct host
    mock_config_class.assert_called_once_with(host="https://api.catapa.com")
    # Verify access token was set
    assert mock_configuration.access_token == "test-token-123"
    # Verify super().__init__ was called with configuration and auth
    mock_super_init.assert_called_once()
    call_args = mock_super_init.call_args
    assert call_args[0][0] == mock_configuration
    assert call_args[1]["auth"] == mock_auth_instance


@patch("catapa.wrapper.AutoRefreshApiClient.__init__")
@patch("catapa.wrapper.CatapaAuth")
def test_catapa_sets_tenant_header(mock_auth_class, mock_super_init):
    """
    Condition:
    Catapa is initialized.

    Expected:
    Tenant header is set in default_headers.
    """
    mock_auth_instance = MagicMock()
    mock_auth_instance.get_access_token.return_value = "test-token"
    mock_auth_class.return_value = mock_auth_instance
    mock_super_init.return_value = None

    client = Catapa(
        tenant="my-tenant",
        client_id="test-client-id",
        client_secret="test-client-secret"
    )

    assert client.default_headers["Tenant"] == "my-tenant"


@patch("catapa.wrapper.AutoRefreshApiClient.__init__")
@patch("catapa.wrapper.CatapaAuth")
def test_refresh_auth_refreshes_token(mock_auth_class, mock_super_init):
    """
    Condition:
    refresh_auth is called.

    Expected:
    Auth token is refreshed and configuration is updated.
    """
    mock_auth_instance = MagicMock()
    mock_auth_instance.get_access_token.return_value = "new-token-456"
    mock_auth_class.return_value = mock_auth_instance
    mock_super_init.return_value = None

    client = Catapa(
        tenant="test-tenant",
        client_id="test-client-id",
        client_secret="test-client-secret"
    )

    # Set up configuration mock
    client.configuration = MagicMock()
    client.configuration.access_token = "old-token"

    client.refresh_auth()

    # Verify refresh_token was called
    mock_auth_instance.refresh_token.assert_called_once()
    # Verify configuration was updated with new token
    assert client.configuration.access_token == "new-token-456"


@patch("catapa.wrapper.AutoRefreshApiClient.__init__")
@patch("catapa.wrapper.CatapaAuth")
def test_refresh_auth_without_configuration(mock_auth_class, mock_super_init):
    """
    Condition:
    refresh_auth is called when configuration is None.

    Expected:
    Auth token is refreshed but configuration update is skipped.
    """
    mock_auth_instance = MagicMock()
    mock_auth_instance.get_access_token.return_value = "new-token"
    mock_auth_class.return_value = mock_auth_instance
    mock_super_init.return_value = None

    client = Catapa(
        tenant="test-tenant",
        client_id="test-client-id",
        client_secret="test-client-secret"
    )

    # Set configuration to None
    client.configuration = None

    # Should not raise an error
    client.refresh_auth()

    # Verify refresh_token was still called
    mock_auth_instance.refresh_token.assert_called_once()


@patch("catapa.wrapper.AutoRefreshApiClient.__init__")
@patch("catapa.wrapper.CatapaAuth")
def test_get_configuration_returns_configuration(mock_auth_class, mock_super_init):
    """
    Condition:
    get_configuration is called.

    Expected:
    Configuration object is returned.
    """
    mock_auth_instance = MagicMock()
    mock_auth_instance.get_access_token.return_value = "test-token"
    mock_auth_class.return_value = mock_auth_instance
    mock_super_init.return_value = None

    client = Catapa(
        tenant="test-tenant",
        client_id="test-client-id",
        client_secret="test-client-secret"
    )

    mock_config = MagicMock()
    client.configuration = mock_config

    config = client.get_configuration()

    assert config == mock_config


@patch("catapa.wrapper.AutoRefreshApiClient.__init__")
@patch("catapa.wrapper.CatapaAuth")
def test_catapa_inherits_from_auto_refresh_api_client(mock_auth_class, mock_super_init):
    """
    Condition:
    Catapa class is instantiated.

    Expected:
    Catapa inherits from AutoRefreshApiClient.
    """
    mock_auth_instance = MagicMock()
    mock_auth_instance.get_access_token.return_value = "test-token"
    mock_auth_class.return_value = mock_auth_instance
    mock_super_init.return_value = None

    client = Catapa(
        tenant="test-tenant",
        client_id="test-client-id",
        client_secret="test-client-secret"
    )

    # Verify inheritance
    assert isinstance(client, AutoRefreshApiClient)
