# EmployeeCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**marital_status** | **str** |  | 
**religion** | [**ReligionResponse**](ReligionResponse.md) |  | 
**foreign_labour** | **bool** |  | 
**citizenship** | **object** |  | 
**identification_number** | **str** |  | 
**name** | **str** |  | 
**date_of_birth** | **str** |  | 
**place_of_birth** | [**PlaceOfBirthResponse**](PlaceOfBirthResponse.md) |  | 
**join_date** | **str** |  | 
**start_date** | **str** |  | 
**gender** | **str** |  | 
**point_of_hire** | [**PointOfHireResponse**](PointOfHireResponse.md) |  | 
**employment_status_number** | **str** |  | 
**organization** | [**OrganizationResponse**](OrganizationResponse.md) |  | 
**job_title** | [**JobTitleResponse**](JobTitleResponse.md) |  | 
**job_level** | [**JobLevelResponse**](JobLevelResponse.md) |  | 
**location** | [**LocationResponse**](LocationResponse.md) |  | 
**employment_type** | [**EmploymentTypeResponse**](EmploymentTypeResponse.md) |  | 
**contract_start** | **str** |  | 
**contract_end** | **str** |  | 
**identity_card_number** | **str** |  | 
**identity_card_expired_date** | **date** |  | 
**email** | **str** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



