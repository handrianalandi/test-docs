# AnnualTaxCalculationSimulatorResultResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basic_salary** | **float** |  | [optional] 
**tax_allowance** | **float** |  | [optional] 
**other_allowance** | **float** |  | [optional] 
**honorarium** | **float** |  | [optional] 
**insurance_premium** | **float** |  | [optional] 
**enjoyment_revenue** | **float** |  | [optional] 
**bonus** | **float** |  | [optional] 
**total_gross_income** | **float** |  | [optional] 
**positional_allowance** | **float** |  | [optional] 
**retirement_contribution** | **float** |  | [optional] 
**total_deduction** | **float** |  | [optional] 
**net_income** | **float** |  | [optional] 
**previous_net_income** | **float** |  | [optional] 
**total_net_income** | **float** |  | [optional] 
**base_income_tax_deduction** | **float** |  | [optional] 
**base_income_tax** | **float** |  | [optional] 
**yearly_original_tax** | **float** |  | [optional] 
**yearly_penalty_tax** | **float** |  | [optional] 
**yearly_tax** | **float** |  | [optional] 
**previous_original_tax** | **float** |  | [optional] 
**previous_penalty_tax** | **float** |  | [optional] 
**previous_tax** | **float** |  | [optional] 
**outstanding_original_tax** | **float** |  | [optional] 
**outstanding_penalty_tax** | **float** |  | [optional] 
**outstanding_tax** | **float** |  | [optional] 

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



