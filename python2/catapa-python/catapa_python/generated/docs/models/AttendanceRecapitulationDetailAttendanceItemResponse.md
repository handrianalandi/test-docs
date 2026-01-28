# AttendanceRecapitulationDetailAttendanceItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**code** | **str** |  | 
**time_in** | **str** |  | 
**time_out** | **str** |  | 
**description** | **str** |  | 

## Example

```python
from catapa import AttendanceRecapitulationDetailAttendanceItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AttendanceRecapitulationDetailAttendanceItemResponse from a JSON string
attendance_recapitulation_detail_attendance_item_response_instance = AttendanceRecapitulationDetailAttendanceItemResponse.from_json(json)
# print the JSON string representation of the object
print(AttendanceRecapitulationDetailAttendanceItemResponse.to_json())

# convert the object into a dict
attendance_recapitulation_detail_attendance_item_response_dict = attendance_recapitulation_detail_attendance_item_response_instance.to_dict()
# create an instance of AttendanceRecapitulationDetailAttendanceItemResponse from a dict
attendance_recapitulation_detail_attendance_item_response_from_dict = AttendanceRecapitulationDetailAttendanceItemResponse.from_dict(attendance_recapitulation_detail_attendance_item_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



