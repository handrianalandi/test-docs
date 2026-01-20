# EmployeeSimpleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**identification_number** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from catapa import EmployeeSimpleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeSimpleResponse from a JSON string
employee_simple_response_instance = EmployeeSimpleResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeSimpleResponse.to_json())

# convert the object into a dict
employee_simple_response_dict = employee_simple_response_instance.to_dict()
# create an instance of EmployeeSimpleResponse from a dict
employee_simple_response_from_dict = EmployeeSimpleResponse.from_dict(employee_simple_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



