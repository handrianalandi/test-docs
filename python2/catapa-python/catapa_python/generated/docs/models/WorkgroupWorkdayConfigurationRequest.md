# WorkgroupWorkdayConfigurationRequest

## Properties

| Name                     | Type                        | Required | Description |
| :----------------------- | :-------------------------- | :------: | :---------- |
| `shift_pattern_template` | [`IdRequest`](IdRequest.md) |    ✅    |             |
| `start_date`             | `str`                       |    ✅    |             |
| `end_date`               | `str`                       |    ✅    |             |
| `include_holiday`        | `bool`                      |    ✅    |             |
| `start_sequence`         | `float`                     |    ✅    |             |
| `workgroup`              | [`IdRequest`](IdRequest.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import WorkgroupWorkdayConfigurationRequest

workgroup_workday_configuration_request = WorkgroupWorkdayConfigurationRequest(
    shift_pattern_template=None,  # [IdRequest](IdRequest.md)
    start_date="''",
    end_date="''",
    include_holiday=True,
    start_sequence=1.337,
    workgroup=None,  # [IdRequest](IdRequest.md)
)
```

### Working with JSON

```python
from catapa import WorkgroupWorkdayConfigurationRequest

# Parse from JSON
json_str = '{"shift_pattern_template": "example"}'
workgroup_workday_configuration_request = (
    WorkgroupWorkdayConfigurationRequest.from_json(json_str)
)

# Convert to JSON
print(workgroup_workday_configuration_request.to_json())
```

### Working with dictionaries

```python
from catapa import WorkgroupWorkdayConfigurationRequest

# Convert to/from dictionary
data_dict = workgroup_workday_configuration_request.to_dict()
workgroup_workday_configuration_request = (
    WorkgroupWorkdayConfigurationRequest.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(workgroup_workday_configuration_request.shift_pattern_template)
# Update properties
workgroup_workday_configuration_request.shift_pattern_template = new_value
```
