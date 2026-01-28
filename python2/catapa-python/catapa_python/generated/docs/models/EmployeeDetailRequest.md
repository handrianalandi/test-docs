# EmployeeDetailRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blood_type** | **str** |  | 
**citizenship_id** | **str** | Country ID | 
**date_of_birth** | **date** | YYYY-MM-DD | 
**foreign_labour** | **bool** |  | [default to False]
**gender** | **str** |  | 
**marital_status** | **str** |  | 
**name** | **str** |  | 
**place_of_birth_id** | **str** | City ID | 
**religion_id** | **str** |  | 

## Example

```python
from catapa import EmployeeDetailRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeDetailRequest from a JSON string
employee_detail_request_instance = EmployeeDetailRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeDetailRequest.to_json())

# convert the object into a dict
employee_detail_request_dict = employee_detail_request_instance.to_dict()
# create an instance of EmployeeDetailRequest from a dict
employee_detail_request_from_dict = EmployeeDetailRequest.from_dict(employee_detail_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



