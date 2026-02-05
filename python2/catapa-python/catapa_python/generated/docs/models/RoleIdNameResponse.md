# RoleIdNameResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` | Role ID     |
| `name` | `str` | Role Name   |

## Usage Examples

### Creating an instance

```python
from catapa import RoleIdNameResponse

role_id_name_response = RoleIdNameResponse(id="''", name="''")
```

### Working with JSON

```python
from catapa import RoleIdNameResponse

# Parse from JSON
json_str = '{"id": "example"}'
role_id_name_response = RoleIdNameResponse.from_json(json_str)

# Convert to JSON
print(role_id_name_response.to_json())
```

### Working with dictionaries

```python
from catapa import RoleIdNameResponse

# Convert to/from dictionary
data_dict = role_id_name_response.to_dict()
role_id_name_response = RoleIdNameResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(role_id_name_response.id)
# Update properties
role_id_name_response.id = "new_value"
```
