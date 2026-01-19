# MonthlyRecapitulationListResponse

## Properties

| Name                     | Type                                                                                  | Description | Notes       |
| ------------------------ | ------------------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                               |             | \[optional] |
| **last**                 | **bool**                                                                              |             | \[optional] |
| **total\_elements**      | **int**                                                                               |             | \[optional] |
| **number\_of\_elements** | **int**                                                                               |             | \[optional] |
| **has\_content**         | **bool**                                                                              |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                           |             | \[optional] |
| **first**                | **bool**                                                                              |             | \[optional] |
| **size**                 | **int**                                                                               |             | \[optional] |
| **number**               | **int**                                                                               |             | \[optional] |
| **content**              | [**List\[MonthlyRecapitulationItemResponse\]**](monthlyrecapitulationitemresponse.md) |             | \[optional] |

## Example

```python
from catapa import MonthlyRecapitulationListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyRecapitulationListResponse from a JSON string
monthly_recapitulation_list_response_instance = MonthlyRecapitulationListResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyRecapitulationListResponse.to_json())

# convert the object into a dict
monthly_recapitulation_list_response_dict = monthly_recapitulation_list_response_instance.to_dict()
# create an instance of MonthlyRecapitulationListResponse from a dict
monthly_recapitulation_list_response_from_dict = MonthlyRecapitulationListResponse.from_dict(monthly_recapitulation_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
