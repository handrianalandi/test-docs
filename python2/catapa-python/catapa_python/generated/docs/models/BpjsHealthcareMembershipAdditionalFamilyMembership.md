# BpjsHealthcareMembershipAdditionalFamilyMembership


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dental_healthcare_facility** | **str** |  | [optional] 
**family_member_name** | **str** |  | 
**family_member_relation_id** | **str** |  | 
**first_level_healthcare_facility** | **str** |  | [optional] 
**id** | **str** |  | 

## Example

```python
from catapa import BpjsHealthcareMembershipAdditionalFamilyMembership

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareMembershipAdditionalFamilyMembership from a JSON string
bpjs_healthcare_membership_additional_family_membership_instance = BpjsHealthcareMembershipAdditionalFamilyMembership.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareMembershipAdditionalFamilyMembership.to_json())

# convert the object into a dict
bpjs_healthcare_membership_additional_family_membership_dict = bpjs_healthcare_membership_additional_family_membership_instance.to_dict()
# create an instance of BpjsHealthcareMembershipAdditionalFamilyMembership from a dict
bpjs_healthcare_membership_additional_family_membership_from_dict = BpjsHealthcareMembershipAdditionalFamilyMembership.from_dict(bpjs_healthcare_membership_additional_family_membership_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



