# WorkflowReasonCategoryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**restrict_duplicate_effective_date** | **bool** |  | 

## Example

```python
from catapa import WorkflowReasonCategoryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkflowReasonCategoryResponse from a JSON string
workflow_reason_category_response_instance = WorkflowReasonCategoryResponse.from_json(json)
# print the JSON string representation of the object
print(WorkflowReasonCategoryResponse.to_json())

# convert the object into a dict
workflow_reason_category_response_dict = workflow_reason_category_response_instance.to_dict()
# create an instance of WorkflowReasonCategoryResponse from a dict
workflow_reason_category_response_from_dict = WorkflowReasonCategoryResponse.from_dict(workflow_reason_category_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



