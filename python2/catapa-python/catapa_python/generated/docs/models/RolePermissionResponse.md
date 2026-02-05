# RolePermissionResponse

## Properties

| Name        | Type                                          | Description                                                                |
| :---------- | :-------------------------------------------- | :------------------------------------------------------------------------- |
| `id`        | `str`                                         | Permission identifier                                                      |
| `data_id`   | `str`                                         | Data identifier (e.g., organization ID, location ID, or \&quot;ALL\&quot;) |
| `data_type` | `str`                                         | Type of data this permission applies to                                    |
| `role`      | [`RoleIdNameResponse`](RoleIdNameResponse.md) | Role associated with this permission                                       |

## Usage Examples

### Creating an instance

```python
from catapa import RolePermissionResponse

role_permission_response = RolePermissionResponse(
    id="''",
    data_id="''",
    data_type="'ORGANIZATION'",
    role=None,  # [RoleIdNameResponse](RoleIdNameResponse.md)
)
```

### Working with JSON

```python
from catapa import RolePermissionResponse

# Parse from JSON
json_str = '{"id": "example"}'
role_permission_response = RolePermissionResponse.from_json(json_str)

# Convert to JSON
print(role_permission_response.to_json())
```

### Working with dictionaries

```python
from catapa import RolePermissionResponse

# Convert to/from dictionary
data_dict = role_permission_response.to_dict()
role_permission_response = RolePermissionResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(role_permission_response.id)
# Update properties
role_permission_response.id = "new_value"
```
