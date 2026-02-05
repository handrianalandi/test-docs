# ProcessableTimeAllowanceTransitionEmploymentStatusResponse

## Properties

| Name           | Type                              | Description |
| :------------- | :-------------------------------- | :---------- |
| `organization` | [`NameResponse`](NameResponse.md) |             |
| `job_title`    | [`NameResponse`](NameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import ProcessableTimeAllowanceTransitionEmploymentStatusResponse

processable_time_allowance_transition_employment_status_response = (
    ProcessableTimeAllowanceTransitionEmploymentStatusResponse(
        organization=None,  # [NameResponse](NameResponse.md)
        job_title=None,  # [NameResponse](NameResponse.md)
    )
)
```

### Working with JSON

```python
from catapa import ProcessableTimeAllowanceTransitionEmploymentStatusResponse

# Parse from JSON
json_str = '{"organization": "example"}'
processable_time_allowance_transition_employment_status_response = (
    ProcessableTimeAllowanceTransitionEmploymentStatusResponse.from_json(json_str)
)

# Convert to JSON
print(processable_time_allowance_transition_employment_status_response.to_json())
```

### Working with dictionaries

```python
from catapa import ProcessableTimeAllowanceTransitionEmploymentStatusResponse

# Convert to/from dictionary
data_dict = processable_time_allowance_transition_employment_status_response.to_dict()
processable_time_allowance_transition_employment_status_response = (
    ProcessableTimeAllowanceTransitionEmploymentStatusResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(processable_time_allowance_transition_employment_status_response.organization)
# Update properties
processable_time_allowance_transition_employment_status_response.organization = (
    new_value
)
```
