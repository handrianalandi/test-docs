# FamilyApprovalResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**gender** | **str** |  | 
**date_of_birth** | **str** |  | 
**identity_card_number** | **str** |  | 
**family_relation** | [**FamilyMemberRelationResponse**](FamilyMemberRelationResponse.md) |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**place_of_birth** | [**PlaceOfBirthResponse**](PlaceOfBirthResponse.md) |  | 
**alive** | **bool** |  | 
**date_of_death** | **str** |  | 
**marital_status** | **object** |  | 
**marriage_date** | **str** |  | 
**religion** | [**ReligionResponse**](ReligionResponse.md) |  | 
**education_level** | [**EducationLevelResponse**](EducationLevelResponse.md) |  | 
**job** | **str** |  | 
**mobile_phone** | **str** |  | 
**description** | **str** |  | 

## Example

```python
from catapa import FamilyApprovalResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyApprovalResponse from a JSON string
family_approval_response_instance = FamilyApprovalResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyApprovalResponse.to_json())

# convert the object into a dict
family_approval_response_dict = family_approval_response_instance.to_dict()
# create an instance of FamilyApprovalResponse from a dict
family_approval_response_from_dict = FamilyApprovalResponse.from_dict(family_approval_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



