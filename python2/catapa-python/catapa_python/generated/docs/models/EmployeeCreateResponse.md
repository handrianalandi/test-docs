# EmployeeCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**marital_status** | **str** |  | [optional] 
**religion** | [**ReligionResponse**](ReligionResponse.md) |  | [optional] 
**foreign_labour** | **bool** |  | [optional] 
**citizenship** | **object** |  | [optional] 
**identification_number** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**date_of_birth** | **str** |  | [optional] 
**place_of_birth** | [**PlaceOfBirthResponse**](PlaceOfBirthResponse.md) |  | [optional] 
**join_date** | **str** |  | [optional] 
**start_date** | **str** |  | [optional] 
**gender** | **str** |  | [optional] 
**point_of_hire** | [**PointOfHireResponse**](PointOfHireResponse.md) |  | [optional] 
**employment_status_number** | **str** |  | [optional] 
**organization** | [**OrganizationResponse**](OrganizationResponse.md) |  | [optional] 
**job_title** | [**JobTitleResponse**](JobTitleResponse.md) |  | [optional] 
**job_level** | [**JobLevelResponse**](JobLevelResponse.md) |  | [optional] 
**location** | [**LocationResponse**](LocationResponse.md) |  | [optional] 
**employment_type** | [**EmploymentTypeResponse**](EmploymentTypeResponse.md) |  | [optional] 
**contract_start** | **str** |  | [optional] 
**contract_end** | **str** |  | [optional] 
**identity_card_number** | **str** |  | [optional] 
**identity_card_expired_date** | **date** |  | [optional] 
**email** | **str** |  | [optional] 

## Example

```python
from catapa import EmployeeCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeCreateResponse from a JSON string
employee_create_response_instance = EmployeeCreateResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeCreateResponse.to_json())

# convert the object into a dict
employee_create_response_dict = employee_create_response_instance.to_dict()
# create an instance of EmployeeCreateResponse from a dict
employee_create_response_from_dict = EmployeeCreateResponse.from_dict(employee_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



