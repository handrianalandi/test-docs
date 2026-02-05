# AttendanceRecapitulationDetailItemResponse

## Properties

| Name          | Type                                                                                                                    | Description |
| :------------ | :---------------------------------------------------------------------------------------------------------------------- | :---------- |
| `employee`    | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)                                                                   |             |
| `var_date`    | `str`                                                                                                                   |             |
| `shift`       | [`ShiftResponse`](ShiftResponse.md)                                                                                     |             |
| `overtime`    | [`AttendanceRecapitulationDetailOvertimeResponse`](AttendanceRecapitulationDetailOvertimeResponse.md)                   |             |
| `attendances` | [`List[AttendanceRecapitulationDetailAttendanceItemResponse]`](AttendanceRecapitulationDetailAttendanceItemResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import AttendanceRecapitulationDetailItemResponse

attendance_recapitulation_detail_item_response = AttendanceRecapitulationDetailItemResponse(
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    var_date="''",
    shift=None,  # [ShiftResponse](ShiftResponse.md)
    overtime=None,  # [AttendanceRecapitulationDetailOvertimeResponse](AttendanceRecapitulationDetailOvertimeResponse.md)
    attendances=[],  # List[[AttendanceRecapitulationDetailAttendanceItemResponse](AttendanceRecapitulationDetailAttendanceItemResponse.md)]
)
```

### Working with JSON

```python
from catapa import AttendanceRecapitulationDetailItemResponse

# Parse from JSON
json_str = '{"employee": "example"}'
attendance_recapitulation_detail_item_response = (
    AttendanceRecapitulationDetailItemResponse.from_json(json_str)
)

# Convert to JSON
print(attendance_recapitulation_detail_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import AttendanceRecapitulationDetailItemResponse

# Convert to/from dictionary
data_dict = attendance_recapitulation_detail_item_response.to_dict()
attendance_recapitulation_detail_item_response = (
    AttendanceRecapitulationDetailItemResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(attendance_recapitulation_detail_item_response.employee)
# Update properties
attendance_recapitulation_detail_item_response.employee = new_value
```
