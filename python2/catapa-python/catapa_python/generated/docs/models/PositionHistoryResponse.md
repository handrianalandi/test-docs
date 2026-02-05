# PositionHistoryResponse

## Properties

| Name             | Type                                                                            | Description |
| :--------------- | :------------------------------------------------------------------------------ | :---------- |
| `id`             | `str`                                                                           |             |
| `code`           | `str`                                                                           |             |
| `name`           | `str`                                                                           |             |
| `position`       | [`IdCodeNameResponse`](IdCodeNameResponse.md)                                   |             |
| `organization`   | [`PositionHistoryOrganizationResponse`](PositionHistoryOrganizationResponse.md) |             |
| `effective_date` | `str`                                                                           |             |
| `end_date`       | `str`                                                                           |             |

## Usage Examples

### Creating an instance

```python
from catapa import PositionHistoryResponse

position_history_response = PositionHistoryResponse(
    id="''",
    code="''",
    name="''",
    position=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    organization=None,  # [PositionHistoryOrganizationResponse](PositionHistoryOrganizationResponse.md)
    effective_date="''",
    end_date="''",
)
```

### Working with JSON

```python
from catapa import PositionHistoryResponse

# Parse from JSON
json_str = '{"id": "example"}'
position_history_response = PositionHistoryResponse.from_json(json_str)

# Convert to JSON
print(position_history_response.to_json())
```

### Working with dictionaries

```python
from catapa import PositionHistoryResponse

# Convert to/from dictionary
data_dict = position_history_response.to_dict()
position_history_response = PositionHistoryResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(position_history_response.id)
# Update properties
position_history_response.id = "new_value"
```
