# SalaryCalculationDetailResponse

## Properties

| Name                   | Type    | Description |
| :--------------------- | :------ | :---------- |
| `amount`               | `float` |             |
| `id`                   | `str`   |             |
| `salary_item_category` | `str`   |             |
| `salary_item_code`     | `str`   |             |
| `salary_item_name`     | `str`   |             |
| `salary_item_type`     | `str`   |             |
| `thp`                  | `bool`  |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryCalculationDetailResponse

salary_calculation_detail_response = SalaryCalculationDetailResponse(
    amount=1.337,
    id="''",
    salary_item_category="''",
    salary_item_code="''",
    salary_item_name="''",
    salary_item_type="''",
    thp=True,
)
```

### Working with JSON

```python
from catapa import SalaryCalculationDetailResponse

# Parse from JSON
json_str = '{"amount": "example"}'
salary_calculation_detail_response = SalaryCalculationDetailResponse.from_json(json_str)

# Convert to JSON
print(salary_calculation_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryCalculationDetailResponse

# Convert to/from dictionary
data_dict = salary_calculation_detail_response.to_dict()
salary_calculation_detail_response = SalaryCalculationDetailResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(salary_calculation_detail_response.amount)
# Update properties
salary_calculation_detail_response.amount = new_value
```
