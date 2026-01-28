# AdditionalIncomePaymentListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_id** | **str** |  | 
**payment_date** | **str** |  | 

## Example

```python
from catapa import AdditionalIncomePaymentListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalIncomePaymentListItemResponse from a JSON string
additional_income_payment_list_item_response_instance = AdditionalIncomePaymentListItemResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalIncomePaymentListItemResponse.to_json())

# convert the object into a dict
additional_income_payment_list_item_response_dict = additional_income_payment_list_item_response_instance.to_dict()
# create an instance of AdditionalIncomePaymentListItemResponse from a dict
additional_income_payment_list_item_response_from_dict = AdditionalIncomePaymentListItemResponse.from_dict(additional_income_payment_list_item_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



