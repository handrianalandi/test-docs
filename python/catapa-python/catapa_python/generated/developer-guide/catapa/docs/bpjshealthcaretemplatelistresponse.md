# BpjsHealthcareTemplateListResponse

## Properties

| Name        | Type                                                                                            | Description | Notes       |
| ----------- | ----------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **content** | [**List\[BpjsHealthcareTemplateListItemResponse\]**](bpjshealthcaretemplatelistitemresponse.md) |             | \[optional] |

## Example

```python
from catapa import BpjsHealthcareTemplateListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareTemplateListResponse from a JSON string
bpjs_healthcare_template_list_response_instance = BpjsHealthcareTemplateListResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareTemplateListResponse.to_json())

# convert the object into a dict
bpjs_healthcare_template_list_response_dict = bpjs_healthcare_template_list_response_instance.to_dict()
# create an instance of BpjsHealthcareTemplateListResponse from a dict
bpjs_healthcare_template_list_response_from_dict = BpjsHealthcareTemplateListResponse.from_dict(bpjs_healthcare_template_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
