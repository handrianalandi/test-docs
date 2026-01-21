# CalculationScenarioComponent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_component** | [**CalculationScenarioSalaryComponent**](CalculationScenarioSalaryComponent.md) |  | [optional] 
**second_component** | [**CalculationScenarioSalaryComponent**](CalculationScenarioSalaryComponent.md) |  | [optional] 

## Example

```python
from catapa import CalculationScenarioComponent

# TODO update the JSON string below
json = "{}"
# create an instance of CalculationScenarioComponent from a JSON string
calculation_scenario_component_instance = CalculationScenarioComponent.from_json(json)
# print the JSON string representation of the object
print(CalculationScenarioComponent.to_json())

# convert the object into a dict
calculation_scenario_component_dict = calculation_scenario_component_instance.to_dict()
# create an instance of CalculationScenarioComponent from a dict
calculation_scenario_component_from_dict = CalculationScenarioComponent.from_dict(calculation_scenario_component_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



