# SalaryCalculationResponse

## Properties

| Name                               | Type    | Description |
| :--------------------------------- | :------ | :---------- |
| `cost_center_code`                 | `str`   |             |
| `daily_workday_end_date`           | `str`   |             |
| `daily_workday_start_date`         | `str`   |             |
| `employee_id`                      | `str`   |             |
| `employee_identification_number`   | `str`   |             |
| `employee_name`                    | `str`   |             |
| `employee_workday`                 | `float` |             |
| `id`                               | `str`   |             |
| `location_group_code`              | `str`   |             |
| `normal_workday`                   | `float` |             |
| `previous_period_employee_workday` | `float` |             |
| `previous_period_normal_workday`   | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import SalaryCalculationResponse

salary_calculation_response = SalaryCalculationResponse(
    cost_center_code="''",
    daily_workday_end_date="''",
    daily_workday_start_date="''",
    employee_id="''",
    employee_identification_number="''",
    employee_name="''",
    employee_workday=1.337,
    id="''",
    location_group_code="''",
    normal_workday=1.337,
    previous_period_employee_workday=1.337,
    previous_period_normal_workday=1.337,
)
```

### Working with JSON

```python
from catapa import SalaryCalculationResponse

# Parse from JSON
json_str = '{"cost_center_code": "example"}'
salary_calculation_response = SalaryCalculationResponse.from_json(json_str)

# Convert to JSON
print(salary_calculation_response.to_json())
```

### Working with dictionaries

```python
from catapa import SalaryCalculationResponse

# Convert to/from dictionary
data_dict = salary_calculation_response.to_dict()
salary_calculation_response = SalaryCalculationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(salary_calculation_response.cost_center_code)
# Update properties
salary_calculation_response.cost_center_code = "new_value"
```
