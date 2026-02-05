# EmployeeSalaryTemplateUpdateResponse

## Properties

| Name          | Type  | Description |
| :------------ | :---- | :---------- |
| `employee_id` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeSalaryTemplateUpdateResponse

employee_salary_template_update_response = EmployeeSalaryTemplateUpdateResponse(
    employee_id="''"
)
```

### Working with JSON

```python
from catapa import EmployeeSalaryTemplateUpdateResponse

# Parse from JSON
json_str = '{"employee_id": "example"}'
employee_salary_template_update_response = (
    EmployeeSalaryTemplateUpdateResponse.from_json(json_str)
)

# Convert to JSON
print(employee_salary_template_update_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeSalaryTemplateUpdateResponse

# Convert to/from dictionary
data_dict = employee_salary_template_update_response.to_dict()
employee_salary_template_update_response = (
    EmployeeSalaryTemplateUpdateResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(employee_salary_template_update_response.employee_id)
# Update properties
employee_salary_template_update_response.employee_id = "new_value"
```
