# OrganizationGroupRequest

## Properties

| Name   | Type  | Required | Description |
| :----- | :---- | :------: | :---------- |
| `code` | `str` |    ✅    |             |
| `name` | `str` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import OrganizationGroupRequest

organization_group_request = OrganizationGroupRequest(code="'0'", name="'0'")
```

### Working with JSON

```python
from catapa import OrganizationGroupRequest

# Parse from JSON
json_str = '{"code": "example"}'
organization_group_request = OrganizationGroupRequest.from_json(json_str)

# Convert to JSON
print(organization_group_request.to_json())
```

### Working with dictionaries

```python
from catapa import OrganizationGroupRequest

# Convert to/from dictionary
data_dict = organization_group_request.to_dict()
organization_group_request = OrganizationGroupRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(organization_group_request.code)
# Update properties
organization_group_request.code = "new_value"
```
