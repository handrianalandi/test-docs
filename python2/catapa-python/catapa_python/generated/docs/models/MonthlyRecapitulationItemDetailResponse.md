# MonthlyRecapitulationItemDetailResponse

## Properties

| Name          | Type                                                                              | Description |
| :------------ | :-------------------------------------------------------------------------------- | :---------- |
| `amount`      | `float`                                                                           |             |
| `salary_item` | [`SalaryItemWithSalaryItemTypeResponse`](SalaryItemWithSalaryItemTypeResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import MonthlyRecapitulationItemDetailResponse

monthly_recapitulation_item_detail_response = MonthlyRecapitulationItemDetailResponse(
    amount=1.337,
    salary_item=None,  # [SalaryItemWithSalaryItemTypeResponse](SalaryItemWithSalaryItemTypeResponse.md)
)
```

### Working with JSON

```python
from catapa import MonthlyRecapitulationItemDetailResponse

# Parse from JSON
json_str = '{"amount": "example"}'
monthly_recapitulation_item_detail_response = (
    MonthlyRecapitulationItemDetailResponse.from_json(json_str)
)

# Convert to JSON
print(monthly_recapitulation_item_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import MonthlyRecapitulationItemDetailResponse

# Convert to/from dictionary
data_dict = monthly_recapitulation_item_detail_response.to_dict()
monthly_recapitulation_item_detail_response = (
    MonthlyRecapitulationItemDetailResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(monthly_recapitulation_item_detail_response.amount)
# Update properties
monthly_recapitulation_item_detail_response.amount = new_value
```
