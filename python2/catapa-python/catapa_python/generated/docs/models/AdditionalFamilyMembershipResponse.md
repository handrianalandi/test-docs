# AdditionalFamilyMembershipResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**family_member_name** | **str** |  | 
**family_member_relation** | [**FamilyMemberRelationResponse**](FamilyMemberRelationResponse.md) |  | 
**first_level_healthcare_facility** | **str** |  | [optional] 
**dental_healthcare_facility** | **str** |  | [optional] 

## Example

```python
from catapa import AdditionalFamilyMembershipResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalFamilyMembershipResponse from a JSON string
additional_family_membership_response_instance = AdditionalFamilyMembershipResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalFamilyMembershipResponse.to_json())

# convert the object into a dict
additional_family_membership_response_dict = additional_family_membership_response_instance.to_dict()
# create an instance of AdditionalFamilyMembershipResponse from a dict
additional_family_membership_response_from_dict = AdditionalFamilyMembershipResponse.from_dict(additional_family_membership_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



