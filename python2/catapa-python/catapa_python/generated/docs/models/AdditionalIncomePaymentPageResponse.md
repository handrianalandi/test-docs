# AdditionalIncomePaymentPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[AdditionalIncomePaymentListItemResponse]**](AdditionalIncomePaymentListItemResponse.md) |  | [optional] 

## Example

```python
from catapa import AdditionalIncomePaymentPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalIncomePaymentPageResponse from a JSON string
additional_income_payment_page_response_instance = AdditionalIncomePaymentPageResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalIncomePaymentPageResponse.to_json())

# convert the object into a dict
additional_income_payment_page_response_dict = additional_income_payment_page_response_instance.to_dict()
# create an instance of AdditionalIncomePaymentPageResponse from a dict
additional_income_payment_page_response_from_dict = AdditionalIncomePaymentPageResponse.from_dict(additional_income_payment_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



