# OtherLeaveStatusResponse

## Properties

| Name          | Type  | Description |
| :------------ | :---- | :---------- |
| `code`        | `str` |             |
| `name`        | `str` |             |
| `description` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import OtherLeaveStatusResponse

other_leave_status_response = OtherLeaveStatusResponse(
    code="''", name="''", description="''"
)
```

### Working with JSON

```python
from catapa import OtherLeaveStatusResponse

# Parse from JSON
json_str = '{"code": "example"}'
other_leave_status_response = OtherLeaveStatusResponse.from_json(json_str)

# Convert to JSON
print(other_leave_status_response.to_json())
```

### Working with dictionaries

```python
from catapa import OtherLeaveStatusResponse

# Convert to/from dictionary
data_dict = other_leave_status_response.to_dict()
other_leave_status_response = OtherLeaveStatusResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(other_leave_status_response.code)
# Update properties
other_leave_status_response.code = "new_value"
```
