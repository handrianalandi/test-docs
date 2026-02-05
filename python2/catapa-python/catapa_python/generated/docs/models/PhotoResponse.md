# PhotoResponse

## Properties

| Name  | Type  | Description |
| :---- | :---- | :---------- |
| `url` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PhotoResponse

photo_response = PhotoResponse(url="''")
```

### Working with JSON

```python
from catapa import PhotoResponse

# Parse from JSON
json_str = '{"url": "example"}'
photo_response = PhotoResponse.from_json(json_str)

# Convert to JSON
print(photo_response.to_json())
```

### Working with dictionaries

```python
from catapa import PhotoResponse

# Convert to/from dictionary
data_dict = photo_response.to_dict()
photo_response = PhotoResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(photo_response.url)
# Update properties
photo_response.url = "new_value"
```
