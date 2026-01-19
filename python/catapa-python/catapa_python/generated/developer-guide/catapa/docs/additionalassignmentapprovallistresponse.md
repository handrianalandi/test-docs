# AdditionalAssignmentApprovalListResponse

## Properties

| Name                     | Type                                                                                        | Description | Notes       |
| ------------------------ | ------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                                     |             | \[optional] |
| **last**                 | **bool**                                                                                    |             | \[optional] |
| **total\_elements**      | **int**                                                                                     |             | \[optional] |
| **number\_of\_elements** | **int**                                                                                     |             | \[optional] |
| **has\_content**         | **bool**                                                                                    |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                                 |             | \[optional] |
| **first**                | **bool**                                                                                    |             | \[optional] |
| **size**                 | **int**                                                                                     |             | \[optional] |
| **number**               | **int**                                                                                     |             | \[optional] |
| **content**              | [**List\[AdditionalAssignmentApprovalResponse\]**](additionalassignmentapprovalresponse.md) |             | \[optional] |

## Example

```python
from catapa import AdditionalAssignmentApprovalListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalAssignmentApprovalListResponse from a JSON string
additional_assignment_approval_list_response_instance = AdditionalAssignmentApprovalListResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalAssignmentApprovalListResponse.to_json())

# convert the object into a dict
additional_assignment_approval_list_response_dict = additional_assignment_approval_list_response_instance.to_dict()
# create an instance of AdditionalAssignmentApprovalListResponse from a dict
additional_assignment_approval_list_response_from_dict = AdditionalAssignmentApprovalListResponse.from_dict(additional_assignment_approval_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
