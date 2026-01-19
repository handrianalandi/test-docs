# MonthlyTaxDetailResponse

## Properties

| Name                             | Type                                          | Description | Notes       |
| -------------------------------- | --------------------------------------------- | ----------- | ----------- |
| **annual\_calculation**          | **bool**                                      |             | \[optional] |
| **tax\_object**                  | **str**                                       |             | \[optional] |
| **year**                         | **int**                                       |             | \[optional] |
| **month**                        | **int**                                       |             | \[optional] |
| **employee\_id**                 | **str**                                       |             | \[optional] |
| **npwp\_number**                 | **str**                                       |             | \[optional] |
| **npwp\_address**                | **str**                                       |             | \[optional] |
| **ptkp\_category\_code**         | **str**                                       |             | \[optional] |
| **ter\_category**                | **str**                                       |             | \[optional] |
| **percentage**                   | **float**                                     |             | \[optional] |
| **monthly\_gross\_income**       | **float**                                     |             | \[optional] |
| **tax**                          | [**TaxAmountResponse**](taxamountresponse.md) |             | \[optional] |
| **regular\_tax**                 | [**TaxAmountResponse**](taxamountresponse.md) |             | \[optional] |
| **bonus\_tax**                   | [**TaxAmountResponse**](taxamountresponse.md) |             | \[optional] |
| **income**                       | [**TaxIncomeResponse**](taxincomeresponse.md) |             | \[optional] |
| **positional\_allowance**        | **float**                                     |             | \[optional] |
| **base\_income\_tax\_deduction** | **float**                                     |             | \[optional] |

## Example

```python
from catapa import MonthlyTaxDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyTaxDetailResponse from a JSON string
monthly_tax_detail_response_instance = MonthlyTaxDetailResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyTaxDetailResponse.to_json())

# convert the object into a dict
monthly_tax_detail_response_dict = monthly_tax_detail_response_instance.to_dict()
# create an instance of MonthlyTaxDetailResponse from a dict
monthly_tax_detail_response_from_dict = MonthlyTaxDetailResponse.from_dict(monthly_tax_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
