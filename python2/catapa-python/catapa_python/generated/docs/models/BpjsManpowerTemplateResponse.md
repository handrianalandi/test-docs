# BpjsManpowerTemplateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**salary_type** | **str** |  | 
**link_to_payroll** | **bool** |  | 

## Example

```python
from catapa import BpjsManpowerTemplateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerTemplateResponse from a JSON string
bpjs_manpower_template_response_instance = BpjsManpowerTemplateResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerTemplateResponse.to_json())

# convert the object into a dict
bpjs_manpower_template_response_dict = bpjs_manpower_template_response_instance.to_dict()
# create an instance of BpjsManpowerTemplateResponse from a dict
bpjs_manpower_template_response_from_dict = BpjsManpowerTemplateResponse.from_dict(bpjs_manpower_template_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



