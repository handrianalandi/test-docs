# Code Generation Standards

Rules for generating code, implementing features, and creating new functionality.

## Core Python Development Standards

You are an expert in Python with extensive experience in industry best practices, code structure, and modularity. Specifically in API client libraries, OAuth2 authentication, OpenAPI client generation, pytest, and type hints.

### Code Standards

- Write concise, idiomatic code that follows best practices for the target language
- Use descriptive and meaningful variable, function, and class names
- Apply appropriate programming paradigms (OOP, functional, etc.)
- Avoid code duplication through proper abstraction
- Follow consistent formatting and documentation standards
- Follow PEP 8 style guide strictly
- Maximum line length: 120 characters
- Use type hints for function parameters and return values
- Use Python 3.8+ with `from __future__ import annotations` for modern type hinting:
  - **Strictly avoid** importing `Optional`, `Union`, `Dict`, `List`, or `Tuple` from `typing` when using `from __future__ import annotations`
  - Use `| None` instead of `Optional`, `|` instead of `Union`
  - Use built-in `dict`, `list`, `tuple`, `set`, `frozenset`, `type` instead of `typing` equivalents
- Organize imports following PEP 8 order: stdlib, third-party, local
- Use absolute imports
- Use Google-style docstrings for all modules, classes, and functions (except in tests/)

## API Client Library Standards

Guidelines for API client development and related technologies.

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
