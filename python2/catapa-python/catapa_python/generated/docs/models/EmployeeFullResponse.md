# EmployeeFullResponse


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
**manager** | [**EmployeeManagerResponse**](EmployeeManagerResponse.md) |  | 

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



