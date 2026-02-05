# RoleResponse

## Properties

| Name     | Type   | Description |
| :------- | :----- | :---------- |
| `id`     | `str`  |             |
| `name`   | `str`  |             |
| `active` | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import RoleResponse

role_response = RoleResponse(id="''", name="''", active=True)
```

### Working with JSON

```python
from catapa import RoleResponse

# Parse from JSON
json_str = '{"id": "example"}'
role_response = RoleResponse.from_json(json_str)

# Convert to JSON
print(role_response.to_json())
```

### Working with dictionaries

```python
from catapa import RoleResponse

# Convert to/from dictionary
data_dict = role_response.to_dict()
role_response = RoleResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(role_response.id)
# Update properties
role_response.id = "new_value"
```
