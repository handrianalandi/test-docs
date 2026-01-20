# WorkflowReasonRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 
**category** | [**IdRequest**](IdRequest.md) |  | 

## Example

```python
from catapa import WorkflowReasonRequest

# TODO update the JSON string below
json = "{}"
# create an instance of WorkflowReasonRequest from a JSON string
workflow_reason_request_instance = WorkflowReasonRequest.from_json(json)
# print the JSON string representation of the object
print(WorkflowReasonRequest.to_json())

# convert the object into a dict
workflow_reason_request_dict = workflow_reason_request_instance.to_dict()
# create an instance of WorkflowReasonRequest from a dict
workflow_reason_request_from_dict = WorkflowReasonRequest.from_dict(workflow_reason_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



