# BpjsManpowerTemplatePageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[BpjsManpowerTemplateResponse]**](BpjsManpowerTemplateResponse.md) |  | [optional] 

## Example

```python
from catapa import BpjsManpowerTemplatePageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerTemplatePageResponse from a JSON string
bpjs_manpower_template_page_response_instance = BpjsManpowerTemplatePageResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerTemplatePageResponse.to_json())

# convert the object into a dict
bpjs_manpower_template_page_response_dict = bpjs_manpower_template_page_response_instance.to_dict()
# create an instance of BpjsManpowerTemplatePageResponse from a dict
bpjs_manpower_template_page_response_from_dict = BpjsManpowerTemplatePageResponse.from_dict(bpjs_manpower_template_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



