# AttendanceStatusResponse

## Properties

| Name              | Type  | Description |
| :---------------- | :---- | :---------- |
| `id`              | `str` |             |
| `code`            | `str` |             |
| `name`            | `str` |             |
| `attendance_type` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import AttendanceStatusResponse

attendance_status_response = AttendanceStatusResponse(
    id="''", code="''", name="''", attendance_type="''"
)
```

### Working with JSON

```python
from catapa import AttendanceStatusResponse

# Parse from JSON
json_str = '{"id": "example"}'
attendance_status_response = AttendanceStatusResponse.from_json(json_str)

# Convert to JSON
print(attendance_status_response.to_json())
```

### Working with dictionaries

```python
from catapa import AttendanceStatusResponse

# Convert to/from dictionary
data_dict = attendance_status_response.to_dict()
attendance_status_response = AttendanceStatusResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(attendance_status_response.id)
# Update properties
attendance_status_response.id = "new_value"
```
