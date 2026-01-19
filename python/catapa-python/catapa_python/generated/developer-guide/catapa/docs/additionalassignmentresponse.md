# AdditionalAssignmentResponse

## Properties

| Name                         | Type                                                                | Description | Notes       |
| ---------------------------- | ------------------------------------------------------------------- | ----------- | ----------- |
| **id**                       | **str**                                                             |             | \[optional] |
| **employment\_status\_type** | [**EmploymentStatusTypeResponse**](employmentstatustyperesponse.md) |             | \[optional] |
| **employment\_type**         | [**EmploymentTypeResponse**](employmenttyperesponse.md)             |             | \[optional] |
| **effective\_date**          | **str**                                                             |             | \[optional] |
| **end\_date**                | **str**                                                             |             | \[optional] |
| **sign\_date**               | **str**                                                             |             | \[optional] |
| **created\_by**              | **str**                                                             |             | \[optional] |
| **created\_date**            | **float**                                                           |             | \[optional] |
| **updated\_by**              | **str**                                                             |             | \[optional] |
| **updated\_date**            | **float**                                                           |             | \[optional] |
| **organization**             | [**OrganizationResponse**](organizationresponse.md)                 |             | \[optional] |
| **position**                 | [**PositionResponse**](positionresponse.md)                         |             | \[optional] |
| **job\_level**               | [**JobLevelResponse**](joblevelresponse.md)                         |             | \[optional] |
| **job\_title**               | [**JobTitleResponse**](jobtitleresponse.md)                         |             | \[optional] |
| **location**                 | [**LocationResponse**](locationresponse.md)                         |             | \[optional] |
| **cost\_center**             | [**CostCenterResponse**](costcenterresponse.md)                     |             | \[optional] |
| **employee**                 | [**EmployeeSimpleResponse**](employeesimpleresponse.md)             |             | \[optional] |
| **sub\_location**            | [**SubLocationResponse**](sublocationresponse.md)                   |             | \[optional] |
| **operational\_group**       | [**IdCodeNameResponse**](idcodenameresponse.md)                     |             | \[optional] |

## Example

```python
from catapa import AdditionalAssignmentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalAssignmentResponse from a JSON string
additional_assignment_response_instance = AdditionalAssignmentResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalAssignmentResponse.to_json())

# convert the object into a dict
additional_assignment_response_dict = additional_assignment_response_instance.to_dict()
# create an instance of AdditionalAssignmentResponse from a dict
additional_assignment_response_from_dict = AdditionalAssignmentResponse.from_dict(additional_assignment_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
