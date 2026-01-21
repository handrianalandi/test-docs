# BpjsManpowerMembershipRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bpjs_manpower_provider_id** | **str** |  | 
**bpjs_manpower_template_id** | **str** |  | 
**membership_number** | **str** |  | [optional] 
**start_date** | **str** |  | 
**effective_date** | **str** | Effective Date of the BPJS Manpower Membership default value is start date | [optional] 

## Example

```python
from catapa import BpjsManpowerMembershipRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerMembershipRequest from a JSON string
bpjs_manpower_membership_request_instance = BpjsManpowerMembershipRequest.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerMembershipRequest.to_json())

# convert the object into a dict
bpjs_manpower_membership_request_dict = bpjs_manpower_membership_request_instance.to_dict()
# create an instance of BpjsManpowerMembershipRequest from a dict
bpjs_manpower_membership_request_from_dict = BpjsManpowerMembershipRequest.from_dict(bpjs_manpower_membership_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



