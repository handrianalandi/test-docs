# FamilyApprovalListItemWithApprovalStatusResponse


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
**family** | [**FamilyApprovalResponse**](FamilyApprovalResponse.md) |  | 
**approval_status** | **str** |  | 
**rejection_reason** | **str** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



