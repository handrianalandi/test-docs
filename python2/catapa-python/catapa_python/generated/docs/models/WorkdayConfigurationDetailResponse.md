# WorkdayConfigurationDetailResponse

## Properties

| Name       | Type                                | Description |
| :--------- | :---------------------------------- | :---------- |
| `shift`    | [`ShiftResponse`](ShiftResponse.md) |             |
| `sequence` | `float`                             |             |

## Usage Examples

### Creating an instance

```python
from catapa import WorkdayConfigurationDetailResponse

workday_configuration_detail_response = WorkdayConfigurationDetailResponse(
    shift=None, sequence=1.337  # [ShiftResponse](ShiftResponse.md)
)
```

### Working with JSON

```python
from catapa import WorkdayConfigurationDetailResponse

# Parse from JSON
json_str = '{"shift": "example"}'
workday_configuration_detail_response = WorkdayConfigurationDetailResponse.from_json(
    json_str
)

# Convert to JSON
print(workday_configuration_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import WorkdayConfigurationDetailResponse

# Convert to/from dictionary
data_dict = workday_configuration_detail_response.to_dict()
workday_configuration_detail_response = WorkdayConfigurationDetailResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(workday_configuration_detail_response.shift)
# Update properties
workday_configuration_detail_response.shift = new_value
```
