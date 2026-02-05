# OrganizationHeadResponse

## Properties

| Name             | Type                                          | Description |
| :--------------- | :-------------------------------------------- | :---------- |
| `id`             | `str`                                         |             |
| `effective_date` | `str`                                         |             |
| `organization`   | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |
| `position`       | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import OrganizationHeadResponse

organization_head_response = OrganizationHeadResponse(
    id="''",
    effective_date="''",
    organization=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    position=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import OrganizationHeadResponse

# Parse from JSON
json_str = '{"id": "example"}'
organization_head_response = OrganizationHeadResponse.from_json(json_str)

# Convert to JSON
print(organization_head_response.to_json())
```

### Working with dictionaries

```python
from catapa import OrganizationHeadResponse

# Convert to/from dictionary
data_dict = organization_head_response.to_dict()
organization_head_response = OrganizationHeadResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(organization_head_response.id)
# Update properties
organization_head_response.id = "new_value"
```
