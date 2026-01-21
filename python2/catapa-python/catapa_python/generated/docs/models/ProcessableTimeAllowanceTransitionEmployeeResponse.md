# ProcessableTimeAllowanceTransitionEmployeeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**identification_number** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**employment_status** | [**ProcessableTimeAllowanceTransitionEmploymentStatusResponse**](ProcessableTimeAllowanceTransitionEmploymentStatusResponse.md) |  | [optional] 

## Example

```python
from catapa import ProcessableTimeAllowanceTransitionEmployeeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessableTimeAllowanceTransitionEmployeeResponse from a JSON string
processable_time_allowance_transition_employee_response_instance = ProcessableTimeAllowanceTransitionEmployeeResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessableTimeAllowanceTransitionEmployeeResponse.to_json())

# convert the object into a dict
processable_time_allowance_transition_employee_response_dict = processable_time_allowance_transition_employee_response_instance.to_dict()
# create an instance of ProcessableTimeAllowanceTransitionEmployeeResponse from a dict
processable_time_allowance_transition_employee_response_from_dict = ProcessableTimeAllowanceTransitionEmployeeResponse.from_dict(processable_time_allowance_transition_employee_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



