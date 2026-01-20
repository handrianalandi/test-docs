# EmployeeHiringDataSimpleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**identification_number** | **str** |  | [optional] 
**join_date** | **date** |  | [optional] 
**name** | **str** |  | [optional] 
**start_date** | **date** |  | [optional] 

## Example

```python
from catapa import EmployeeHiringDataSimpleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeHiringDataSimpleResponse from a JSON string
employee_hiring_data_simple_response_instance = EmployeeHiringDataSimpleResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeHiringDataSimpleResponse.to_json())

# convert the object into a dict
employee_hiring_data_simple_response_dict = employee_hiring_data_simple_response_instance.to_dict()
# create an instance of EmployeeHiringDataSimpleResponse from a dict
employee_hiring_data_simple_response_from_dict = EmployeeHiringDataSimpleResponse.from_dict(employee_hiring_data_simple_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



