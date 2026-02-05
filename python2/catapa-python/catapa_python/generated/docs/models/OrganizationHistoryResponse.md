# OrganizationHistoryResponse

## Properties

| Name                     | Type                                                                              | Description |
| :----------------------- | :-------------------------------------------------------------------------------- | :---------- |
| `id`                     | `str`                                                                             |             |
| `code`                   | `str`                                                                             |             |
| `name`                   | `str`                                                                             |             |
| `organization`           | [`IdCodeNameResponse`](IdCodeNameResponse.md)                                     |             |
| `company`                | [`IdCodeNameResponse`](IdCodeNameResponse.md)                                     |             |
| `type`                   | `str`                                                                             |             |
| `organization_hierarchy` | [`OrganizationHistoryHierarchyResponse`](OrganizationHistoryHierarchyResponse.md) |             |
| `organization_group`     | [`IdCodeNameResponse`](IdCodeNameResponse.md)                                     |             |
| `effective_date`         | `date`                                                                            |             |
| `end_date`               | `date`                                                                            |             |

## Usage Examples

### Creating an instance

```python
from catapa import OrganizationHistoryResponse

organization_history_response = OrganizationHistoryResponse(
    id="''",
    code="''",
    name="''",
    organization=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    company=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    type="'STRUCTURAL'",
    organization_hierarchy=None,  # [OrganizationHistoryHierarchyResponse](OrganizationHistoryHierarchyResponse.md)
    organization_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    end_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
)
```

### Working with JSON

```python
from catapa import OrganizationHistoryResponse

# Parse from JSON
json_str = '{"id": "example"}'
organization_history_response = OrganizationHistoryResponse.from_json(json_str)

# Convert to JSON
print(organization_history_response.to_json())
```

### Working with dictionaries

```python
from catapa import OrganizationHistoryResponse

# Convert to/from dictionary
data_dict = organization_history_response.to_dict()
organization_history_response = OrganizationHistoryResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(organization_history_response.id)
# Update properties
organization_history_response.id = "new_value"
```
