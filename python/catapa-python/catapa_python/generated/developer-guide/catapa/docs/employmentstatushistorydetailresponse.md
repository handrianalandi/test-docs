# EmploymentStatusHistoryDetailResponse

## Properties

| Name                           | Type                                                                                    | Description | Notes       |
| ------------------------------ | --------------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                         | **str**                                                                                 |             | \[optional] |
| **contract\_start**            | **date**                                                                                | YYYY-MM-DD  | \[optional] |
| **contract\_end**              | **date**                                                                                | YYYY-MM-DD  | \[optional] |
| **cost\_center**               | [**CostCenterListItemResponse**](costcenterlistitemresponse.md)                         |             | \[optional] |
| **effective\_date**            | **date**                                                                                | YYYY-MM-DD  | \[optional] |
| **end\_date**                  | **date**                                                                                | YYYY-MM-DD  | \[optional] |
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
from catapa import EmploymentStatusHistoryDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmploymentStatusHistoryDetailResponse from a JSON string
employment_status_history_detail_response_instance = EmploymentStatusHistoryDetailResponse.from_json(json)
# print the JSON string representation of the object
print(EmploymentStatusHistoryDetailResponse.to_json())

# convert the object into a dict
employment_status_history_detail_response_dict = employment_status_history_detail_response_instance.to_dict()
# create an instance of EmploymentStatusHistoryDetailResponse from a dict
employment_status_history_detail_response_from_dict = EmploymentStatusHistoryDetailResponse.from_dict(employment_status_history_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
