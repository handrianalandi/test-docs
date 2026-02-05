# UserAndRoleResponse

## Properties

| Name       | Type                                                  | Description |
| :--------- | :---------------------------------------------------- | :---------- |
| `id`       | `str`                                                 |             |
| `username` | `str`                                                 |             |
| `email`    | `str`                                                 |             |
| `employee` | [`EmployeeIdNameResponse`](EmployeeIdNameResponse.md) |             |
| `roles`    | [`List[RoleResponse]`](RoleResponse.md)               |             |

## Usage Examples

### Creating an instance

```python
from catapa import UserAndRoleResponse

user_and_role_response = UserAndRoleResponse(
    id="''",
    username="''",
    email="''",
    employee=None,  # [EmployeeIdNameResponse](EmployeeIdNameResponse.md)
    roles=[],  # List[[RoleResponse](RoleResponse.md)]
)
```

### Working with JSON

```python
from catapa import UserAndRoleResponse

# Parse from JSON
json_str = '{"id": "example"}'
user_and_role_response = UserAndRoleResponse.from_json(json_str)

# Convert to JSON
print(user_and_role_response.to_json())
```

### Working with dictionaries

```python
from catapa import UserAndRoleResponse

# Convert to/from dictionary
data_dict = user_and_role_response.to_dict()
user_and_role_response = UserAndRoleResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(user_and_role_response.id)
# Update properties
user_and_role_response.id = "new_value"
```
