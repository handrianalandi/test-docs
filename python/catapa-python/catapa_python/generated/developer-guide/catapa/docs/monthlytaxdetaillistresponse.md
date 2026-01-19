# MonthlyTaxDetailListResponse

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
| **content**              | [**List\[MonthlyTaxDetailResponse\]**](monthlytaxdetailresponse.md) |             | \[optional] |

## Example

```python
from catapa import MonthlyTaxDetailListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyTaxDetailListResponse from a JSON string
monthly_tax_detail_list_response_instance = MonthlyTaxDetailListResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyTaxDetailListResponse.to_json())

# convert the object into a dict
monthly_tax_detail_list_response_dict = monthly_tax_detail_list_response_instance.to_dict()
# create an instance of MonthlyTaxDetailListResponse from a dict
monthly_tax_detail_list_response_from_dict = MonthlyTaxDetailListResponse.from_dict(monthly_tax_detail_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
