# EmployeeWorkdayConfigurationRequest

## Properties

| Name                     | Type                        | Required | Description |
| :----------------------- | :-------------------------- | :------: | :---------- |
| `start_date`             | `str`                       |    ✅    |             |
| `end_date`               | `str`                       |    ✅    |             |
| `shift_pattern_template` | [`IdRequest`](IdRequest.md) |    ✅    |             |
| `start_sequence`         | `float`                     |    ✅    |             |
| `include_holiday`        | `bool`                      |    ✅    |             |
| `include_missing_shift`  | `bool`                      |    ✅    |             |
| `employee`               | [`IdRequest`](IdRequest.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeWorkdayConfigurationRequest

employee_workday_configuration_request = EmployeeWorkdayConfigurationRequest(
    start_date="''",
    end_date="''",
    shift_pattern_template=None,  # [IdRequest](IdRequest.md)
    start_sequence=1.337,
    include_holiday=True,
    include_missing_shift=True,
    employee=None,  # [IdRequest](IdRequest.md)
)
```

### Working with JSON

```python
from catapa import EmployeeWorkdayConfigurationRequest

# Parse from JSON
json_str = '{"start_date": "example"}'
employee_workday_configuration_request = EmployeeWorkdayConfigurationRequest.from_json(
    json_str
)

# Convert to JSON
print(employee_workday_configuration_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeWorkdayConfigurationRequest

# Convert to/from dictionary
data_dict = employee_workday_configuration_request.to_dict()
employee_workday_configuration_request = EmployeeWorkdayConfigurationRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(employee_workday_configuration_request.start_date)
# Update properties
employee_workday_configuration_request.start_date = "new_value"
```
