# PositionCostCenterResponse

## Properties

| Name             | Type                                          | Description |
| :--------------- | :-------------------------------------------- | :---------- |
| `id`             | `str`                                         |             |
| `effective_date` | `str`                                         |             |
| `cost_center`    | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |
| `position`       | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |
| `created_by`     | `str`                                         |             |
| `created_date`   | `float`                                       |             |
| `updated_by`     | `str`                                         |             |
| `updated_date`   | `float`                                       |             |

## Usage Examples

### Creating an instance

```python
from catapa import PositionCostCenterResponse

position_cost_center_response = PositionCostCenterResponse(
    id="''",
    effective_date="''",
    cost_center=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    position=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
)
```

### Working with JSON

```python
from catapa import PositionCostCenterResponse

# Parse from JSON
json_str = '{"id": "example"}'
position_cost_center_response = PositionCostCenterResponse.from_json(json_str)

# Convert to JSON
print(position_cost_center_response.to_json())
```

### Working with dictionaries

```python
from catapa import PositionCostCenterResponse

# Convert to/from dictionary
data_dict = position_cost_center_response.to_dict()
position_cost_center_response = PositionCostCenterResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(position_cost_center_response.id)
# Update properties
position_cost_center_response.id = "new_value"
```
