# PositionHistoryOrganizationResponse

## Properties

| Name      | Type                                          | Description |
| :-------- | :-------------------------------------------- | :---------- |
| `id`      | `str`                                         |             |
| `code`    | `str`                                         |             |
| `name`    | `str`                                         |             |
| `company` | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import PositionHistoryOrganizationResponse

position_history_organization_response = PositionHistoryOrganizationResponse(
    id="''",
    code="''",
    name="''",
    company=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import PositionHistoryOrganizationResponse

# Parse from JSON
json_str = '{"id": "example"}'
position_history_organization_response = PositionHistoryOrganizationResponse.from_json(
    json_str
)

# Convert to JSON
print(position_history_organization_response.to_json())
```

### Working with dictionaries

```python
from catapa import PositionHistoryOrganizationResponse

# Convert to/from dictionary
data_dict = position_history_organization_response.to_dict()
position_history_organization_response = PositionHistoryOrganizationResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(position_history_organization_response.id)
# Update properties
position_history_organization_response.id = "new_value"
```
