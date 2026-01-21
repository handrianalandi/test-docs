# EmployeeSalaryTemplateListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[EmployeeSalaryTemplateResponse]**](EmployeeSalaryTemplateResponse.md) |  | [optional] 

## Example

```python
from catapa import EmployeeSalaryTemplateListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeSalaryTemplateListResponse from a JSON string
employee_salary_template_list_response_instance = EmployeeSalaryTemplateListResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeSalaryTemplateListResponse.to_json())

# convert the object into a dict
employee_salary_template_list_response_dict = employee_salary_template_list_response_instance.to_dict()
# create an instance of EmployeeSalaryTemplateListResponse from a dict
employee_salary_template_list_response_from_dict = EmployeeSalaryTemplateListResponse.from_dict(employee_salary_template_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



