# Agent Guidelines for CATAPA Python SDK

## Build/Lint/Test Commands

- **Full setup**: `make install` (creates venv, installs dependencies with uv)
- **Install dependencies**: `make install` or `uv sync --extra dev`
- **Update dependencies**: `uv sync --extra dev` (regenerates lock file and installs all extras)
- **Run linting**: `uv run ruff check --fix .`
- **Run formatting**: `uv run ruff format .`
- **Run all tests**: `make test` or `uv run pytest tests/`
- **Run single test**: `uv run pytest tests/path/to/test_file.py::test_function`
- **Run with coverage**: `make test` (includes coverage by default)
- **Regenerate client**: `make regenerate-client` (must run before tests/examples)
- **Run example**: `make run-example` or `uv run examples/example.py`

## Code Style Guidelines

- **Line length**: 120 characters
- **Type hints**: Use Python 3.11+ syntax with `| None`, `|` unions, built-in `dict/list` (no need for `from __future__ import annotations`)
- **Imports**: PEP 8 order (stdlib, third-party, local) with absolute imports
- **Docstrings**: Google-style for all modules/classes/functions (except tests)
- **File headers**: Must include Author and References sections
- **Error handling**: Use specific exception types with proper try/except blocks
- **Testing**: pytest with Condition/Expected docstring format, use fixtures and parametrize
- **API Client**: Use requests library for HTTP, handle OAuth2 authentication automatically
- **OpenAPI Client**: Generated code in `catapa_python/generated/`, wrapper in `catapa_python/catapa/`
