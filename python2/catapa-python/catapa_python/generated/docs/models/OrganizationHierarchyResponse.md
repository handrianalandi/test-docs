# OrganizationHierarchyResponse

## Properties

| Name    | Type  | Description |
| :------ | :---- | :---------- |
| `id`    | `str` |             |
| `code`  | `str` |             |
| `name`  | `str` |             |
| `color` | `str` |             |
| `level` | `int` |             |

## Usage Examples

### Creating an instance

```python
from catapa import OrganizationHierarchyResponse

organization_hierarchy_response = OrganizationHierarchyResponse(
    id="''", code="''", name="''", color="''", level=56
)
```

### Working with JSON

```python
from catapa import OrganizationHierarchyResponse

# Parse from JSON
json_str = '{"id": "example"}'
organization_hierarchy_response = OrganizationHierarchyResponse.from_json(json_str)

# Convert to JSON
print(organization_hierarchy_response.to_json())
```

### Working with dictionaries

```python
from catapa import OrganizationHierarchyResponse

# Convert to/from dictionary
data_dict = organization_hierarchy_response.to_dict()
organization_hierarchy_response = OrganizationHierarchyResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(organization_hierarchy_response.id)
# Update properties
organization_hierarchy_response.id = "new_value"
```
