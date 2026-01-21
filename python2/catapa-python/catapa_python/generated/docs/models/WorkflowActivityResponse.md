# WorkflowActivityResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_date** | **float** |  | [optional] 
**workflow_template** | [**WorkflowTemplateResponse**](WorkflowTemplateResponse.md) |  | [optional] 
**effective_date** | **str** |  | [optional] 
**workflow_reason** | [**WorkflowReasonResponse**](WorkflowReasonResponse.md) |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 

## Example

```python
from catapa import WorkflowActivityResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkflowActivityResponse from a JSON string
workflow_activity_response_instance = WorkflowActivityResponse.from_json(json)
# print the JSON string representation of the object
print(WorkflowActivityResponse.to_json())

# convert the object into a dict
workflow_activity_response_dict = workflow_activity_response_instance.to_dict()
# create an instance of WorkflowActivityResponse from a dict
workflow_activity_response_from_dict = WorkflowActivityResponse.from_dict(workflow_activity_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



