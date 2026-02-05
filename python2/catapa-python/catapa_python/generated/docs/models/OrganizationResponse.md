# OrganizationResponse

## Properties

| Name                     | Type                                                                | Description |
| :----------------------- | :------------------------------------------------------------------ | :---------- |
| `id`                     | `str`                                                               |             |
| `code`                   | `str`                                                               |             |
| `name`                   | `str`                                                               |             |
| `type`                   | `str`                                                               |             |
| `effective_date`         | `date`                                                              | YYYY-MM-DD  |
| `end_date`               | `date`                                                              | YYYY-MM-DD  |
| `created_by`             | `str`                                                               |             |
| `created_date`           | `float`                                                             |             |
| `updated_by`             | `str`                                                               |             |
| `updated_date`           | `float`                                                             |             |
| `organization_hierarchy` | [`OrganizationHierarchyResponse`](OrganizationHierarchyResponse.md) |             |
| `organization_group`     | [`IdCodeNameResponse`](IdCodeNameResponse.md)                       |             |
| `organization_parent`    | [`OrganizationParentResponse`](OrganizationParentResponse.md)       |             |
| `company`                | [`IdCodeNameResponse`](IdCodeNameResponse.md)                       |             |

## Usage Examples

### Creating an instance

```python
from catapa import OrganizationResponse

organization_response = OrganizationResponse(
    id="''",
    code="''",
    name="''",
    type="'STRUCTURAL'",
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    end_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
    organization_hierarchy=None,  # [OrganizationHierarchyResponse](OrganizationHierarchyResponse.md)
    organization_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    organization_parent=None,  # [OrganizationParentResponse](OrganizationParentResponse.md)
    company=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import OrganizationResponse

# Parse from JSON
json_str = '{"id": "example"}'
organization_response = OrganizationResponse.from_json(json_str)

# Convert to JSON
print(organization_response.to_json())
```

### Working with dictionaries

```python
from catapa import OrganizationResponse

# Convert to/from dictionary
data_dict = organization_response.to_dict()
organization_response = OrganizationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(organization_response.id)
# Update properties
organization_response.id = "new_value"
```
