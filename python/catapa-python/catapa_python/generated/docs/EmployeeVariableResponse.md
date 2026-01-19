# EmployeeVariableResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employee_id** | **str** |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**name** | **str** |  | [optional] 
**var_date** | **date** |  | [optional] 
**value** | **str** |  | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 

## Example

```python
from catapa import EmployeeVariableResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariableResponse from a JSON string
employee_variable_response_instance = EmployeeVariableResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariableResponse.to_json())

# convert the object into a dict
employee_variable_response_dict = employee_variable_response_instance.to_dict()
# create an instance of EmployeeVariableResponse from a dict
employee_variable_response_from_dict = EmployeeVariableResponse.from_dict(employee_variable_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



