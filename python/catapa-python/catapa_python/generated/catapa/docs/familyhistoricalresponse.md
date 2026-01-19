# FamilyHistoricalResponse

## Properties

| Name                 | Type                                                                | Description | Notes       |
| -------------------- | ------------------------------------------------------------------- | ----------- | ----------- |
| **id**               | **str**                                                             |             | \[optional] |
| **name**             | **str**                                                             |             | \[optional] |
| **gender**           | **str**                                                             |             | \[optional] |
| **date\_of\_birth**  | **date**                                                            | YYYY-MM-DD  | \[optional] |
| **family\_relation** | [**FamilyMemberRelationResponse**](familymemberrelationresponse.md) |             | \[optional] |
| **effective\_date**  | **date**                                                            | YYYY-MM-DD  | \[optional] |
| **end\_date**        | **date**                                                            | YYYY-MM-DD  | \[optional] |
| **created\_by**      | **str**                                                             |             | \[optional] |
| **created\_date**    | **float**                                                           |             | \[optional] |
| **updated\_by**      | **str**                                                             |             | \[optional] |
| **updated\_date**    | **float**                                                           |             | \[optional] |

## Example

```python
from catapa import FamilyHistoricalResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyHistoricalResponse from a JSON string
family_historical_response_instance = FamilyHistoricalResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyHistoricalResponse.to_json())

# convert the object into a dict
family_historical_response_dict = family_historical_response_instance.to_dict()
# create an instance of FamilyHistoricalResponse from a dict
family_historical_response_from_dict = FamilyHistoricalResponse.from_dict(family_historical_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
