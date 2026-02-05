# EmployeeSalaryRequest

## Properties

| Name                      | Type                                                                | Required | Description |
| :------------------------ | :------------------------------------------------------------------ | :------: | :---------- |
| `salary_item_id`          | `str`                                                               |    ✅    |             |
| `amount`                  | `float`                                                             |    ✅    |             |
| `formula`                 | `str`                                                               |    ✅    |             |
| `recurring_configuration` | [`RecurringConfigurationRequest`](RecurringConfigurationRequest.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeSalaryRequest

employee_salary_request = EmployeeSalaryRequest(
    salary_item_id="''",
    amount=1.337,
    formula="''",
    recurring_configuration=None,  # [RecurringConfigurationRequest](RecurringConfigurationRequest.md)
)
```

### Working with JSON

```python
from catapa import EmployeeSalaryRequest

# Parse from JSON
json_str = '{"salary_item_id": "example"}'
employee_salary_request = EmployeeSalaryRequest.from_json(json_str)

# Convert to JSON
print(employee_salary_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeSalaryRequest

# Convert to/from dictionary
data_dict = employee_salary_request.to_dict()
employee_salary_request = EmployeeSalaryRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_salary_request.salary_item_id)
# Update properties
employee_salary_request.salary_item_id = "new_value"
```
