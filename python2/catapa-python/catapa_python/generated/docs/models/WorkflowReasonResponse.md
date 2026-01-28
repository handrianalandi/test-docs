# WorkflowReasonResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**created_date** | **float** |  | 
**updated_date** | **float** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**category** | [**WorkflowReasonCategoryResponse**](WorkflowReasonCategoryResponse.md) |  | 

## Example

```python
from catapa import WorkflowReasonResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkflowReasonResponse from a JSON string
workflow_reason_response_instance = WorkflowReasonResponse.from_json(json)
# print the JSON string representation of the object
print(WorkflowReasonResponse.to_json())

# convert the object into a dict
workflow_reason_response_dict = workflow_reason_response_instance.to_dict()
# create an instance of WorkflowReasonResponse from a dict
workflow_reason_response_from_dict = WorkflowReasonResponse.from_dict(workflow_reason_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



