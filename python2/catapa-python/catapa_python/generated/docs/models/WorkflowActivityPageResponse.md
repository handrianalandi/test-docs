# WorkflowActivityPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[WorkflowActivityResponse]**](WorkflowActivityResponse.md) |  | [optional] 

## Example

```python
from catapa import WorkflowActivityPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkflowActivityPageResponse from a JSON string
workflow_activity_page_response_instance = WorkflowActivityPageResponse.from_json(json)
# print the JSON string representation of the object
print(WorkflowActivityPageResponse.to_json())

# convert the object into a dict
workflow_activity_page_response_dict = workflow_activity_page_response_instance.to_dict()
# create an instance of WorkflowActivityPageResponse from a dict
workflow_activity_page_response_from_dict = WorkflowActivityPageResponse.from_dict(workflow_activity_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



