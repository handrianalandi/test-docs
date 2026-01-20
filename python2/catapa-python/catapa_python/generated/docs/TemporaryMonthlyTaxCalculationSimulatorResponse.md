# TemporaryMonthlyTaxCalculationSimulatorResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**basic_salary** | **float** |  | [optional] 
**tax_allowance** | **float** |  | [optional] 
**bonus** | **float** |  | [optional] 

## Example

```python
from catapa import TemporaryMonthlyTaxCalculationSimulatorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TemporaryMonthlyTaxCalculationSimulatorResponse from a JSON string
temporary_monthly_tax_calculation_simulator_response_instance = TemporaryMonthlyTaxCalculationSimulatorResponse.from_json(json)
# print the JSON string representation of the object
print(TemporaryMonthlyTaxCalculationSimulatorResponse.to_json())

# convert the object into a dict
temporary_monthly_tax_calculation_simulator_response_dict = temporary_monthly_tax_calculation_simulator_response_instance.to_dict()
# create an instance of TemporaryMonthlyTaxCalculationSimulatorResponse from a dict
temporary_monthly_tax_calculation_simulator_response_from_dict = TemporaryMonthlyTaxCalculationSimulatorResponse.from_dict(temporary_monthly_tax_calculation_simulator_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



