# OrganizationHistoryHierarchyResponse

## Properties

| Name    | Type  | Description |
| :------ | :---- | :---------- |
| `id`    | `str` |             |
| `code`  | `str` |             |
| `name`  | `str` |             |
| `level` | `int` |             |

## Usage Examples

### Creating an instance

```python
from catapa import OrganizationHistoryHierarchyResponse

organization_history_hierarchy_response = OrganizationHistoryHierarchyResponse(
    id="''", code="''", name="''", level=56
)
```

### Working with JSON

```python
from catapa import OrganizationHistoryHierarchyResponse

# Parse from JSON
json_str = '{"id": "example"}'
organization_history_hierarchy_response = (
    OrganizationHistoryHierarchyResponse.from_json(json_str)
)

# Convert to JSON
print(organization_history_hierarchy_response.to_json())
```

### Working with dictionaries

```python
from catapa import OrganizationHistoryHierarchyResponse

# Convert to/from dictionary
data_dict = organization_history_hierarchy_response.to_dict()
organization_history_hierarchy_response = (
    OrganizationHistoryHierarchyResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(organization_history_hierarchy_response.id)
# Update properties
organization_history_hierarchy_response.id = "new_value"
```
