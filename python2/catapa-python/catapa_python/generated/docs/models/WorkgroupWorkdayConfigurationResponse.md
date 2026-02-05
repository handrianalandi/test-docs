# WorkgroupWorkdayConfigurationResponse

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
| `workgroup`                     | [`IdCodeNameResponse`](IdCodeNameResponse.md)                                       |             |

## Usage Examples

### Creating an instance

```python
from catapa import WorkgroupWorkdayConfigurationResponse

workgroup_workday_configuration_response = WorkgroupWorkdayConfigurationResponse(
    id="''",
    start_date="''",
    end_date="''",
    shift_pattern_template=None,  # [ShiftPatternTemplateSimpleResponse](ShiftPatternTemplateSimpleResponse.md)
    workday_configuration_details=[],  # List[[WorkdayConfigurationDetailResponse](WorkdayConfigurationDetailResponse.md)]
    start_sequence=1.337,
    start_shift=None,  # [ShiftResponse](ShiftResponse.md)
    include_holiday=True,
    workgroup=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import WorkgroupWorkdayConfigurationResponse

# Parse from JSON
json_str = '{"id": "example"}'
workgroup_workday_configuration_response = (
    WorkgroupWorkdayConfigurationResponse.from_json(json_str)
)

# Convert to JSON
print(workgroup_workday_configuration_response.to_json())
```

### Working with dictionaries

```python
from catapa import WorkgroupWorkdayConfigurationResponse

# Convert to/from dictionary
data_dict = workgroup_workday_configuration_response.to_dict()
workgroup_workday_configuration_response = (
    WorkgroupWorkdayConfigurationResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(workgroup_workday_configuration_response.id)
# Update properties
workgroup_workday_configuration_response.id = "new_value"
```
