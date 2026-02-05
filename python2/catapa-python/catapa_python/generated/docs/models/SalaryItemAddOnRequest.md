# SalaryItemAddOnRequest

## Properties

| Name          | Type                                                                      | Required | Description |
| :------------ | :------------------------------------------------------------------------ | :------: | :---------- |
| `amount`      | `float`                                                                   |    ✅    |             |
| `var_date`    | `str`                                                                     |    ✅    |             |
| `employee`    | [`SalaryItemAddOnEmployeeRequest`](SalaryItemAddOnEmployeeRequest.md)     |    ✅    |             |
| `salary_item` | [`SalaryItemAddOnSalaryItemRequest`](SalaryItemAddOnSalaryItemRequest.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryItemAddOnRequest

salary_item_add_on_request = SalaryItemAddOnRequest(
    amount=1.337,
    var_date="''",
    employee=None,  # [SalaryItemAddOnEmployeeRequest](SalaryItemAddOnEmployeeRequest.md)
    salary_item=None,  # [SalaryItemAddOnSalaryItemRequest](SalaryItemAddOnSalaryItemRequest.md)
)
```

### Working with JSON

```python
from catapa import SalaryItemAddOnRequest

# Parse from JSON
json_str = '{"amount": "example"}'
salary_item_add_on_request = SalaryItemAddOnRequest.from_json(json_str)

# Convert to JSON
print(salary_item_add_on_request.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryItemAddOnRequest

# Convert to/from dictionary
data_dict = salary_item_add_on_request.to_dict()
salary_item_add_on_request = SalaryItemAddOnRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_item_add_on_request.amount)
# Update properties
salary_item_add_on_request.amount = new_value
```
