# EmployeeVariableValidationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**value** | **float** |  | [optional] 
**options** | **List[str]** |  | [optional] 

## Example

```python
from catapa import EmployeeVariableValidationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariableValidationResponse from a JSON string
employee_variable_validation_response_instance = EmployeeVariableValidationResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariableValidationResponse.to_json())

# convert the object into a dict
employee_variable_validation_response_dict = employee_variable_validation_response_instance.to_dict()
# create an instance of EmployeeVariableValidationResponse from a dict
employee_variable_validation_response_from_dict = EmployeeVariableValidationResponse.from_dict(employee_variable_validation_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



