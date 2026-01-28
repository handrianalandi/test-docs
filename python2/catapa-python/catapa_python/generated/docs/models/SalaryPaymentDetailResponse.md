# SalaryPaymentDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**bank_code** | **str** |  | 
**bank_name** | **str** |  | 
**account_name** | **str** |  | 
**account_number** | **str** |  | 
**bank_account_priority** | **int** |  | 
**currency_code** | **str** |  | 
**amount** | **float** |  | 
**exchanged_amount** | **float** |  | 
**company_bank_account** | [**SalaryPaymentDetailCompanyBankAccountResponse**](SalaryPaymentDetailCompanyBankAccountResponse.md) |  | 

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



