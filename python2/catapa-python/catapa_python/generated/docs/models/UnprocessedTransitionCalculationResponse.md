# UnprocessedTransitionCalculationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost_center** | [**NameResponse**](NameResponse.md) |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**employee_salary_template_history** | [**TransitionCalculationEmployeeSalaryTemplateResponse**](TransitionCalculationEmployeeSalaryTemplateResponse.md) |  | [optional] 
**employee_workday** | **float** |  | [optional] 
**employment_type** | [**NameResponse**](NameResponse.md) |  | [optional] 
**end_date** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**job_title** | [**NameResponse**](NameResponse.md) |  | [optional] 
**location** | [**NameResponse**](NameResponse.md) |  | [optional] 
**normal_workday** | **float** |  | [optional] 
**organization** | [**NameResponse**](NameResponse.md) |  | [optional] 
**payment_process** | **bool** |  | [optional] 
**start_date** | **str** |  | [optional] 
**total_thp** | **float** |  | [optional] 

## Example

```python
from catapa import UnprocessedTransitionCalculationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UnprocessedTransitionCalculationResponse from a JSON string
unprocessed_transition_calculation_response_instance = UnprocessedTransitionCalculationResponse.from_json(json)
# print the JSON string representation of the object
print(UnprocessedTransitionCalculationResponse.to_json())

# convert the object into a dict
unprocessed_transition_calculation_response_dict = unprocessed_transition_calculation_response_instance.to_dict()
# create an instance of UnprocessedTransitionCalculationResponse from a dict
unprocessed_transition_calculation_response_from_dict = UnprocessedTransitionCalculationResponse.from_dict(unprocessed_transition_calculation_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



