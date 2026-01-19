# FamilyHistoricalListResponse

## Properties

| Name                     | Type                                                                | Description | Notes       |
| ------------------------ | ------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                             |             | \[optional] |
| **last**                 | **bool**                                                            |             | \[optional] |
| **total\_elements**      | **int**                                                             |             | \[optional] |
| **number\_of\_elements** | **int**                                                             |             | \[optional] |
| **has\_content**         | **bool**                                                            |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                         |             | \[optional] |
| **first**                | **bool**                                                            |             | \[optional] |
| **size**                 | **int**                                                             |             | \[optional] |
| **number**               | **int**                                                             |             | \[optional] |
| **content**              | [**List\[FamilyHistoricalResponse\]**](familyhistoricalresponse.md) |             | \[optional] |

## Example

```python
from catapa import FamilyHistoricalListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyHistoricalListResponse from a JSON string
family_historical_list_response_instance = FamilyHistoricalListResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyHistoricalListResponse.to_json())

# convert the object into a dict
family_historical_list_response_dict = family_historical_list_response_instance.to_dict()
# create an instance of FamilyHistoricalListResponse from a dict
family_historical_list_response_from_dict = FamilyHistoricalListResponse.from_dict(family_historical_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
