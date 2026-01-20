# EmployeeHiringDataRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_number** | **str** |  | 
**join_date** | **date** |  | 
**name** | **str** |  | 
**start_date** | **date** |  | 
**point_of_hire_id** | **str** |  | [optional] 

## Example

```python
from catapa import EmployeeHiringDataRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeHiringDataRequest from a JSON string
employee_hiring_data_request_instance = EmployeeHiringDataRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeHiringDataRequest.to_json())

# convert the object into a dict
employee_hiring_data_request_dict = employee_hiring_data_request_instance.to_dict()
# create an instance of EmployeeHiringDataRequest from a dict
employee_hiring_data_request_from_dict = EmployeeHiringDataRequest.from_dict(employee_hiring_data_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



