# AttendanceItemResponse

## Properties

| Name                       | Type                                                        | Description | Notes       |
| -------------------------- | ----------------------------------------------------------- | ----------- | ----------- |
| **id**                     | **str**                                                     |             | \[optional] |
| **employee**               | [**EmployeeSimpleResponse**](employeesimpleresponse.md)     |             | \[optional] |
| **var\_date**              | **str**                                                     |             | \[optional] |
| **time\_in**               | **str**                                                     |             | \[optional] |
| **time\_out**              | **str**                                                     |             | \[optional] |
| **attendance\_status\_in** | [**AttendanceStatusResponse**](attendancestatusresponse.md) |             | \[optional] |

## Example

```python
from catapa import AttendanceItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AttendanceItemResponse from a JSON string
attendance_item_response_instance = AttendanceItemResponse.from_json(json)
# print the JSON string representation of the object
print(AttendanceItemResponse.to_json())

# convert the object into a dict
attendance_item_response_dict = attendance_item_response_instance.to_dict()
# create an instance of AttendanceItemResponse from a dict
attendance_item_response_from_dict = AttendanceItemResponse.from_dict(attendance_item_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
