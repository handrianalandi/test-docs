# AttendanceRecapitulationDetailOvertimeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requested** | **float** |  | 
**paid** | **float** |  | 
**description** | **str** |  | 

## Example

```python
from catapa import AttendanceRecapitulationDetailOvertimeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AttendanceRecapitulationDetailOvertimeResponse from a JSON string
attendance_recapitulation_detail_overtime_response_instance = AttendanceRecapitulationDetailOvertimeResponse.from_json(json)
# print the JSON string representation of the object
print(AttendanceRecapitulationDetailOvertimeResponse.to_json())

# convert the object into a dict
attendance_recapitulation_detail_overtime_response_dict = attendance_recapitulation_detail_overtime_response_instance.to_dict()
# create an instance of AttendanceRecapitulationDetailOvertimeResponse from a dict
attendance_recapitulation_detail_overtime_response_from_dict = AttendanceRecapitulationDetailOvertimeResponse.from_dict(attendance_recapitulation_detail_overtime_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



