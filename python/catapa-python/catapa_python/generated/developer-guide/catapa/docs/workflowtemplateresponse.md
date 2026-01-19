# WorkflowTemplateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**context** | **str** |  | [optional] 

## Example

```python
from catapa import WorkflowTemplateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkflowTemplateResponse from a JSON string
workflow_template_response_instance = WorkflowTemplateResponse.from_json(json)
# print the JSON string representation of the object
print(WorkflowTemplateResponse.to_json())

# convert the object into a dict
workflow_template_response_dict = workflow_template_response_instance.to_dict()
# create an instance of WorkflowTemplateResponse from a dict
workflow_template_response_from_dict = WorkflowTemplateResponse.from_dict(workflow_template_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



