# EmployeeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**username** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**join_date** | **date** | YYYY-MM-DD | 
**start_date** | **date** | YYYY-MM-DD | 
**contract_start** | **date** | YYYY-MM-DD | [optional] 
**contract_end** | **date** | YYYY-MM-DD | [optional] 
**date_of_birth** | **date** | YYYY-MM-DD | 
**employment_status_number** | **str** |  | [optional] 
**employment_type_id** | **str** |  | 
**foreign_labour** | **bool** |  | [optional] [default to False]
**gender** | **str** |  | 
**identification_number** | **str** |  | [optional] 
**identity_card_expired_date** | **date** | YYYY-MM-DD | [optional] 
**identity_card_number** | **str** |  | 
**job_level_id** | **str** |  | 
**job_title_id** | **str** |  | 
**location_id** | **str** |  | 
**marital_status** | **str** |  | 
**organization_id** | **str** |  | 
**place_of_birth_id** | **str** | City | [optional] 
**point_of_hire_id** | **str** | Location | 
**religion_id** | **str** |  | 
**citizenship_id** | **str** | Country | 
**position_id** | **str** |  | [optional] 
**sub_location_id** | **str** |  | [optional] 
**operational_group_id** | **str** |  | [optional] 
**work_email** | **str** |  | [optional] 
**cost_center_id** | **str** |  | [optional] 

## Example

```python
from catapa import EmployeeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeRequest from a JSON string
employee_request_instance = EmployeeRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeRequest.to_json())

# convert the object into a dict
employee_request_dict = employee_request_instance.to_dict()
# create an instance of EmployeeRequest from a dict
employee_request_from_dict = EmployeeRequest.from_dict(employee_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



