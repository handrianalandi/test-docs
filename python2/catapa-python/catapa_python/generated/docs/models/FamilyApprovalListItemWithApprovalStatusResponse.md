# FamilyApprovalListItemWithApprovalStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**gender** | **str** |  | [optional] 
**date_of_birth** | **str** |  | [optional] 
**identity_card_number** | **str** |  | [optional] 
**family_relation** | [**FamilyMemberRelationResponse**](FamilyMemberRelationResponse.md) |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**place_of_birth** | [**PlaceOfBirthResponse**](PlaceOfBirthResponse.md) |  | [optional] 
**alive** | **bool** |  | [optional] 
**date_of_death** | **str** |  | [optional] 
**marital_status** | **object** |  | [optional] 
**marriage_date** | **str** |  | [optional] 
**religion** | [**ReligionResponse**](ReligionResponse.md) |  | [optional] 
**education_level** | [**EducationLevelResponse**](EducationLevelResponse.md) |  | [optional] 
**job** | **str** |  | [optional] 
**mobile_phone** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**family** | [**FamilyApprovalResponse**](FamilyApprovalResponse.md) |  | [optional] 
**approval_status** | **str** |  | [optional] 
**rejection_reason** | **str** |  | [optional] 

## Example

```python
from catapa import FamilyApprovalListItemWithApprovalStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyApprovalListItemWithApprovalStatusResponse from a JSON string
family_approval_list_item_with_approval_status_response_instance = FamilyApprovalListItemWithApprovalStatusResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyApprovalListItemWithApprovalStatusResponse.to_json())

# convert the object into a dict
family_approval_list_item_with_approval_status_response_dict = family_approval_list_item_with_approval_status_response_instance.to_dict()
# create an instance of FamilyApprovalListItemWithApprovalStatusResponse from a dict
family_approval_list_item_with_approval_status_response_from_dict = FamilyApprovalListItemWithApprovalStatusResponse.from_dict(family_approval_list_item_with_approval_status_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



