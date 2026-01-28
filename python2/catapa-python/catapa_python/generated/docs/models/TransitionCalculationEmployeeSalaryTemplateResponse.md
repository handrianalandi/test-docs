# TransitionCalculationEmployeeSalaryTemplateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**effective_date** | **str** |  | 
**salary_decree_number** | **str** |  | 
**salary_template** | [**NameResponse**](NameResponse.md) |  | 

## Example

```python
from catapa import TransitionCalculationEmployeeSalaryTemplateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TransitionCalculationEmployeeSalaryTemplateResponse from a JSON string
transition_calculation_employee_salary_template_response_instance = TransitionCalculationEmployeeSalaryTemplateResponse.from_json(json)
# print the JSON string representation of the object
print(TransitionCalculationEmployeeSalaryTemplateResponse.to_json())

# convert the object into a dict
transition_calculation_employee_salary_template_response_dict = transition_calculation_employee_salary_template_response_instance.to_dict()
# create an instance of TransitionCalculationEmployeeSalaryTemplateResponse from a dict
transition_calculation_employee_salary_template_response_from_dict = TransitionCalculationEmployeeSalaryTemplateResponse.from_dict(transition_calculation_employee_salary_template_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



