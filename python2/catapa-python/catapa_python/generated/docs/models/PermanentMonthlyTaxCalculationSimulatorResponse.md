# PermanentMonthlyTaxCalculationSimulatorResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
from catapa import PermanentMonthlyTaxCalculationSimulatorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PermanentMonthlyTaxCalculationSimulatorResponse from a JSON string
permanent_monthly_tax_calculation_simulator_response_instance = PermanentMonthlyTaxCalculationSimulatorResponse.from_json(json)
# print the JSON string representation of the object
print(PermanentMonthlyTaxCalculationSimulatorResponse.to_json())

# convert the object into a dict
permanent_monthly_tax_calculation_simulator_response_dict = permanent_monthly_tax_calculation_simulator_response_instance.to_dict()
# create an instance of PermanentMonthlyTaxCalculationSimulatorResponse from a dict
permanent_monthly_tax_calculation_simulator_response_from_dict = PermanentMonthlyTaxCalculationSimulatorResponse.from_dict(permanent_monthly_tax_calculation_simulator_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



