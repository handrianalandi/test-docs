# IdCodeNameResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `code` | `str` |             |
| `name` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import IdCodeNameResponse

id_code_name_response = IdCodeNameResponse(id="''", code="''", name="''")
```

### Working with JSON

```python
from catapa import IdCodeNameResponse

# Parse from JSON
json_str = '{"id": "example"}'
id_code_name_response = IdCodeNameResponse.from_json(json_str)

# Convert to JSON
print(id_code_name_response.to_json())
```

### Working with dictionaries

```python
from catapa import IdCodeNameResponse

# Convert to/from dictionary
data_dict = id_code_name_response.to_dict()
id_code_name_response = IdCodeNameResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(id_code_name_response.id)
# Update properties
id_code_name_response.id = "new_value"
```
