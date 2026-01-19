# PositionVacancyStatusListResponse

## Properties

| Name                     | Type                                                                          | Description | Notes       |
| ------------------------ | ----------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                       |             | \[optional] |
| **last**                 | **bool**                                                                      |             | \[optional] |
| **total\_elements**      | **int**                                                                       |             | \[optional] |
| **number\_of\_elements** | **int**                                                                       |             | \[optional] |
| **has\_content**         | **bool**                                                                      |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                   |             | \[optional] |
| **first**                | **bool**                                                                      |             | \[optional] |
| **size**                 | **int**                                                                       |             | \[optional] |
| **number**               | **int**                                                                       |             | \[optional] |
| **content**              | [**List\[PositionVacancyStatusResponse\]**](positionvacancystatusresponse.md) |             | \[optional] |

## Example

```python
from catapa import PositionVacancyStatusListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionVacancyStatusListResponse from a JSON string
position_vacancy_status_list_response_instance = PositionVacancyStatusListResponse.from_json(json)
# print the JSON string representation of the object
print(PositionVacancyStatusListResponse.to_json())

# convert the object into a dict
position_vacancy_status_list_response_dict = position_vacancy_status_list_response_instance.to_dict()
# create an instance of PositionVacancyStatusListResponse from a dict
position_vacancy_status_list_response_from_dict = PositionVacancyStatusListResponse.from_dict(position_vacancy_status_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
