# SalaryPaymentSummaryCompanyBankAccountResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**account_number** | **str** |  | [optional] 
**bank_branch** | [**BankBranchSimpleResponse**](BankBranchSimpleResponse.md) |  | [optional] 

## Example

```python
from catapa import SalaryPaymentSummaryCompanyBankAccountResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentSummaryCompanyBankAccountResponse from a JSON string
salary_payment_summary_company_bank_account_response_instance = SalaryPaymentSummaryCompanyBankAccountResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentSummaryCompanyBankAccountResponse.to_json())

# convert the object into a dict
salary_payment_summary_company_bank_account_response_dict = salary_payment_summary_company_bank_account_response_instance.to_dict()
# create an instance of SalaryPaymentSummaryCompanyBankAccountResponse from a dict
salary_payment_summary_company_bank_account_response_from_dict = SalaryPaymentSummaryCompanyBankAccountResponse.from_dict(salary_payment_summary_company_bank_account_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



