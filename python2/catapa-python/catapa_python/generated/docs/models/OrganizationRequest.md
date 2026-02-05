# OrganizationRequest

## Properties

| Name                        | Type  | Required | Description                                                                                 |
| :-------------------------- | :---- | :------: | :------------------------------------------------------------------------------------------ |
| `code`                      | `str` |    ✅    |                                                                                             |
| `organization_hierarchy_id` | `str` |    ✅    |                                                                                             |
| `organization_parent_id`    | `str` |    ❌    |                                                                                             |
| `name`                      | `str` |    ✅    |                                                                                             |
| `type`                      | `str` |    ✅    |                                                                                             |
| `organization_group_id`     | `str` |    ❌    |                                                                                             |
| `company_id`                | `str` |    ❌    | If the request is null, then it will default to the earliest company created in the system. |

## Usage Examples

### Creating an instance

```python
from catapa import OrganizationRequest

organization_request = OrganizationRequest(
    code="'0'",
    organization_hierarchy_id="''",
    organization_parent_id="''",
    name="'012'",
    type="'STRUCTURAL'",
    organization_group_id="''",
    company_id="''",
)
```

### Working with JSON

```python
from catapa import OrganizationRequest

# Parse from JSON
json_str = '{"code": "example"}'
organization_request = OrganizationRequest.from_json(json_str)

# Convert to JSON
print(organization_request.to_json())
```

### Working with dictionaries

```python
from catapa import OrganizationRequest

# Convert to/from dictionary
data_dict = organization_request.to_dict()
organization_request = OrganizationRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(organization_request.code)
# Update properties
organization_request.code = "new_value"
```
