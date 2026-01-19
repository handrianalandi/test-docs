# ProcessableTimeAllowanceTransitionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daily_end_date** | **str** |  | [optional] 
**daily_start_date** | **str** |  | [optional] 
**employee** | [**ProcessableTimeAllowanceTransitionEmployeeResponse**](ProcessableTimeAllowanceTransitionEmployeeResponse.md) |  | [optional] 
**id** | **str** |  | [optional] 

## Example

```python
from catapa import ProcessableTimeAllowanceTransitionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessableTimeAllowanceTransitionResponse from a JSON string
processable_time_allowance_transition_response_instance = ProcessableTimeAllowanceTransitionResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessableTimeAllowanceTransitionResponse.to_json())

# convert the object into a dict
processable_time_allowance_transition_response_dict = processable_time_allowance_transition_response_instance.to_dict()
# create an instance of ProcessableTimeAllowanceTransitionResponse from a dict
processable_time_allowance_transition_response_from_dict = ProcessableTimeAllowanceTransitionResponse.from_dict(processable_time_allowance_transition_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



