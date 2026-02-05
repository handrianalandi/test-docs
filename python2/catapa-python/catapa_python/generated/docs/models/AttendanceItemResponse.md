# AttendanceItemResponse

## Properties

| Name                   | Type                                                      | Description |
| :--------------------- | :-------------------------------------------------------- | :---------- |
| `id`                   | `str`                                                     |             |
| `employee`             | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)     |             |
| `var_date`             | `str`                                                     |             |
| `time_in`              | `str`                                                     |             |
| `time_out`             | `str`                                                     |             |
| `attendance_status_in` | [`AttendanceStatusResponse`](AttendanceStatusResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import AttendanceItemResponse

attendance_item_response = AttendanceItemResponse(
    id="''",
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    var_date="''",
    time_in="''",
    time_out="''",
    attendance_status_in=None,  # [AttendanceStatusResponse](AttendanceStatusResponse.md)
)
```

### Working with JSON

```python
from catapa import AttendanceItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
attendance_item_response = AttendanceItemResponse.from_json(json_str)

# Convert to JSON
print(attendance_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import AttendanceItemResponse

# Convert to/from dictionary
data_dict = attendance_item_response.to_dict()
attendance_item_response = AttendanceItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(attendance_item_response.id)
# Update properties
attendance_item_response.id = "new_value"
```
