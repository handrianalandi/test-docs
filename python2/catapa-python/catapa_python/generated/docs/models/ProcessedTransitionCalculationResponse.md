# ProcessedTransitionCalculationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost_center** | [**NameResponse**](NameResponse.md) |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**employee_salary_template_history** | [**TransitionCalculationEmployeeSalaryTemplateResponse**](TransitionCalculationEmployeeSalaryTemplateResponse.md) |  | 
**employee_workday** | **float** |  | 
**employment_type** | [**NameResponse**](NameResponse.md) |  | 
**end_date** | **str** |  | 
**id** | **str** |  | 
**job_title** | [**NameResponse**](NameResponse.md) |  | 
**location** | [**NameResponse**](NameResponse.md) |  | 
**messages** | [**List[UnprocessableMessage]**](UnprocessableMessage.md) |  | 
**normal_workday** | **float** |  | 
**organization** | [**NameResponse**](NameResponse.md) |  | 
**payment_process** | **bool** |  | 
**start_date** | **str** |  | 
**total_thp** | **float** |  | 

## Example

```python
from catapa import ProcessedTransitionCalculationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessedTransitionCalculationResponse from a JSON string
processed_transition_calculation_response_instance = ProcessedTransitionCalculationResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessedTransitionCalculationResponse.to_json())

# convert the object into a dict
processed_transition_calculation_response_dict = processed_transition_calculation_response_instance.to_dict()
# create an instance of ProcessedTransitionCalculationResponse from a dict
processed_transition_calculation_response_from_dict = ProcessedTransitionCalculationResponse.from_dict(processed_transition_calculation_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



