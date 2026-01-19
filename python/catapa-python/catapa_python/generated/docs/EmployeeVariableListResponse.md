# EmployeeVariableListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[EmployeeVariableResponse]**](EmployeeVariableResponse.md) |  | [optional] 

## Example

```python
from catapa import EmployeeVariableListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeVariableListResponse from a JSON string
employee_variable_list_response_instance = EmployeeVariableListResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeVariableListResponse.to_json())

# convert the object into a dict
employee_variable_list_response_dict = employee_variable_list_response_instance.to_dict()
# create an instance of EmployeeVariableListResponse from a dict
employee_variable_list_response_from_dict = EmployeeVariableListResponse.from_dict(employee_variable_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



