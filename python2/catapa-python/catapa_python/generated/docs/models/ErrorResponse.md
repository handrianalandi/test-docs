# ErrorResponse

## Properties

| Name        | Type  | Description                       |
| :---------- | :---- | :-------------------------------- |
| `code`      | `str` | Error code                        |
| `message`   | `str` | Error message                     |
| `status`    | `int` | HTTP status code                  |
| `timestamp` | `str` | Timestamp when the error occurred |

## Usage Examples

### Creating an instance

```python
from catapa import ErrorResponse

error_response = ErrorResponse(code="''", message="''", status=56, timestamp="''")
```

### Working with JSON

```python
from catapa import ErrorResponse

# Parse from JSON
json_str = '{"code": "example"}'
error_response = ErrorResponse.from_json(json_str)

# Convert to JSON
print(error_response.to_json())
```

### Working with dictionaries

```python
from catapa import ErrorResponse

# Convert to/from dictionary
data_dict = error_response.to_dict()
error_response = ErrorResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(error_response.code)
# Update properties
error_response.code = "new_value"
```
