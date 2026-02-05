# AttendanceRecapitulationDetailAttendanceItemResponse

## Properties

| Name          | Type  | Description |
| :------------ | :---- | :---------- |
| `type`        | `str` |             |
| `code`        | `str` |             |
| `time_in`     | `str` |             |
| `time_out`    | `str` |             |
| `description` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import AttendanceRecapitulationDetailAttendanceItemResponse

attendance_recapitulation_detail_attendance_item_response = (
    AttendanceRecapitulationDetailAttendanceItemResponse(
        type="''", code="''", time_in="''", time_out="''", description="''"
    )
)
```

### Working with JSON

```python
from catapa import AttendanceRecapitulationDetailAttendanceItemResponse

# Parse from JSON
json_str = '{"type": "example"}'
attendance_recapitulation_detail_attendance_item_response = (
    AttendanceRecapitulationDetailAttendanceItemResponse.from_json(json_str)
)

# Convert to JSON
print(attendance_recapitulation_detail_attendance_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import AttendanceRecapitulationDetailAttendanceItemResponse

# Convert to/from dictionary
data_dict = attendance_recapitulation_detail_attendance_item_response.to_dict()
attendance_recapitulation_detail_attendance_item_response = (
    AttendanceRecapitulationDetailAttendanceItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(attendance_recapitulation_detail_attendance_item_response.type)
# Update properties
attendance_recapitulation_detail_attendance_item_response.type = "new_value"
```
