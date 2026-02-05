# TransitionCalculationEmployeeSalaryTemplateResponse

## Properties

| Name                   | Type                              | Description |
| :--------------------- | :-------------------------------- | :---------- |
| `effective_date`       | `str`                             |             |
| `salary_decree_number` | `str`                             |             |
| `salary_template`      | [`NameResponse`](NameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import TransitionCalculationEmployeeSalaryTemplateResponse

transition_calculation_employee_salary_template_response = (
    TransitionCalculationEmployeeSalaryTemplateResponse(
        effective_date="''",
        salary_decree_number="''",
        salary_template=None,  # [NameResponse](NameResponse.md)
    )
)
```

### Working with JSON

```python
from catapa import TransitionCalculationEmployeeSalaryTemplateResponse

# Parse from JSON
json_str = '{"effective_date": "example"}'
transition_calculation_employee_salary_template_response = (
    TransitionCalculationEmployeeSalaryTemplateResponse.from_json(json_str)
)

# Convert to JSON
print(transition_calculation_employee_salary_template_response.to_json())
```

### Working with dictionaries

```python
from catapa import TransitionCalculationEmployeeSalaryTemplateResponse

# Convert to/from dictionary
data_dict = transition_calculation_employee_salary_template_response.to_dict()
transition_calculation_employee_salary_template_response = (
    TransitionCalculationEmployeeSalaryTemplateResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(transition_calculation_employee_salary_template_response.effective_date)
# Update properties
transition_calculation_employee_salary_template_response.effective_date = "new_value"
```
