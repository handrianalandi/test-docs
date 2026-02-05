# EmployeeSalaryTemplateRequest

## Properties

| Name                   | Type                                                      | Required | Description |
| :--------------------- | :-------------------------------------------------------- | :------: | :---------- |
| `effective_date`       | `str`                                                     |    ✅    |             |
| `employee_salaries`    | [`List[EmployeeSalaryRequest]`](EmployeeSalaryRequest.md) |    ✅    |             |
| `proportional`         | `bool`                                                    |    ✅    |             |
| `retroactive`          | `bool`                                                    |    ✅    |             |
| `salary_decree_number` | `str`                                                     |    ✅    |             |
| `salary_template_id`   | `str`                                                     |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeSalaryTemplateRequest

employee_salary_template_request = EmployeeSalaryTemplateRequest(
    effective_date="''",
    employee_salaries=[],  # List[[EmployeeSalaryRequest](EmployeeSalaryRequest.md)]
    proportional=True,
    retroactive=True,
    salary_decree_number="''",
    salary_template_id="''",
)
```

### Working with JSON

```python
from catapa import EmployeeSalaryTemplateRequest

# Parse from JSON
json_str = '{"effective_date": "example"}'
employee_salary_template_request = EmployeeSalaryTemplateRequest.from_json(json_str)

# Convert to JSON
print(employee_salary_template_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeSalaryTemplateRequest

# Convert to/from dictionary
data_dict = employee_salary_template_request.to_dict()
employee_salary_template_request = EmployeeSalaryTemplateRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_salary_template_request.effective_date)
# Update properties
employee_salary_template_request.effective_date = "new_value"
```
