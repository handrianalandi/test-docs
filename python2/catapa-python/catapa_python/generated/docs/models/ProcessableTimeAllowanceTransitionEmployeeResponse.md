# ProcessableTimeAllowanceTransitionEmployeeResponse

## Properties

| Name                    | Type                                                                                                                          | Description |
| :---------------------- | :---------------------------------------------------------------------------------------------------------------------------- | :---------- |
| `id`                    | `str`                                                                                                                         |             |
| `identification_number` | `str`                                                                                                                         |             |
| `name`                  | `str`                                                                                                                         |             |
| `employment_status`     | [`ProcessableTimeAllowanceTransitionEmploymentStatusResponse`](ProcessableTimeAllowanceTransitionEmploymentStatusResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import ProcessableTimeAllowanceTransitionEmployeeResponse

processable_time_allowance_transition_employee_response = ProcessableTimeAllowanceTransitionEmployeeResponse(
    id="''",
    identification_number="''",
    name="''",
    employment_status=None,  # [ProcessableTimeAllowanceTransitionEmploymentStatusResponse](ProcessableTimeAllowanceTransitionEmploymentStatusResponse.md)
)
```

### Working with JSON

```python
from catapa import ProcessableTimeAllowanceTransitionEmployeeResponse

# Parse from JSON
json_str = '{"id": "example"}'
processable_time_allowance_transition_employee_response = (
    ProcessableTimeAllowanceTransitionEmployeeResponse.from_json(json_str)
)

# Convert to JSON
print(processable_time_allowance_transition_employee_response.to_json())
```

### Working with dictionaries

```python
from catapa import ProcessableTimeAllowanceTransitionEmployeeResponse

# Convert to/from dictionary
data_dict = processable_time_allowance_transition_employee_response.to_dict()
processable_time_allowance_transition_employee_response = (
    ProcessableTimeAllowanceTransitionEmployeeResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(processable_time_allowance_transition_employee_response.id)
# Update properties
processable_time_allowance_transition_employee_response.id = "new_value"
```
