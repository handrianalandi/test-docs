# MonthlyRecapitulationItemResponse

## Properties

| Name        | Type                                                                                          | Description |
| :---------- | :-------------------------------------------------------------------------------------------- | :---------- |
| `code`      | `str`                                                                                         |             |
| `id`        | `str`                                                                                         |             |
| `month`     | `float`                                                                                       |             |
| `name`      | `str`                                                                                         |             |
| `total_thp` | `float`                                                                                       |             |
| `year`      | `float`                                                                                       |             |
| `details`   | [`List[MonthlyRecapitulationItemDetailResponse]`](MonthlyRecapitulationItemDetailResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import MonthlyRecapitulationItemResponse

monthly_recapitulation_item_response = MonthlyRecapitulationItemResponse(
    code="''",
    id="''",
    month=1.337,
    name="''",
    total_thp=1.337,
    year=1.337,
    details=[],  # List[[MonthlyRecapitulationItemDetailResponse](MonthlyRecapitulationItemDetailResponse.md)]
)
```

### Working with JSON

```python
from catapa import MonthlyRecapitulationItemResponse

# Parse from JSON
json_str = '{"code": "example"}'
monthly_recapitulation_item_response = MonthlyRecapitulationItemResponse.from_json(
    json_str
)

# Convert to JSON
print(monthly_recapitulation_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import MonthlyRecapitulationItemResponse

# Convert to/from dictionary
data_dict = monthly_recapitulation_item_response.to_dict()
monthly_recapitulation_item_response = MonthlyRecapitulationItemResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(monthly_recapitulation_item_response.code)
# Update properties
monthly_recapitulation_item_response.code = "new_value"
```
