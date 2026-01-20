"""Pytest configuration and shared fixtures.

This module provides shared fixtures and mocks for all tests, including
mocks for the generated OpenAPI client to make tests independent of generated code.

Authors:
    Handrian Alandi (handrian.alandi@gdplabs.id)

References:
    NONE
"""

import sys
from pathlib import Path
from types import ModuleType
from unittest.mock import MagicMock

import pytest

# Constants
DEFAULT_RESPONSE_DATA = b'{"result": "success"}'
DEFAULT_BASE_URL = "https://api.catapa.com"

# Add the package directory to Python path so catapa can be imported
# This must happen before any imports that use catapa
PACKAGE_DIR = Path(__file__).parent.parent / "catapa_python"
if str(PACKAGE_DIR) not in sys.path:
    sys.path.insert(0, str(PACKAGE_DIR))


def create_mock_openapi_client() -> ModuleType:
    """Create a mock openapi_client module."""
    # Create a proper module object
    mock_openapi = ModuleType('openapi_client')

    # Mock Configuration class
    class MockConfiguration:
        """Mock Configuration class for OpenAPI client."""
        def __init__(self, host: str | None = None):
            self.host = host or DEFAULT_BASE_URL
            self.access_token = None

    mock_openapi.Configuration = MockConfiguration

    # Mock ApiClient class
    class MockApiClient:
        """Mock ApiClient class for OpenAPI client."""
        def __init__(self, configuration=None, header_name=None, header_value=None, cookie=None):
            self.configuration = configuration
            self.default_headers = {}

        def call_api(self, *args, **kwargs):
            """Mock call_api method."""
            pass

    mock_openapi.ApiClient = MockApiClient

    # Mock rest module with RESTResponse
    class MockRESTResponse:
        """Mock RESTResponse class for OpenAPI client."""
        def __init__(self, resp=None):
            self.response = resp
            self.status = getattr(resp, 'status', 200) if resp else 200
            self.reason = getattr(resp, 'reason', 'OK') if resp else 'OK'
            self.data = getattr(resp, 'data', DEFAULT_RESPONSE_DATA) if resp else DEFAULT_RESPONSE_DATA

        def read(self):
            """Read response data."""
            return self.data

    # Create rest as a proper submodule
    mock_rest = ModuleType('openapi_client.rest')
    mock_rest.RESTResponse = MockRESTResponse
    mock_openapi.rest = mock_rest

    # Register the rest submodule in sys.modules so imports work
    sys.modules['openapi_client.rest'] = mock_rest

    return mock_openapi


# Install the mock IMMEDIATELY before any imports
# This must happen at module import time, before pytest or any test code runs
if 'openapi_client' not in sys.modules:
    mock_module = create_mock_openapi_client()
    sys.modules['openapi_client'] = mock_module
else:
    # If it exists but doesn't have our mocks, replace it
    existing = sys.modules.get('openapi_client')
    if not hasattr(existing, 'ApiClient') or not hasattr(existing, 'Configuration'):
        mock_module = create_mock_openapi_client()
        sys.modules['openapi_client'] = mock_module


@pytest.fixture(scope="session", autouse=True)
def ensure_mock_openapi_client():
    """Ensure openapi_client is mocked for all tests."""
    # Reinstall mock if it was removed or replaced
    needs_mock = (
        'openapi_client' not in sys.modules or
        not hasattr(sys.modules['openapi_client'], 'Configuration')
    )
    if needs_mock:
        sys.modules['openapi_client'] = create_mock_openapi_client()

    yield

    # Keep the mock in place after tests


@pytest.fixture
def mock_configuration():
    """Fixture providing a mocked Configuration object."""
    # Import after mock is set up
    from openapi_client import Configuration  # noqa: PLC0415
    config = Configuration(host=DEFAULT_BASE_URL)
    config.access_token = "initial-token"
    return config


@pytest.fixture
def mock_rest_response():
    """Fixture providing a mocked RESTResponse object."""
    # Import after mock is set up
    from openapi_client.rest import RESTResponse  # noqa: PLC0415
    # Create a mock response object
    mock_resp = MagicMock()
    mock_resp.status = 200
    mock_resp.reason = "OK"
    mock_resp.data = DEFAULT_RESPONSE_DATA

    response = RESTResponse(mock_resp)
    return response

