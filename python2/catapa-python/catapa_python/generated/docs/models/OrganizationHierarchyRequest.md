# OrganizationHierarchyRequest

## Properties

| Name    | Type    | Required | Description                              |
| :------ | :------ | :------: | :--------------------------------------- |
| `code`  | `str`   |    ✅    |                                          |
| `name`  | `str`   |    ✅    |                                          |
| `color` | `str`   |    ❌    | Hexadecimal color code, e.g. \`#62A4D5\` |
| `level` | `float` |    ✅    |                                          |

## Usage Examples

### Creating an instance

```python
from catapa import OrganizationHierarchyRequest

organization_hierarchy_request = OrganizationHierarchyRequest(
    code="'0'", name="'0'", color="'0123456'", level=1
)
```

### Working with JSON

```python
from catapa import OrganizationHierarchyRequest

# Parse from JSON
json_str = '{"code": "example"}'
organization_hierarchy_request = OrganizationHierarchyRequest.from_json(json_str)

# Convert to JSON
print(organization_hierarchy_request.to_json())
```

### Working with dictionaries

```python
from catapa import OrganizationHierarchyRequest

# Convert to/from dictionary
data_dict = organization_hierarchy_request.to_dict()
organization_hierarchy_request = OrganizationHierarchyRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(organization_hierarchy_request.code)
# Update properties
organization_hierarchy_request.code = "new_value"
```
