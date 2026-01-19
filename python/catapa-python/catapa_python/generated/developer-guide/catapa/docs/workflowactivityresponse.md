# WorkflowActivityResponse

## Properties

| Name                   | Type                                                        | Description | Notes       |
| ---------------------- | ----------------------------------------------------------- | ----------- | ----------- |
| **id**                 | **str**                                                     |             | \[optional] |
| **created\_date**      | **float**                                                   |             | \[optional] |
| **updated\_date**      | **float**                                                   |             | \[optional] |
| **workflow\_template** | [**WorkflowTemplateResponse**](workflowtemplateresponse.md) |             | \[optional] |
| **effective\_date**    | **str**                                                     |             | \[optional] |
| **workflow\_reason**   | [**WorkflowReasonResponse**](workflowreasonresponse.md)     |             | \[optional] |
| **employee**           | [**EmployeeSimpleResponse**](employeesimpleresponse.md)     |             | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
