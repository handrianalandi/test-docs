# SalaryTemplateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**salary_template_details** | [**List[SalaryTemplateDetailResponse]**](SalaryTemplateDetailResponse.md) |  | 

## Example

```python
from catapa import SalaryTemplateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SalaryTemplateResponse from a JSON string
salary_template_response_instance = SalaryTemplateResponse.from_json(json)
# print the JSON string representation of the object
print(SalaryTemplateResponse.to_json())

# convert the object into a dict
salary_template_response_dict = salary_template_response_instance.to_dict()
# create an instance of SalaryTemplateResponse from a dict
salary_template_response_from_dict = SalaryTemplateResponse.from_dict(salary_template_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



