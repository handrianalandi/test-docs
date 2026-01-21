# EmployeeFullResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**identification_number** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**join_date** | **date** | YYYY-MM-DD | [optional] 
**start_date** | **date** | YYYY-MM-DD | [optional] 
**active** | **bool** |  | [optional] 
**point_of_hire** | [**PointOfHireResponse**](PointOfHireResponse.md) |  | [optional] 
**photo** | [**PhotoResponse**](PhotoResponse.md) |  | [optional] 
**manager** | [**EmployeeManagerResponse**](EmployeeManagerResponse.md) |  | [optional] 

## Example

```python
from catapa import EmployeeFullResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeFullResponse from a JSON string
employee_full_response_instance = EmployeeFullResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeFullResponse.to_json())

# convert the object into a dict
employee_full_response_dict = employee_full_response_instance.to_dict()
# create an instance of EmployeeFullResponse from a dict
employee_full_response_from_dict = EmployeeFullResponse.from_dict(employee_full_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



