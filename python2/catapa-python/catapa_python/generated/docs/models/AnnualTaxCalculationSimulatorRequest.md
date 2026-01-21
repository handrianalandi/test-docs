# AnnualTaxCalculationSimulatorRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tax_method** | **str** |  | 
**ptkp_category** | **str** |  | 
**tax_object** | **str** |  | 
**start_month** | **int** |  | 
**components** | [**List[CalculationScenarioComponent]**](CalculationScenarioComponent.md) | List of monthly income components. The last component is the tax end month. For example, if startMonth is 1 and there are 6 components, then endMonth is 6. | 
**previous_job_component** | [**CalculationScenarioPreviousJobComponent**](CalculationScenarioPreviousJobComponent.md) |  | [optional] 

## Example

```python
from catapa import AnnualTaxCalculationSimulatorRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AnnualTaxCalculationSimulatorRequest from a JSON string
annual_tax_calculation_simulator_request_instance = AnnualTaxCalculationSimulatorRequest.from_json(json)
# print the JSON string representation of the object
print(AnnualTaxCalculationSimulatorRequest.to_json())

# convert the object into a dict
annual_tax_calculation_simulator_request_dict = annual_tax_calculation_simulator_request_instance.to_dict()
# create an instance of AnnualTaxCalculationSimulatorRequest from a dict
annual_tax_calculation_simulator_request_from_dict = AnnualTaxCalculationSimulatorRequest.from_dict(annual_tax_calculation_simulator_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



