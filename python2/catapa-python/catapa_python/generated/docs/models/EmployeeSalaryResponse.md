# EmployeeSalaryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**salary_item_id** | **str** |  | 
**salary_item_code** | **str** |  | 
**amount** | **float** |  | 
**recurring_configuration** | [**RecurringConfigurationResponse**](RecurringConfigurationResponse.md) |  | 

## Example

```python
from catapa import EmployeeSalaryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeSalaryResponse from a JSON string
employee_salary_response_instance = EmployeeSalaryResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeSalaryResponse.to_json())

# convert the object into a dict
employee_salary_response_dict = employee_salary_response_instance.to_dict()
# create an instance of EmployeeSalaryResponse from a dict
employee_salary_response_from_dict = EmployeeSalaryResponse.from_dict(employee_salary_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



