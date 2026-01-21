# EmployeeSalaryTemplateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**proportional** | **bool** |  | [optional] 
**retroactive** | **bool** |  | [optional] 
**salary_decree_number** | **str** |  | [optional] 
**salary_template_id** | **str** |  | [optional] 
**employee_salaries** | [**List[EmployeeSalaryResponse]**](EmployeeSalaryResponse.md) |  | [optional] 

## Example

```python
from catapa import EmployeeSalaryTemplateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeSalaryTemplateResponse from a JSON string
employee_salary_template_response_instance = EmployeeSalaryTemplateResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeSalaryTemplateResponse.to_json())

# convert the object into a dict
employee_salary_template_response_dict = employee_salary_template_response_instance.to_dict()
# create an instance of EmployeeSalaryTemplateResponse from a dict
employee_salary_template_response_from_dict = EmployeeSalaryTemplateResponse.from_dict(employee_salary_template_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



