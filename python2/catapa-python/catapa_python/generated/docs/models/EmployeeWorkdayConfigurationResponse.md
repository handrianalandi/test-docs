# EmployeeWorkdayConfigurationResponse

## Properties

| Name                            | Type                                                                                | Description |
| :------------------------------ | :---------------------------------------------------------------------------------- | :---------- |
| `id`                            | `str`                                                                               |             |
| `start_date`                    | `str`                                                                               |             |
| `end_date`                      | `str`                                                                               |             |
| `shift_pattern_template`        | [`ShiftPatternTemplateSimpleResponse`](ShiftPatternTemplateSimpleResponse.md)       |             |
| `workday_configuration_details` | [`List[WorkdayConfigurationDetailResponse]`](WorkdayConfigurationDetailResponse.md) |             |
| `start_sequence`                | `float`                                                                             |             |
| `start_shift`                   | [`ShiftResponse`](ShiftResponse.md)                                                 |             |
| `include_holiday`               | `bool`                                                                              |             |
| `include_missing_shift`         | `bool`                                                                              |             |
| `employee`                      | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)                               |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeWorkdayConfigurationResponse

employee_workday_configuration_response = EmployeeWorkdayConfigurationResponse(
    id="''",
    start_date="''",
    end_date="''",
    shift_pattern_template=None,  # [ShiftPatternTemplateSimpleResponse](ShiftPatternTemplateSimpleResponse.md)
    workday_configuration_details=[],  # List[[WorkdayConfigurationDetailResponse](WorkdayConfigurationDetailResponse.md)]
    start_sequence=1.337,
    start_shift=None,  # [ShiftResponse](ShiftResponse.md)
    include_holiday=True,
    include_missing_shift=True,
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
)
```

### Working with JSON

```python
from catapa import EmployeeWorkdayConfigurationResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_workday_configuration_response = (
    EmployeeWorkdayConfigurationResponse.from_json(json_str)
)

# Convert to JSON
print(employee_workday_configuration_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeWorkdayConfigurationResponse

# Convert to/from dictionary
data_dict = employee_workday_configuration_response.to_dict()
employee_workday_configuration_response = (
    EmployeeWorkdayConfigurationResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(employee_workday_configuration_response.id)
# Update properties
employee_workday_configuration_response.id = "new_value"
```
