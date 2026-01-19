# EmploymentStatusDetailResponse

## Properties

| Name                           | Type                                                                                    | Description | Notes       |
| ------------------------------ | --------------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                         | **str**                                                                                 |             | \[optional] |
| **contract\_start**            | **date**                                                                                | YYYY-MM-DD  | \[optional] |
| **contract\_end**              | **date**                                                                                | YYYY-MM-DD  | \[optional] |
| **cost\_center**               | [**CostCenterListItemResponse**](costcenterlistitemresponse.md)                         |             | \[optional] |
| **effective\_date**            | **date**                                                                                | YYYY-MM-DD  | \[optional] |
| **created\_by**                | **str**                                                                                 |             | \[optional] |
| **created\_date**              | **float**                                                                               |             | \[optional] |
| **updated\_by**                | **str**                                                                                 |             | \[optional] |
| **updated\_date**              | **float**                                                                               |             | \[optional] |
| **employment\_status\_number** | **str**                                                                                 |             | \[optional] |
| **employment\_status\_type**   | [**EmploymentStatusTypeResponse**](employmentstatustyperesponse.md)                     |             | \[optional] |
| **employment\_type**           | [**EmploymentTypeResponse**](employmenttyperesponse.md)                                 |             | \[optional] |
| **job\_level**                 | [**JobLevelResponse**](joblevelresponse.md)                                             |             | \[optional] |
| **job\_title**                 | [**JobTitleResponse**](jobtitleresponse.md)                                             |             | \[optional] |
| **location**                   | [**LocationResponse**](locationresponse.md)                                             |             | \[optional] |
| **organization**               | [**OrganizationResponse**](organizationresponse.md)                                     |             | \[optional] |
| **permanent\_date**            | **date**                                                                                | YYYY-MM-DD  | \[optional] |
| **sign\_date**                 | **date**                                                                                | YYYY-MM-DD  | \[optional] |
| **sub\_location**              | [**SubLocationResponse**](sublocationresponse.md)                                       |             | \[optional] |
| **operational\_group**         | [**IdCodeNameResponse**](idcodenameresponse.md)                                         |             | \[optional] |
| **position**                   | [**EmploymentStatusDetailPositionResponse**](employmentstatusdetailpositionresponse.md) |             | \[optional] |

## Example

```python
from catapa import EmploymentStatusDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentStatusDetailResponse from a JSON string
employment_status_detail_response_instance = EmploymentStatusDetailResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentStatusDetailResponse.to_json())

# convert the object into a dict
employment_status_detail_response_dict = employment_status_detail_response_instance.to_dict()
# create an instance of EmploymentStatusDetailResponse from a dict
employment_status_detail_response_from_dict = EmploymentStatusDetailResponse.from_dict(employment_status_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
