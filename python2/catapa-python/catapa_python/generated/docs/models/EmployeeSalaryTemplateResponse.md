# EmployeeSalaryTemplateResponse

## Properties

| Name                   | Type                                                        | Description |
| :--------------------- | :---------------------------------------------------------- | :---------- |
| `id`                   | `str`                                                       |             |
| `effective_date`       | `str`                                                       |             |
| `proportional`         | `bool`                                                      |             |
| `retroactive`          | `bool`                                                      |             |
| `salary_decree_number` | `str`                                                       |             |
| `salary_template_id`   | `str`                                                       |             |
| `employee_salaries`    | [`List[EmployeeSalaryResponse]`](EmployeeSalaryResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeSalaryTemplateResponse

employee_salary_template_response = EmployeeSalaryTemplateResponse(
    id="''",
    effective_date="''",
    proportional=True,
    retroactive=True,
    salary_decree_number="''",
    salary_template_id="''",
    employee_salaries=[],  # List[[EmployeeSalaryResponse](EmployeeSalaryResponse.md)]
)
```

### Working with JSON

```python
from catapa import EmployeeSalaryTemplateResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_salary_template_response = EmployeeSalaryTemplateResponse.from_json(json_str)

# Convert to JSON
print(employee_salary_template_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeSalaryTemplateResponse

# Convert to/from dictionary
data_dict = employee_salary_template_response.to_dict()
employee_salary_template_response = EmployeeSalaryTemplateResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_salary_template_response.id)
# Update properties
employee_salary_template_response.id = "new_value"
```
