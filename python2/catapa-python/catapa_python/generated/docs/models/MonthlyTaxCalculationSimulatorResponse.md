# MonthlyTaxCalculationSimulatorResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**monthly_gross_income** | **float** |  | 
**percentage** | **float** |  | 
**monthly_tax** | **float** |  | 
**netto_tax** | **float** |  | 
**type** | **str** |  | 

## Example

```python
from catapa import MonthlyTaxCalculationSimulatorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyTaxCalculationSimulatorResponse from a JSON string
monthly_tax_calculation_simulator_response_instance = MonthlyTaxCalculationSimulatorResponse.from_json(json)
# print the JSON string representation of the object
print(MonthlyTaxCalculationSimulatorResponse.to_json())

# convert the object into a dict
monthly_tax_calculation_simulator_response_dict = monthly_tax_calculation_simulator_response_instance.to_dict()
# create an instance of MonthlyTaxCalculationSimulatorResponse from a dict
monthly_tax_calculation_simulator_response_from_dict = MonthlyTaxCalculationSimulatorResponse.from_dict(monthly_tax_calculation_simulator_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



