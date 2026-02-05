# SalaryItemAddOnEmployeeRequest

## Properties

| Name                    | Type  | Required | Description |
| :---------------------- | :---- | :------: | :---------- |
| `identification_number` | `str` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryItemAddOnEmployeeRequest

salary_item_add_on_employee_request = SalaryItemAddOnEmployeeRequest(
    identification_number="''"
)
```

### Working with JSON

```python
from catapa import SalaryItemAddOnEmployeeRequest

# Parse from JSON
json_str = '{"identification_number": "example"}'
salary_item_add_on_employee_request = SalaryItemAddOnEmployeeRequest.from_json(json_str)

# Convert to JSON
print(salary_item_add_on_employee_request.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryItemAddOnEmployeeRequest

# Convert to/from dictionary
data_dict = salary_item_add_on_employee_request.to_dict()
salary_item_add_on_employee_request = SalaryItemAddOnEmployeeRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(salary_item_add_on_employee_request.identification_number)
# Update properties
salary_item_add_on_employee_request.identification_number = "new_value"
```
