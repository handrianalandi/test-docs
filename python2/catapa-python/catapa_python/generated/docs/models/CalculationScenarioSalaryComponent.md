# CalculationScenarioSalaryComponent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
from catapa import CalculationScenarioSalaryComponent

# TODO update the JSON string below
json = "{}"
# create an instance of CalculationScenarioSalaryComponent from a JSON string
calculation_scenario_salary_component_instance = CalculationScenarioSalaryComponent.from_json(json)
# print the JSON string representation of the object
print(CalculationScenarioSalaryComponent.to_json())

# convert the object into a dict
calculation_scenario_salary_component_dict = calculation_scenario_salary_component_instance.to_dict()
# create an instance of CalculationScenarioSalaryComponent from a dict
calculation_scenario_salary_component_from_dict = CalculationScenarioSalaryComponent.from_dict(calculation_scenario_salary_component_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



