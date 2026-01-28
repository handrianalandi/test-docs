# SalaryPaymentSummaryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **str** |  | 
**amount** | **float** |  | 
**id** | **str** |  | 
**number_of_processed_employees** | **float** |  | 
**number_of_transferred_employees** | **float** |  | 
**payment_date** | **str** |  | 
**transferred_amount** | **float** |  | 
**company_bank_account** | [**SalaryPaymentSummaryCompanyBankAccountResponse**](SalaryPaymentSummaryCompanyBankAccountResponse.md) |  | 

## Example

```python
from catapa import SalaryPaymentSummaryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryPaymentSummaryResponse from a JSON string
salary_payment_summary_response_instance = SalaryPaymentSummaryResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryPaymentSummaryResponse.to_json())

# convert the object into a dict
salary_payment_summary_response_dict = salary_payment_summary_response_instance.to_dict()
# create an instance of SalaryPaymentSummaryResponse from a dict
salary_payment_summary_response_from_dict = SalaryPaymentSummaryResponse.from_dict(salary_payment_summary_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



