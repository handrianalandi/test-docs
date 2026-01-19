# AdditionalAssignmentApprovalResponse

## Properties

| Name                         | Type                                                                                                        | Description | Notes       |
| ---------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                       | **str**                                                                                                     |             | \[optional] |
| **action**                   | **str**                                                                                                     |             | \[optional] |
| **approval\_status**         | **str**                                                                                                     |             | \[optional] |
| **rejection\_reason**        | **str**                                                                                                     |             | \[optional] |
| **employment\_status\_type** | [**EmploymentStatusTypeResponse**](employmentstatustyperesponse.md)                                         |             | \[optional] |
| **employment\_type**         | [**EmploymentTypeResponse**](employmenttyperesponse.md)                                                     |             | \[optional] |
| **effective\_date**          | **str**                                                                                                     |             | \[optional] |
| **end\_date**                | **str**                                                                                                     |             | \[optional] |
| **sign\_date**               | **str**                                                                                                     |             | \[optional] |
| **created\_by**              | **str**                                                                                                     |             | \[optional] |
| **created\_date**            | **float**                                                                                                   |             | \[optional] |
| **updated\_by**              | **str**                                                                                                     |             | \[optional] |
| **updated\_date**            | **float**                                                                                                   |             | \[optional] |
| **organization**             | [**OrganizationResponse**](organizationresponse.md)                                                         |             | \[optional] |
| **position**                 | [**PositionResponse**](positionresponse.md)                                                                 |             | \[optional] |
| **job\_level**               | [**JobLevelResponse**](joblevelresponse.md)                                                                 |             | \[optional] |
| **job\_title**               | [**JobTitleResponse**](jobtitleresponse.md)                                                                 |             | \[optional] |
| **location**                 | [**LocationResponse**](locationresponse.md)                                                                 |             | \[optional] |
| **cost\_center**             | [**CostCenterResponse**](costcenterresponse.md)                                                             |             | \[optional] |
| **employee**                 | [**EmployeeSimpleResponse**](employeesimpleresponse.md)                                                     |             | \[optional] |
| **sub\_location**            | [**AdditionalAssignmentApprovaleSubLocationResponse**](additionalassignmentapprovalesublocationresponse.md) |             | \[optional] |
| **operational\_group**       | [**IdCodeNameResponse**](idcodenameresponse.md)                                                             |             | \[optional] |
| **additional\_assignment**   | [**AdditionalAssignmentResponse**](additionalassignmentresponse.md)                                         |             | \[optional] |

## Example

```python
from catapa import AdditionalAssignmentApprovalResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalAssignmentApprovalResponse from a JSON string
additional_assignment_approval_response_instance = AdditionalAssignmentApprovalResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalAssignmentApprovalResponse.to_json())

# convert the object into a dict
additional_assignment_approval_response_dict = additional_assignment_approval_response_instance.to_dict()
# create an instance of AdditionalAssignmentApprovalResponse from a dict
additional_assignment_approval_response_from_dict = AdditionalAssignmentApprovalResponse.from_dict(additional_assignment_approval_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
