# OtherLeaveStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 
**description** | **str** |  | 

## Example

```python
from catapa import OtherLeaveStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OtherLeaveStatusResponse from a JSON string
other_leave_status_response_instance = OtherLeaveStatusResponse.from_json(json)
# print the JSON string representation of the object
print(OtherLeaveStatusResponse.to_json())

# convert the object into a dict
other_leave_status_response_dict = other_leave_status_response_instance.to_dict()
# create an instance of OtherLeaveStatusResponse from a dict
other_leave_status_response_from_dict = OtherLeaveStatusResponse.from_dict(other_leave_status_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



