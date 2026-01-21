# EmployeeVariableRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_id** | **str** |  | 
**name** | **str** |  | 
**var_date** | **date** |  | 
**value** | **str** |  | 

## Example

```python
from catapa import EmployeeVariableRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariableRequest from a JSON string
employee_variable_request_instance = EmployeeVariableRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariableRequest.to_json())

# convert the object into a dict
employee_variable_request_dict = employee_variable_request_instance.to_dict()
# create an instance of EmployeeVariableRequest from a dict
employee_variable_request_from_dict = EmployeeVariableRequest.from_dict(employee_variable_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



