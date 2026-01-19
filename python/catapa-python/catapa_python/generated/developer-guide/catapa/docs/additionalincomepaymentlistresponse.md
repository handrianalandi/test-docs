# AdditionalIncomePaymentListResponse

## Properties

| Name        | Type                                                                                              | Description | Notes       |
| ----------- | ------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **content** | [**List\[AdditionalIncomePaymentListItemResponse\]**](additionalincomepaymentlistitemresponse.md) |             | \[optional] |

## Example

```python
from catapa import AdditionalIncomePaymentListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalIncomePaymentListResponse from a JSON string
additional_income_payment_list_response_instance = AdditionalIncomePaymentListResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalIncomePaymentListResponse.to_json())

# convert the object into a dict
additional_income_payment_list_response_dict = additional_income_payment_list_response_instance.to_dict()
# create an instance of AdditionalIncomePaymentListResponse from a dict
additional_income_payment_list_response_from_dict = AdditionalIncomePaymentListResponse.from_dict(additional_income_payment_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
