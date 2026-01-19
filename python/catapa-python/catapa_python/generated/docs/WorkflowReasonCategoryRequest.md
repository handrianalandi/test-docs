# WorkflowReasonCategoryRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 

## Example

```python
from catapa import WorkflowReasonCategoryRequest

# TODO update the JSON string below
json = "{}"
# create an instance of WorkflowReasonCategoryRequest from a JSON string
workflow_reason_category_request_instance = WorkflowReasonCategoryRequest.from_json(json)
# print the JSON string representation of the object
print(WorkflowReasonCategoryRequest.to_json())

# convert the object into a dict
workflow_reason_category_request_dict = workflow_reason_category_request_instance.to_dict()
# create an instance of WorkflowReasonCategoryRequest from a dict
workflow_reason_category_request_from_dict = WorkflowReasonCategoryRequest.from_dict(workflow_reason_category_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



