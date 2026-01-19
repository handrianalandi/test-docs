# PositionResponse

## Properties

| Name                | Type                                                | Description | Notes       |
| ------------------- | --------------------------------------------------- | ----------- | ----------- |
| **id**              | **str**                                             |             | \[optional] |
| **code**            | **str**                                             |             | \[optional] |
| **name**            | **str**                                             |             | \[optional] |
| **organization**    | [**OrganizationResponse**](organizationresponse.md) |             | \[optional] |
| **job\_title**      | [**JobTitleResponse**](jobtitleresponse.md)         |             | \[optional] |
| **job\_level**      | [**JobLevelResponse**](joblevelresponse.md)         |             | \[optional] |
| **cost\_center**    | [**CostCenterResponse**](costcenterresponse.md)     |             | \[optional] |
| **location**        | [**LocationResponse**](locationresponse.md)         |             | \[optional] |
| **assigned**        | **bool**                                            |             | \[optional] |
| **effective\_date** | **str**                                             |             | \[optional] |
| **end\_date**       | **str**                                             |             | \[optional] |

## Example

```python
from catapa import PositionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionResponse from a JSON string
position_response_instance = PositionResponse.from_json(json)
# print the JSON string representation of the object
print(PositionResponse.to_json())

# convert the object into a dict
position_response_dict = position_response_instance.to_dict()
# create an instance of PositionResponse from a dict
position_response_from_dict = PositionResponse.from_dict(position_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
