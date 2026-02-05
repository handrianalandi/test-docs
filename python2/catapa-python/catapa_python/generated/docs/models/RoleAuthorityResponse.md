# RoleAuthorityResponse

## Properties

| Name   | Type  | Description    |
| :----- | :---- | :------------- |
| `code` | `str` | Authority code |

## Usage Examples

### Creating an instance

```python
from catapa import RoleAuthorityResponse

role_authority_response = RoleAuthorityResponse(code="''")
```

### Working with JSON

```python
from catapa import RoleAuthorityResponse

# Parse from JSON
json_str = '{"code": "example"}'
role_authority_response = RoleAuthorityResponse.from_json(json_str)

# Convert to JSON
print(role_authority_response.to_json())
```

### Working with dictionaries

```python
from catapa import RoleAuthorityResponse

# Convert to/from dictionary
data_dict = role_authority_response.to_dict()
role_authority_response = RoleAuthorityResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(role_authority_response.code)
# Update properties
role_authority_response.code = "new_value"
```
