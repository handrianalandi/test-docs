# AttendanceRecapitulationDetailItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**var_date** | **str** |  | [optional] 
**shift** | [**ShiftResponse**](ShiftResponse.md) |  | [optional] 
**overtime** | [**AttendanceRecapitulationDetailOvertimeResponse**](AttendanceRecapitulationDetailOvertimeResponse.md) |  | [optional] 
**attendances** | [**List[AttendanceRecapitulationDetailAttendanceItemResponse]**](AttendanceRecapitulationDetailAttendanceItemResponse.md) |  | [optional] 

## Example

```python
from catapa import AttendanceRecapitulationDetailItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AttendanceRecapitulationDetailItemResponse from a JSON string
attendance_recapitulation_detail_item_response_instance = AttendanceRecapitulationDetailItemResponse.from_json(json)
# print the JSON string representation of the object
print(AttendanceRecapitulationDetailItemResponse.to_json())

# convert the object into a dict
attendance_recapitulation_detail_item_response_dict = attendance_recapitulation_detail_item_response_instance.to_dict()
# create an instance of AttendanceRecapitulationDetailItemResponse from a dict
attendance_recapitulation_detail_item_response_from_dict = AttendanceRecapitulationDetailItemResponse.from_dict(attendance_recapitulation_detail_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



