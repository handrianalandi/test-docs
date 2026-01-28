# MonthlyTaxReportResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**year** | **float** |  | 
**month** | **float** |  | 
**pph21_method** | **str** |  | 
**membership_number** | **str** |  | 
**membership_address** | **str** |  | 
**total_monthly_gross_income** | **float** |  | 
**total_tax_and_allowance** | [**TaxAndAllowanceResponse**](TaxAndAllowanceResponse.md) |  | 
**paid_tax_and_allowance** | [**TaxAndAllowanceResponse**](TaxAndAllowanceResponse.md) |  | 
**tax_object** | **str** |  | 
**sequence_number** | **float** |  | 
**migrated** | **bool** |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | 

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



