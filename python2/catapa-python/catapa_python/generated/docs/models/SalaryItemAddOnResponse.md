# SalaryItemAddOnResponse

## Properties

| Name                           | Type                                                                    | Description |
| :----------------------------- | :---------------------------------------------------------------------- | :---------- |
| `amount`                       | `float`                                                                 |             |
| `var_date`                     | `str`                                                                   |             |
| `employee`                     | [`SalaryItemAddOnEmployeeResponse`](SalaryItemAddOnEmployeeResponse.md) |             |
| `salary_calculation_processed` | `bool`                                                                  |             |
| `salary_item`                  | [`SalaryItemSimpleResponse`](SalaryItemSimpleResponse.md)               |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryItemAddOnResponse

salary_item_add_on_response = SalaryItemAddOnResponse(
    amount=1.337,
    var_date="''",
    employee=None,  # [SalaryItemAddOnEmployeeResponse](SalaryItemAddOnEmployeeResponse.md)
    salary_calculation_processed=True,
    salary_item=None,  # [SalaryItemSimpleResponse](SalaryItemSimpleResponse.md)
)
```

### Working with JSON

```python
from catapa import SalaryItemAddOnResponse

# Parse from JSON
json_str = '{"amount": "example"}'
salary_item_add_on_response = SalaryItemAddOnResponse.from_json(json_str)

# Convert to JSON
print(salary_item_add_on_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryItemAddOnResponse

# Convert to/from dictionary
data_dict = salary_item_add_on_response.to_dict()
salary_item_add_on_response = SalaryItemAddOnResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_item_add_on_response.amount)
# Update properties
salary_item_add_on_response.amount = new_value
```
