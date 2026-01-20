# Unit Testing Standards

Rules for creating unit tests, test cases, and testing strategies.

## Python Testing Standards

Follow these testing standards for all Python test code using pytest framework.

### Unit Test Standards

- Use the pytest framework
- Each test function name must begin with "test\_" and very concisely describe what the test is about
- Each test function must contain a docstring of the following format:

```python
"""
Condition:
(The assumptions and conditions of the test; what is given, etc.)

Expected:
(The expected behavior of the method under this testing condition.)
"""
```

- Use and/or create fixtures whenever possible
- Include type hints for test function parameters and fixtures
- Use pytest.mark.parametrize for conciseness when covering variations of input whenever possible
- If you are testing an asynchronous class or method, use pytest.mark.asyncio

### Test Organization

- Group related tests in test classes
- Use descriptive test file names (test_module_name.py)
- Separate unit tests, integration tests, and end-to-end tests
- Use conftest.py for shared fixtures
- Mock external dependencies appropriately (use `unittest.mock` or `pytest-mock`)

### Example Test Structure

```python
import pytest
from unittest.mock import MagicMock, patch

@pytest.fixture
def sample_data() -> dict[str, Any]:
    """Fixture providing sample test data."""
    return {"key": "value", "number": 42}

@pytest.mark.parametrize("input_value,expected", [
    ("valid_input", True),
    ("invalid_input", False),
])
def test_validation_function(input_value: str, expected: bool) -> None:
    """
    Condition:
    Given a validation function and various input values.

    Expected:
    The function should return True for valid inputs and False for invalid inputs.
    """
    result = validate_input(input_value)
    assert result == expected

@patch("catapa.auth.catapa_auth.requests.post")
def test_oauth_authentication(mock_post: MagicMock) -> None:
    """
    Condition:
    Given OAuth2 authentication with valid credentials.

    Expected:
    The function should return a valid access token.
    """
    mock_response = MagicMock()
    mock_response.json.return_value = {"access_token": "token123", "expires_in": 3600}
    mock_post.return_value = mock_response

    auth = CatapaAuth(config)
    token = auth.get_access_token()

    assert token == "token123"
```

### Testing Best Practices

- Aim for high test coverage (>90% for critical code paths)
- Write tests before or alongside code (TDD/BDD approach)
- Use meaningful assertions with descriptive error messages
- Test edge cases and error conditions
- Keep tests independent and isolated
- Use factory patterns for test data creation
- Mock external services and dependencies (HTTP requests, API calls)
- Test both positive and negative scenarios
- Mock `requests` library calls for API client tests
