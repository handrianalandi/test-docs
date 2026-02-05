# NameResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `name` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import NameResponse

name_response = NameResponse(name="''")
```

### Working with JSON

```python
from catapa import NameResponse

# Parse from JSON
json_str = '{"name": "example"}'
name_response = NameResponse.from_json(json_str)

# Convert to JSON
print(name_response.to_json())
```

### Working with dictionaries

```python
from catapa import NameResponse

# Convert to/from dictionary
data_dict = name_response.to_dict()
name_response = NameResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(name_response.name)
# Update properties
name_response.name = "new_value"
```
