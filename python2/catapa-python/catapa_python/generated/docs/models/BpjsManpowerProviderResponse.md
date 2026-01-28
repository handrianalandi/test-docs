# BpjsManpowerProviderResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**address** | **str** |  | 
**registration_number** | **str** |  | 
**report_signatory_name** | **str** |  | 
**report_signatory_job_title** | **str** |  | 

## Example

```python
from catapa import BpjsManpowerProviderResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerProviderResponse from a JSON string
bpjs_manpower_provider_response_instance = BpjsManpowerProviderResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerProviderResponse.to_json())

# convert the object into a dict
bpjs_manpower_provider_response_dict = bpjs_manpower_provider_response_instance.to_dict()
# create an instance of BpjsManpowerProviderResponse from a dict
bpjs_manpower_provider_response_from_dict = BpjsManpowerProviderResponse.from_dict(bpjs_manpower_provider_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



