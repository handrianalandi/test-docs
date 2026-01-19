# WorkflowReasonListResponse

## Properties

| Name                     | Type                                                            | Description | Notes       |
| ------------------------ | --------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                         |             | \[optional] |
| **last**                 | **bool**                                                        |             | \[optional] |
| **total\_elements**      | **int**                                                         |             | \[optional] |
| **number\_of\_elements** | **int**                                                         |             | \[optional] |
| **has\_content**         | **bool**                                                        |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                     |             | \[optional] |
| **first**                | **bool**                                                        |             | \[optional] |
| **size**                 | **int**                                                         |             | \[optional] |
| **number**               | **int**                                                         |             | \[optional] |
| **content**              | [**List\[WorkflowReasonResponse\]**](workflowreasonresponse.md) |             | \[optional] |

## Example

```python
from catapa import WorkflowReasonListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkflowReasonListResponse from a JSON string
workflow_reason_list_response_instance = WorkflowReasonListResponse.from_json(json)
# print the JSON string representation of the object
print(WorkflowReasonListResponse.to_json())

# convert the object into a dict
workflow_reason_list_response_dict = workflow_reason_list_response_instance.to_dict()
# create an instance of WorkflowReasonListResponse from a dict
workflow_reason_list_response_from_dict = WorkflowReasonListResponse.from_dict(workflow_reason_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
