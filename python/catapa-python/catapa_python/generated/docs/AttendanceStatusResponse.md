# AttendanceStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**attendance_type** | **str** |  | [optional] 

## Example

```python
from catapa import AttendanceStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AttendanceStatusResponse from a JSON string
attendance_status_response_instance = AttendanceStatusResponse.from_json(json)
# print the JSON string representation of the object
print(AttendanceStatusResponse.to_json())

# convert the object into a dict
attendance_status_response_dict = attendance_status_response_instance.to_dict()
# create an instance of AttendanceStatusResponse from a dict
attendance_status_response_from_dict = AttendanceStatusResponse.from_dict(attendance_status_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



