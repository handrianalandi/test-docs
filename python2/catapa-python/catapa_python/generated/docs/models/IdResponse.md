# IdResponse

## Properties

| Name | Type  | Description |
| :--- | :---- | :---------- |
| `id` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import IdResponse

id_response = IdResponse(id="''")
```

### Working with JSON

```python
from catapa import IdResponse

# Parse from JSON
json_str = '{"id": "example"}'
id_response = IdResponse.from_json(json_str)

# Convert to JSON
print(id_response.to_json())
```

### Working with dictionaries

```python
from catapa import IdResponse

# Convert to/from dictionary
data_dict = id_response.to_dict()
id_response = IdResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(id_response.id)
# Update properties
id_response.id = "new_value"
```
