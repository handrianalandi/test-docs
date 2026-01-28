# AnnualTaxCalculationSimulatorResultResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basic_salary** | **float** |  | 
**tax_allowance** | **float** |  | 
**other_allowance** | **float** |  | 
**honorarium** | **float** |  | 
**insurance_premium** | **float** |  | 
**enjoyment_revenue** | **float** |  | 
**bonus** | **float** |  | 
**total_gross_income** | **float** |  | 
**positional_allowance** | **float** |  | 
**retirement_contribution** | **float** |  | 
**total_deduction** | **float** |  | 
**net_income** | **float** |  | 
**previous_net_income** | **float** |  | 
**total_net_income** | **float** |  | 
**base_income_tax_deduction** | **float** |  | 
**base_income_tax** | **float** |  | 
**yearly_original_tax** | **float** |  | 
**yearly_penalty_tax** | **float** |  | 
**yearly_tax** | **float** |  | 
**previous_original_tax** | **float** |  | 
**previous_penalty_tax** | **float** |  | 
**previous_tax** | **float** |  | 
**outstanding_original_tax** | **float** |  | 
**outstanding_penalty_tax** | **float** |  | 
**outstanding_tax** | **float** |  | 

## Example

```python
from catapa import AnnualTaxCalculationSimulatorResultResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnnualTaxCalculationSimulatorResultResponse from a JSON string
annual_tax_calculation_simulator_result_response_instance = AnnualTaxCalculationSimulatorResultResponse.from_json(json)
# print the JSON string representation of the object
print(AnnualTaxCalculationSimulatorResultResponse.to_json())

# convert the object into a dict
annual_tax_calculation_simulator_result_response_dict = annual_tax_calculation_simulator_result_response_instance.to_dict()
# create an instance of AnnualTaxCalculationSimulatorResultResponse from a dict
annual_tax_calculation_simulator_result_response_from_dict = AnnualTaxCalculationSimulatorResultResponse.from_dict(annual_tax_calculation_simulator_result_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



