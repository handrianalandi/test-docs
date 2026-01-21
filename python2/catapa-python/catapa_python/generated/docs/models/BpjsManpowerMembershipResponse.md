# BpjsManpowerMembershipResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the BPJS Manpower Membership | [optional] 
**membership_number** | **str** |  | [optional] 
**start_date** | **str** |  | [optional] 
**end_date** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**pension_end** | **str** |  | [optional] 
**bpjs_manpower_provider** | [**BpjsManpowerProviderResponse**](BpjsManpowerProviderResponse.md) |  | [optional] 
**bpjs_manpower_template** | [**BpjsManpowerTemplateResponse**](BpjsManpowerTemplateResponse.md) |  | [optional] 

## Example

```python
from catapa import BpjsManpowerMembershipResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerMembershipResponse from a JSON string
bpjs_manpower_membership_response_instance = BpjsManpowerMembershipResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerMembershipResponse.to_json())

# convert the object into a dict
bpjs_manpower_membership_response_dict = bpjs_manpower_membership_response_instance.to_dict()
# create an instance of BpjsManpowerMembershipResponse from a dict
bpjs_manpower_membership_response_from_dict = BpjsManpowerMembershipResponse.from_dict(bpjs_manpower_membership_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



