# AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**monthly_gross_income** | **float** |  | 
**percentage** | **float** |  | 
**monthly_tax** | **float** |  | 
**netto_tax** | **float** |  | 
**type** | **str** |  | 
**basic_salary** | **float** |  | [default to 0]
**tax_allowance** | **float** |  | [default to 0]
**other_allowance** | **float** |  | [default to 0]
**honorarium** | **float** |  | [default to 0]
**insurance_premium** | **float** |  | [default to 0]
**enjoyment_revenue** | **float** |  | [default to 0]
**bonus** | **float** |  | [default to 0]
**monthly_retirement_contribution** | **float** |  | [default to 0]
**monthly_religion_allowance** | **float** |  | [default to 0]

## Example

```python
from catapa import AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse from a JSON string
annual_tax_calculation_simulator_monthly_tax_reports_response_instance = AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse.from_json(json)
# print the JSON string representation of the object
print(AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse.to_json())

# convert the object into a dict
annual_tax_calculation_simulator_monthly_tax_reports_response_dict = annual_tax_calculation_simulator_monthly_tax_reports_response_instance.to_dict()
# create an instance of AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse from a dict
annual_tax_calculation_simulator_monthly_tax_reports_response_from_dict = AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse.from_dict(annual_tax_calculation_simulator_monthly_tax_reports_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



