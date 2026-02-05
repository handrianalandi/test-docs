# EmployeeSalaryResponse

## Properties

| Name                      | Type                                                                  | Description |
| :------------------------ | :-------------------------------------------------------------------- | :---------- |
| `salary_item_id`          | `str`                                                                 |             |
| `salary_item_code`        | `str`                                                                 |             |
| `amount`                  | `float`                                                               |             |
| `recurring_configuration` | [`RecurringConfigurationResponse`](RecurringConfigurationResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeSalaryResponse

employee_salary_response = EmployeeSalaryResponse(
    salary_item_id="''",
    salary_item_code="''",
    amount=1.337,
    recurring_configuration=None,  # [RecurringConfigurationResponse](RecurringConfigurationResponse.md)
)
```

### Working with JSON

```python
from catapa import EmployeeSalaryResponse

# Parse from JSON
json_str = '{"salary_item_id": "example"}'
employee_salary_response = EmployeeSalaryResponse.from_json(json_str)

# Convert to JSON
print(employee_salary_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeSalaryResponse

# Convert to/from dictionary
data_dict = employee_salary_response.to_dict()
employee_salary_response = EmployeeSalaryResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_salary_response.salary_item_id)
# Update properties
employee_salary_response.salary_item_id = "new_value"
```
