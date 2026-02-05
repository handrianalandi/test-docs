# ProcessableTimeAllowanceTransitionResponse

## Properties

| Name               | Type                                                                                                          | Description |
| :----------------- | :------------------------------------------------------------------------------------------------------------ | :---------- |
| `daily_end_date`   | `str`                                                                                                         |             |
| `daily_start_date` | `str`                                                                                                         |             |
| `employee`         | [`ProcessableTimeAllowanceTransitionEmployeeResponse`](ProcessableTimeAllowanceTransitionEmployeeResponse.md) |             |
| `id`               | `str`                                                                                                         |             |

## Usage Examples

### Creating an instance

```python
from catapa import ProcessableTimeAllowanceTransitionResponse

processable_time_allowance_transition_response = ProcessableTimeAllowanceTransitionResponse(
    daily_end_date="''",
    daily_start_date="''",
    employee=None,  # [ProcessableTimeAllowanceTransitionEmployeeResponse](ProcessableTimeAllowanceTransitionEmployeeResponse.md)
    id="''",
)
```

### Working with JSON

```python
from catapa import ProcessableTimeAllowanceTransitionResponse

# Parse from JSON
json_str = '{"daily_end_date": "example"}'
processable_time_allowance_transition_response = (
    ProcessableTimeAllowanceTransitionResponse.from_json(json_str)
)

# Convert to JSON
print(processable_time_allowance_transition_response.to_json())
```

### Working with dictionaries

```python
from catapa import ProcessableTimeAllowanceTransitionResponse

# Convert to/from dictionary
data_dict = processable_time_allowance_transition_response.to_dict()
processable_time_allowance_transition_response = (
    ProcessableTimeAllowanceTransitionResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(processable_time_allowance_transition_response.daily_end_date)
# Update properties
processable_time_allowance_transition_response.daily_end_date = "new_value"
```
