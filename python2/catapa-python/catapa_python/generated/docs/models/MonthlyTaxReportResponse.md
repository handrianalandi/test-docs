# MonthlyTaxReportResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**year** | **float** |  | [optional] 
**month** | **float** |  | [optional] 
**pph21_method** | **str** |  | [optional] 
**membership_number** | **str** |  | [optional] 
**membership_address** | **str** |  | [optional] 
**total_monthly_gross_income** | **float** |  | [optional] 
**total_tax_and_allowance** | [**TaxAndAllowanceResponse**](TaxAndAllowanceResponse.md) |  | [optional] 
**paid_tax_and_allowance** | [**TaxAndAllowanceResponse**](TaxAndAllowanceResponse.md) |  | [optional] 
**tax_object** | **str** |  | [optional] 
**sequence_number** | **float** |  | [optional] 
**migrated** | **bool** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | [optional] 

## Example

```python
from catapa import MonthlyTaxReportResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyTaxReportResponse from a JSON string
monthly_tax_report_response_instance = MonthlyTaxReportResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyTaxReportResponse.to_json())

# convert the object into a dict
monthly_tax_report_response_dict = monthly_tax_report_response_instance.to_dict()
# create an instance of MonthlyTaxReportResponse from a dict
monthly_tax_report_response_from_dict = MonthlyTaxReportResponse.from_dict(monthly_tax_report_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



