# MonthlyRecapitulationItemResponse

## Properties

| Name           | Type                                                                                              | Description | Notes       |
| -------------- | ------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **code**       | **str**                                                                                           |             | \[optional] |
| **id**         | **str**                                                                                           |             | \[optional] |
| **month**      | **float**                                                                                         |             | \[optional] |
| **name**       | **str**                                                                                           |             | \[optional] |
| **total\_thp** | **float**                                                                                         |             | \[optional] |
| **year**       | **float**                                                                                         |             | \[optional] |
| **details**    | [**List\[MonthlyRecapitulationItemDetailResponse\]**](monthlyrecapitulationitemdetailresponse.md) |             | \[optional] |

## Example

```python
from catapa import MonthlyRecapitulationItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyRecapitulationItemResponse from a JSON string
monthly_recapitulation_item_response_instance = MonthlyRecapitulationItemResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyRecapitulationItemResponse.to_json())

# convert the object into a dict
monthly_recapitulation_item_response_dict = monthly_recapitulation_item_response_instance.to_dict()
# create an instance of MonthlyRecapitulationItemResponse from a dict
monthly_recapitulation_item_response_from_dict = MonthlyRecapitulationItemResponse.from_dict(monthly_recapitulation_item_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
