# SalaryTemplateDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**salary_item** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 

## Example

```python
from catapa import SalaryTemplateDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryTemplateDetailResponse from a JSON string
salary_template_detail_response_instance = SalaryTemplateDetailResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryTemplateDetailResponse.to_json())

# convert the object into a dict
salary_template_detail_response_dict = salary_template_detail_response_instance.to_dict()
# create an instance of SalaryTemplateDetailResponse from a dict
salary_template_detail_response_from_dict = SalaryTemplateDetailResponse.from_dict(salary_template_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



