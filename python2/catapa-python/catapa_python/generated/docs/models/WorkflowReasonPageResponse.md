# WorkflowReasonPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[WorkflowReasonResponse]**](WorkflowReasonResponse.md) |  | 

## Example

```python
from catapa import WorkflowReasonPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkflowReasonPageResponse from a JSON string
workflow_reason_page_response_instance = WorkflowReasonPageResponse.from_json(json)
# print the JSON string representation of the object
print(WorkflowReasonPageResponse.to_json())

# convert the object into a dict
workflow_reason_page_response_dict = workflow_reason_page_response_instance.to_dict()
# create an instance of WorkflowReasonPageResponse from a dict
workflow_reason_page_response_from_dict = WorkflowReasonPageResponse.from_dict(workflow_reason_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



