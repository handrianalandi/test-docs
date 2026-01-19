# BpjsHealthcareProviderListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**address** | **str** |  | [optional] 
**registration_number** | **str** |  | [optional] 
**report_signatory_name** | **str** |  | [optional] 
**report_signatory_job_title** | **str** |  | [optional] 

## Example

```python
from catapa import BpjsHealthcareProviderListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareProviderListItemResponse from a JSON string
bpjs_healthcare_provider_list_item_response_instance = BpjsHealthcareProviderListItemResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareProviderListItemResponse.to_json())

# convert the object into a dict
bpjs_healthcare_provider_list_item_response_dict = bpjs_healthcare_provider_list_item_response_instance.to_dict()
# create an instance of BpjsHealthcareProviderListItemResponse from a dict
bpjs_healthcare_provider_list_item_response_from_dict = BpjsHealthcareProviderListItemResponse.from_dict(bpjs_healthcare_provider_list_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



