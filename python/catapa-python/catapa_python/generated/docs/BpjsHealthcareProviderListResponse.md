# BpjsHealthcareProviderListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[BpjsHealthcareProviderListItemResponse]**](BpjsHealthcareProviderListItemResponse.md) |  | [optional] 

## Example

```python
from catapa import BpjsHealthcareProviderListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareProviderListResponse from a JSON string
bpjs_healthcare_provider_list_response_instance = BpjsHealthcareProviderListResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareProviderListResponse.to_json())

# convert the object into a dict
bpjs_healthcare_provider_list_response_dict = bpjs_healthcare_provider_list_response_instance.to_dict()
# create an instance of BpjsHealthcareProviderListResponse from a dict
bpjs_healthcare_provider_list_response_from_dict = BpjsHealthcareProviderListResponse.from_dict(bpjs_healthcare_provider_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



