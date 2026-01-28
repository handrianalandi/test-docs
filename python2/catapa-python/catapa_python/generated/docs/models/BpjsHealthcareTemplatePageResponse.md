# BpjsHealthcareTemplatePageResponse


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
**content** | [**List[BpjsHealthcareTemplateListItemResponse]**](BpjsHealthcareTemplateListItemResponse.md) |  | 

## Example

```python
from catapa import BpjsHealthcareTemplatePageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareTemplatePageResponse from a JSON string
bpjs_healthcare_template_page_response_instance = BpjsHealthcareTemplatePageResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareTemplatePageResponse.to_json())

# convert the object into a dict
bpjs_healthcare_template_page_response_dict = bpjs_healthcare_template_page_response_instance.to_dict()
# create an instance of BpjsHealthcareTemplatePageResponse from a dict
bpjs_healthcare_template_page_response_from_dict = BpjsHealthcareTemplatePageResponse.from_dict(bpjs_healthcare_template_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



