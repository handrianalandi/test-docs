# EmployeeVariableValidationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**value** | **float** |  | [optional] 
**options** | **List[str]** |  | [optional] 

## Example

```python
from catapa import EmployeeVariableValidationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariableValidationRequest from a JSON string
employee_variable_validation_request_instance = EmployeeVariableValidationRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariableValidationRequest.to_json())

# convert the object into a dict
employee_variable_validation_request_dict = employee_variable_validation_request_instance.to_dict()
# create an instance of EmployeeVariableValidationRequest from a dict
employee_variable_validation_request_from_dict = EmployeeVariableValidationRequest.from_dict(employee_variable_validation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



