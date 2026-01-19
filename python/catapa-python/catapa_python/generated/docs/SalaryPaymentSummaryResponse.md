# SalaryPaymentSummaryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**id** | **str** |  | [optional] 
**number_of_processed_employees** | **float** |  | [optional] 
**number_of_transferred_employees** | **float** |  | [optional] 
**payment_date** | **str** |  | [optional] 
**transferred_amount** | **float** |  | [optional] 
**company_bank_account** | [**SalaryPaymentSummaryCompanyBankAccountResponse**](SalaryPaymentSummaryCompanyBankAccountResponse.md) |  | [optional] 

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
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



