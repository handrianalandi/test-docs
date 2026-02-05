# TransitionCalculationResponse

## Properties

| Name                               | Type                                                                                                              | Description |
| :--------------------------------- | :---------------------------------------------------------------------------------------------------------------- | :---------- |
| `cost_center`                      | [`NameResponse`](NameResponse.md)                                                                                 |             |
| `employee`                         | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)                                                             |             |
| `employee_salary_template_history` | [`TransitionCalculationEmployeeSalaryTemplateResponse`](TransitionCalculationEmployeeSalaryTemplateResponse.md)   |             |
| `employee_workday`                 | `float`                                                                                                           |             |
| `employment_type`                  | [`NameResponse`](NameResponse.md)                                                                                 |             |
| `end_date`                         | `str`                                                                                                             |             |
| `id`                               | `str`                                                                                                             |             |
| `job_title`                        | [`NameResponse`](NameResponse.md)                                                                                 |             |
| `location`                         | [`NameResponse`](NameResponse.md)                                                                                 |             |
| `normal_workday`                   | `float`                                                                                                           |             |
| `organization`                     | [`NameResponse`](NameResponse.md)                                                                                 |             |
| `payment_process`                  | `bool`                                                                                                            |             |
| `start_date`                       | `str`                                                                                                             |             |
| `total_thp`                        | `float`                                                                                                           |             |
| `transition_calculation_details`   | [`List[TransitionCalculationSalaryTemplateDetailResponse]`](TransitionCalculationSalaryTemplateDetailResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import TransitionCalculationResponse

transition_calculation_response = TransitionCalculationResponse(
    cost_center=None,  # [NameResponse](NameResponse.md)
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    employee_salary_template_history=None,  # [TransitionCalculationEmployeeSalaryTemplateResponse](TransitionCalculationEmployeeSalaryTemplateResponse.md)
    employee_workday=1.337,
    employment_type=None,  # [NameResponse](NameResponse.md)
    end_date="''",
    id="''",
    job_title=None,  # [NameResponse](NameResponse.md)
    location=None,  # [NameResponse](NameResponse.md)
    normal_workday=1.337,
    organization=None,  # [NameResponse](NameResponse.md)
    payment_process=True,
    start_date="''",
    total_thp=1.337,
    transition_calculation_details=[],  # List[[TransitionCalculationSalaryTemplateDetailResponse](TransitionCalculationSalaryTemplateDetailResponse.md)]
)
```

### Working with JSON

```python
from catapa import TransitionCalculationResponse

# Parse from JSON
json_str = '{"cost_center": "example"}'
transition_calculation_response = TransitionCalculationResponse.from_json(json_str)

# Convert to JSON
print(transition_calculation_response.to_json())
```

### Working with dictionaries

```python
from catapa import TransitionCalculationResponse

# Convert to/from dictionary
data_dict = transition_calculation_response.to_dict()
transition_calculation_response = TransitionCalculationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(transition_calculation_response.cost_center)
# Update properties
transition_calculation_response.cost_center = new_value
```
