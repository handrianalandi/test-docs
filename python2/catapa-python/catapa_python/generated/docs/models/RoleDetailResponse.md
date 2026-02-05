# RoleDetailResponse

## Properties

| Name                              | Type                                                          | Description                                                     |
| :-------------------------------- | :------------------------------------------------------------ | :-------------------------------------------------------------- |
| `id`                              | `str`                                                         | Role identifier                                                 |
| `name`                            | `str`                                                         | Role name                                                       |
| `description`                     | `str`                                                         | Role description                                                |
| `role_type`                       | `str`                                                         | Type of role                                                    |
| `cascade_organization_permission` | `bool`                                                        | Whether organization permissions cascade to child organizations |
| `authorities`                     | [`List[AuthorityDetailResponse]`](AuthorityDetailResponse.md) | List of authorities assigned to this role                       |

## Usage Examples

### Creating an instance

```python
from catapa import RoleDetailResponse

role_detail_response = RoleDetailResponse(
    id="''",
    name="''",
    description="''",
    role_type="'ADMIN'",
    cascade_organization_permission=True,
    authorities=[],  # List[[AuthorityDetailResponse](AuthorityDetailResponse.md)]
)
```

### Working with JSON

```python
from catapa import RoleDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
role_detail_response = RoleDetailResponse.from_json(json_str)

# Convert to JSON
print(role_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import RoleDetailResponse

# Convert to/from dictionary
data_dict = role_detail_response.to_dict()
role_detail_response = RoleDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(role_detail_response.id)
# Update properties
role_detail_response.id = "new_value"
```
