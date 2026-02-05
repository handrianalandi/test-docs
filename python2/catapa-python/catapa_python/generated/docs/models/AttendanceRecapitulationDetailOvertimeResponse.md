# AttendanceRecapitulationDetailOvertimeResponse

## Properties

| Name          | Type    | Description |
| :------------ | :------ | :---------- |
| `requested`   | `float` |             |
| `paid`        | `float` |             |
| `description` | `str`   |             |

## Usage Examples

### Creating an instance

```python
from catapa import AttendanceRecapitulationDetailOvertimeResponse

attendance_recapitulation_detail_overtime_response = (
    AttendanceRecapitulationDetailOvertimeResponse(
        requested=1.337, paid=1.337, description="''"
    )
)
```

### Working with JSON

```python
from catapa import AttendanceRecapitulationDetailOvertimeResponse

# Parse from JSON
json_str = '{"requested": "example"}'
attendance_recapitulation_detail_overtime_response = (
    AttendanceRecapitulationDetailOvertimeResponse.from_json(json_str)
)

# Convert to JSON
print(attendance_recapitulation_detail_overtime_response.to_json())
```

### Working with dictionaries

```python
from catapa import AttendanceRecapitulationDetailOvertimeResponse

# Convert to/from dictionary
data_dict = attendance_recapitulation_detail_overtime_response.to_dict()
attendance_recapitulation_detail_overtime_response = (
    AttendanceRecapitulationDetailOvertimeResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(attendance_recapitulation_detail_overtime_response.requested)
# Update properties
attendance_recapitulation_detail_overtime_response.requested = new_value
```
