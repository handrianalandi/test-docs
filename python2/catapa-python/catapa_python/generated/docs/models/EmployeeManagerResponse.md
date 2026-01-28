# EmployeeManagerResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**identification_number** | **str** |  | 
**name** | **str** |  | 
**join_date** | **date** | YYYY-MM-DD | 
**start_date** | **date** | YYYY-MM-DD | 
**active** | **bool** |  | 
**point_of_hire** | [**PointOfHireResponse**](PointOfHireResponse.md) |  | 
**photo** | [**PhotoResponse**](PhotoResponse.md) |  | 

## Example

```python
from catapa import EmployeeManagerResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeManagerResponse from a JSON string
employee_manager_response_instance = EmployeeManagerResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeManagerResponse.to_json())

# convert the object into a dict
employee_manager_response_dict = employee_manager_response_instance.to_dict()
# create an instance of EmployeeManagerResponse from a dict
employee_manager_response_from_dict = EmployeeManagerResponse.from_dict(employee_manager_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



