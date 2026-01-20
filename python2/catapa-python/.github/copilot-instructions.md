# GitHub Copilot Instructions

You are an expert in Python with extensive experience in industry best practices, code structure, and modularity. Specifically in API client libraries, OAuth2 authentication, OpenAPI client generation, pytest, and type hints.

## Core Python Development Standards

- Write concise, idiomatic code that follows best practices for the target language
- Use descriptive and meaningful variable, function, and class names
- Apply appropriate programming paradigms (OOP, functional, etc.)
- Avoid code duplication through proper abstraction
- Follow consistent formatting and documentation standards
- Follow PEP 8 style guide strictly
- Maximum line length: 120 characters
- Use type hints for all function parameters and return values (Python 3.11+):
  - **Strictly avoid** importing `Optional`, `Union`, `Dict`, `List`, or `Tuple` from `typing`
  - Use `| None` instead of `Optional`, `|` instead of `Union`
  - Use built-in `dict`, `list`, `tuple`, `set`, `frozenset`, `type` instead of `typing` equivalents
- Organize imports following PEP 8 order: stdlib, third-party, local
- Use absolute imports
- Use Google-style docstrings for all modules, classes, and functions (except in tests/)

## API Client Library Standards

### API Client Best Practices

- Use `requests` library for synchronous HTTP requests
- Implement proper OAuth2 authentication with automatic token refresh
- Use dataclasses or Pydantic models for configuration and data structures
- Handle HTTP errors with specific exception types
- Implement proper retry logic for transient failures
- Use connection pooling for multiple requests
- Implement proper timeout handling
- Use context managers for resource cleanup

### OpenAPI Client Integration

- Generated code lives in `catapa_python/generated/openapi_client/`
- Wrapper code lives in `catapa_python/catapa/`
- Wrapper should be regeneration-safe (not affected by OpenAPI client regeneration)
- Re-export generated classes through `catapa` package for easier imports
- Use `AutoRefreshApiClient` pattern for automatic token refresh

### Authentication Best Practices

- Implement OAuth2 client credentials flow
- Cache access tokens with expiration tracking
- Automatically refresh tokens before expiration (5-minute buffer)
- Thread-safe token management for concurrent requests
- Use `requests.auth.HTTPBasicAuth` for client credentials

## Documentation Standards

### File-Level Docstring Standards

Every Python module file must start with a module-level docstring containing:

- **Brief description**: One-line summary of the module's purpose
- **Authors**: Required section with format `Authors:\n    Name (email@domain.com)`
- **References**: Required section listing external references, documentation links, or "NONE" if no references

Example format:

```python
"""Brief description of the module.

Authors:
    Name (name@example.com)

References:
    [1] https://example.com/reference
```

### Python Docstring Standards

- Follow Google Python Style Guide for docstrings
- Explain concisely what a class and/or function does
- List the arguments and public attributes and their data types, exceptions that are triggered by a function, and what the return type is. If any of these are empty or None, omit the section
- If there are class methods that are marked with the @property decorator, list them as an attribute. The type should be the property getter method's return type
- No need to list the methods
- No need to list protected or private attributes
- If a function argument has a default, clearly indicate it as optional (e.g. arg (type, optional)). In the last sentence of the argument's explanation, state what the default value is (e.g. "Defaults to None")
- The above rules apply for both public and protected methods
- For the constructor, no need to put its Args section in the class docstring. Only put them inside the init method's docstring

Example docstring format:

```python
def example_function(param1: str, param2: int = 10) -> bool:
    """Brief description of what the function does.

    Args:
        param1 (str): Description of param1.
        param2 (int, optional): Description of param2. Defaults to 10.

    Returns:
        bool: Description of return value.

    Raises:
        ValueError: When param1 is invalid.
    """
    pass
```

### Code Comments Standards

- Use inline comments sparingly and only when necessary to explain complex logic
- Write self-documenting code that reduces the need for comments
- Use TODO/FIXME comments with issue numbers when applicable
- Document complex algorithms with block comments above the code section
- Prefer type hints over comments for documenting parameter types

## Testing Standards

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
- Use pytest.mark.parametrize for conciseness when covering variations of input whenever possible
- If you are testing an asynchronous class or method, use pytest.mark.asyncio

### Test Organization

- Group related tests in test classes
- Use descriptive test file names (test_module_name.py)
- Separate unit tests, integration tests, and end-to-end tests
- Use conftest.py for shared fixtures
- Mock external dependencies appropriately (use `unittest.mock` or `pytest-mock`)

Example test structure:

```python
import pytest
from unittest.mock import MagicMock, patch

@pytest.fixture
def sample_data() -> dict[str, Any]:
    """Fixture providing sample test data."""
    return {"key": "value", "number": 42}

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

## Code Generation Preferences

- Always include necessary import statements
- Add comprehensive docstrings to all functions and classes (including file-level docstrings with Author and References sections)
- Use descriptive variable names that clearly indicate their purpose
- Implement proper error handling with specific exception types
- Include logging statements using the `logging` module for important operations
- Use `| None` for nullable parameters instead of `Optional` from typing (Python 3.11+ native syntax)
- Prefer composition over inheritance when designing classes
- Use dataclasses or Pydantic models for data structures
- Include unit tests when creating new functions or classes
- Always validate input parameters in functions
- Provide code that is immediately runnable
- Suggest improvements or alternative approaches when relevant
- Prioritize readability and maintainability over premature optimization
- Ensure wrapper code is regeneration-safe (won't break when OpenAPI client is regenerated)
