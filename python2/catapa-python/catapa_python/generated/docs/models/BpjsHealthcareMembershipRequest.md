# BpjsHealthcareMembershipRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**additional_family_memberships** | [**List[BpjsHealthcareMembershipAdditionalFamilyMembership]**](BpjsHealthcareMembershipAdditionalFamilyMembership.md) |  | 
**bpjs_healthcare_provider_id** | **str** |  | 
**bpjs_healthcare_template_id** | **str** |  | 
**bpjs_healthcare_treatment_class_id** | **str** |  | [optional] 
**dental_healthcare_facility** | **str** |  | [optional] 
**first_level_healthcare_facility** | **str** |  | [optional] 
**membership_number** | **str** |  | 
**start_date** | **str** |  | 
**effective_date** | **str** | Effective Date of the BPJS Healthcare Membership default to start date | [optional] 

## Example

```python
from catapa import BpjsHealthcareMembershipRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareMembershipRequest from a JSON string
bpjs_healthcare_membership_request_instance = BpjsHealthcareMembershipRequest.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareMembershipRequest.to_json())

# convert the object into a dict
bpjs_healthcare_membership_request_dict = bpjs_healthcare_membership_request_instance.to_dict()
# create an instance of BpjsHealthcareMembershipRequest from a dict
bpjs_healthcare_membership_request_from_dict = BpjsHealthcareMembershipRequest.from_dict(bpjs_healthcare_membership_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



