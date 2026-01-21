# AttendanceItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**var_date** | **str** |  | [optional] 
**time_in** | **str** |  | [optional] 
**time_out** | **str** |  | [optional] 
**attendance_status_in** | [**AttendanceStatusResponse**](AttendanceStatusResponse.md) |  | [optional] 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



