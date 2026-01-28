# BpjsManpowerProviderPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[BpjsManpowerProviderResponse]**](BpjsManpowerProviderResponse.md) |  | 

## Example

```python
from catapa import BpjsManpowerProviderPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerProviderPageResponse from a JSON string
bpjs_manpower_provider_page_response_instance = BpjsManpowerProviderPageResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerProviderPageResponse.to_json())

# convert the object into a dict
bpjs_manpower_provider_page_response_dict = bpjs_manpower_provider_page_response_instance.to_dict()
# create an instance of BpjsManpowerProviderPageResponse from a dict
bpjs_manpower_provider_page_response_from_dict = BpjsManpowerProviderPageResponse.from_dict(bpjs_manpower_provider_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



