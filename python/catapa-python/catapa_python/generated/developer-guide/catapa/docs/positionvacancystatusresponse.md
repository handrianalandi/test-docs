# PositionVacancyStatusResponse

## Properties

| Name                | Type                                            | Description | Notes       |
| ------------------- | ----------------------------------------------- | ----------- | ----------- |
| **id**              | **str**                                         |             | \[optional] |
| **effective\_date** | **str**                                         |             | \[optional] |
| **vacancy\_status** | **str**                                         |             | \[optional] |
| **position**        | [**IdCodeNameResponse**](idcodenameresponse.md) |             | \[optional] |
| **created\_by**     | **str**                                         |             | \[optional] |
| **created\_date**   | **float**                                       |             | \[optional] |
| **updated\_by**     | **str**                                         |             | \[optional] |
| **updated\_date**   | **float**                                       |             | \[optional] |

## Example

```python
from catapa import PositionVacancyStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionVacancyStatusResponse from a JSON string
position_vacancy_status_response_instance = PositionVacancyStatusResponse.from_json(json)
# print the JSON string representation of the object
print(PositionVacancyStatusResponse.to_json())

# convert the object into a dict
position_vacancy_status_response_dict = position_vacancy_status_response_instance.to_dict()
# create an instance of PositionVacancyStatusResponse from a dict
position_vacancy_status_response_from_dict = PositionVacancyStatusResponse.from_dict(position_vacancy_status_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
