# Documentation Generation Standards

Rules for writing documentation, comments, and technical specifications.

## File-Level Docstring Standards

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

## Python Docstring Standards

Follow these docstring standards for all Python code documentation.

### Docstring Standards

- Follow Google Python Style Guide for docstrings
- Explain concisely what a class and/or function does
- List the arguments and public attributes and their data types, exceptions that are triggered by a function, and what the return type is. If any of these are empty or None, omit the section
- If there are class methods that are marked with the @property decorator, list them as an attribute. The type should be the property getter method's return type
- No need to list the methods
- No need to list protected or private attributes
- If a function argument has a default, clearly indicate it as optional (e.g. arg (type, optional)). In the last sentence of the argument's explanation, state what the default value is (e.g. "Defaults to None")
- The above rules apply for both public and protected methods
- For the constructor, no need to put its Args section in the class docstring. Only put them inside the init method's docstring

### Example Format

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

## Code Comments Standards

- Use inline comments sparingly and only when necessary to explain complex logic
- Write self-documenting code that reduces the need for comments
- Use TODO/FIXME comments with issue numbers when applicable
- Document complex algorithms with block comments above the code section
- Use type hints instead of comments to document parameter types

## README and Documentation Standards

- Include clear installation instructions
- Provide usage examples with expected outputs
- Document all environment variables and configuration options
- Include API documentation for client usage
- Maintain changelog for version tracking
- Use markdown formatting consistently
