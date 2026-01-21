# SalaryPaymentDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**bank_code** | **str** |  | [optional] 
**bank_name** | **str** |  | [optional] 
**account_name** | **str** |  | [optional] 
**account_number** | **str** |  | [optional] 
**bank_account_priority** | **int** |  | [optional] 
**currency_code** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**exchanged_amount** | **float** |  | [optional] 
**company_bank_account** | [**SalaryPaymentDetailCompanyBankAccountResponse**](SalaryPaymentDetailCompanyBankAccountResponse.md) |  | [optional] 

## Example

```python
from catapa import SalaryPaymentDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentDetailResponse from a JSON string
salary_payment_detail_response_instance = SalaryPaymentDetailResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentDetailResponse.to_json())

# convert the object into a dict
salary_payment_detail_response_dict = salary_payment_detail_response_instance.to_dict()
# create an instance of SalaryPaymentDetailResponse from a dict
salary_payment_detail_response_from_dict = SalaryPaymentDetailResponse.from_dict(salary_payment_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



