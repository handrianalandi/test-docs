# BpjsHealthcareMembershipResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the BPJS Healthcare Membership | 
**employee_id** | **str** |  | 
**membership_number** | **str** |  | 
**start_date** | **str** |  | 
**end_date** | **str** |  | 
**effective_date** | **str** |  | 
**first_level_healthcare_facility** | **str** |  | 
**dental_healthcare_facility** | **str** |  | 
**bpjs_healthcare_provider** | [**BpjsHealthcareProviderListItemResponse**](BpjsHealthcareProviderListItemResponse.md) |  | 
**bpjs_healthcare_template** | [**BpjsHealthcareTemplateListItemResponse**](BpjsHealthcareTemplateListItemResponse.md) |  | 
**bpjs_healthcare_treatment_class** | [**BpjsHealthcareTreatmentClassResponse**](BpjsHealthcareTreatmentClassResponse.md) |  | 
**additional_family_memberships** | [**List[AdditionalFamilyMembershipResponse]**](AdditionalFamilyMembershipResponse.md) |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



