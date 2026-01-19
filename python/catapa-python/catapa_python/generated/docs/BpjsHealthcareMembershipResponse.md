# BpjsHealthcareMembershipResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the BPJS Healthcare Membership | [optional] 
**employee_id** | **str** |  | [optional] 
**membership_number** | **str** |  | [optional] 
**start_date** | **str** |  | [optional] 
**end_date** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**first_level_healthcare_facility** | **str** |  | [optional] 
**dental_healthcare_facility** | **str** |  | [optional] 
**bpjs_healthcare_provider** | [**BpjsHealthcareProviderListItemResponse**](BpjsHealthcareProviderListItemResponse.md) |  | [optional] 
**bpjs_healthcare_template** | [**BpjsHealthcareTemplateListItemResponse**](BpjsHealthcareTemplateListItemResponse.md) |  | [optional] 
**bpjs_healthcare_treatment_class** | [**BpjsHealthcareTreatmentClassResponse**](BpjsHealthcareTreatmentClassResponse.md) |  | [optional] 
**additional_family_memberships** | [**List[AdditionalFamilyMembershipResponse]**](AdditionalFamilyMembershipResponse.md) |  | [optional] 

## Example

```python
from catapa import BpjsHealthcareMembershipResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareMembershipResponse from a JSON string
bpjs_healthcare_membership_response_instance = BpjsHealthcareMembershipResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareMembershipResponse.to_json())

# convert the object into a dict
bpjs_healthcare_membership_response_dict = bpjs_healthcare_membership_response_instance.to_dict()
# create an instance of BpjsHealthcareMembershipResponse from a dict
bpjs_healthcare_membership_response_from_dict = BpjsHealthcareMembershipResponse.from_dict(bpjs_healthcare_membership_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



