# SalaryPaymentDetailCompanyBankAccountResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**name** | **str** |  | [optional] 
**company_code** | **str** |  | [optional] 
**account_number** | **str** |  | [optional] 
**bank_branch** | [**BankBranchResponse**](BankBranchResponse.md) |  | [optional] 
**currency** | [**CurrencySimpleResponse**](CurrencySimpleResponse.md) |  | [optional] 

## Example

```python
from catapa import SalaryPaymentDetailCompanyBankAccountResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentDetailCompanyBankAccountResponse from a JSON string
salary_payment_detail_company_bank_account_response_instance = SalaryPaymentDetailCompanyBankAccountResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentDetailCompanyBankAccountResponse.to_json())

# convert the object into a dict
salary_payment_detail_company_bank_account_response_dict = salary_payment_detail_company_bank_account_response_instance.to_dict()
# create an instance of SalaryPaymentDetailCompanyBankAccountResponse from a dict
salary_payment_detail_company_bank_account_response_from_dict = SalaryPaymentDetailCompanyBankAccountResponse.from_dict(salary_payment_detail_company_bank_account_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



