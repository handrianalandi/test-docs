# UnprocessableContentResponse

## Properties

| Name      | Type        | Description                |
| :-------- | :---------- | :------------------------- |
| `error`   | `str`       | Error message              |
| `details` | `List[str]` | Business validation errors |

## Usage Examples

### Creating an instance

```python
from catapa import UnprocessableContentResponse

unprocessable_content_response = UnprocessableContentResponse(error="''", details=[""])
```

### Working with JSON

```python
from catapa import UnprocessableContentResponse

# Parse from JSON
json_str = '{"error": "example"}'
unprocessable_content_response = UnprocessableContentResponse.from_json(json_str)

# Convert to JSON
print(unprocessable_content_response.to_json())
```

### Working with dictionaries

```python
from catapa import UnprocessableContentResponse

# Convert to/from dictionary
data_dict = unprocessable_content_response.to_dict()
unprocessable_content_response = UnprocessableContentResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(unprocessable_content_response.error)
# Update properties
unprocessable_content_response.error = "new_value"
```
