# MonthlyRecapitulationItemDetailResponse

## Properties

| Name             | Type                                                                                | Description | Notes       |
| ---------------- | ----------------------------------------------------------------------------------- | ----------- | ----------- |
| **amount**       | **float**                                                                           |             | \[optional] |
| **salary\_item** | [**SalaryItemWithSalaryItemTypeResponse**](salaryitemwithsalaryitemtyperesponse.md) |             | \[optional] |

## Example

```python
from catapa import MonthlyRecapitulationItemDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyRecapitulationItemDetailResponse from a JSON string
monthly_recapitulation_item_detail_response_instance = MonthlyRecapitulationItemDetailResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyRecapitulationItemDetailResponse.to_json())

# convert the object into a dict
monthly_recapitulation_item_detail_response_dict = monthly_recapitulation_item_detail_response_instance.to_dict()
# create an instance of MonthlyRecapitulationItemDetailResponse from a dict
monthly_recapitulation_item_detail_response_from_dict = MonthlyRecapitulationItemDetailResponse.from_dict(monthly_recapitulation_item_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
