# OrganizationSuperiorResponse

## Properties

| Name             | Type                                          | Description |
| :--------------- | :-------------------------------------------- | :---------- |
| `id`             | `str`                                         |             |
| `organization`   | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |
| `superior`       | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |
| `effective_date` | `date`                                        |             |

## Usage Examples

### Creating an instance

```python
from catapa import OrganizationSuperiorResponse

organization_superior_response = OrganizationSuperiorResponse(
    id="''",
    organization=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    superior=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
)
```

### Working with JSON

```python
from catapa import OrganizationSuperiorResponse

# Parse from JSON
json_str = '{"id": "example"}'
organization_superior_response = OrganizationSuperiorResponse.from_json(json_str)

# Convert to JSON
print(organization_superior_response.to_json())
```

### Working with dictionaries

```python
from catapa import OrganizationSuperiorResponse

# Convert to/from dictionary
data_dict = organization_superior_response.to_dict()
organization_superior_response = OrganizationSuperiorResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(organization_superior_response.id)
# Update properties
organization_superior_response.id = "new_value"
```
