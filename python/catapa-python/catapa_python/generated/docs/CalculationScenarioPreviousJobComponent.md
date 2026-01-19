# CalculationScenarioPreviousJobComponent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**net_income** | **float** |  | [optional] [default to 0]
**tax** | **float** |  | [optional] [default to 0]

## Example

```python
from catapa import CalculationScenarioPreviousJobComponent

# TODO update the JSON string below
json = "{}"
# create an instance of CalculationScenarioPreviousJobComponent from a JSON string
calculation_scenario_previous_job_component_instance = CalculationScenarioPreviousJobComponent.from_json(json)
# print the JSON string representation of the object
print(CalculationScenarioPreviousJobComponent.to_json())

# convert the object into a dict
calculation_scenario_previous_job_component_dict = calculation_scenario_previous_job_component_instance.to_dict()
# create an instance of CalculationScenarioPreviousJobComponent from a dict
calculation_scenario_previous_job_component_from_dict = CalculationScenarioPreviousJobComponent.from_dict(calculation_scenario_previous_job_component_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



