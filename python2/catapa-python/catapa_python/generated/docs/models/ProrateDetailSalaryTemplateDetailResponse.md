# ProrateDetailSalaryTemplateDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**salary_item** | [**ProrateDetailSalaryTemplateDetailSalaryItemResponse**](ProrateDetailSalaryTemplateDetailSalaryItemResponse.md) |  | [optional] 
**salary_item_type** | **str** |  | [optional] 

## Example

```python
from catapa import ProrateDetailSalaryTemplateDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProrateDetailSalaryTemplateDetailResponse from a JSON string
prorate_detail_salary_template_detail_response_instance = ProrateDetailSalaryTemplateDetailResponse.from_json(json)
# print the JSON string representation of the object
print(ProrateDetailSalaryTemplateDetailResponse.to_json())

# convert the object into a dict
prorate_detail_salary_template_detail_response_dict = prorate_detail_salary_template_detail_response_instance.to_dict()
# create an instance of ProrateDetailSalaryTemplateDetailResponse from a dict
prorate_detail_salary_template_detail_response_from_dict = ProrateDetailSalaryTemplateDetailResponse.from_dict(prorate_detail_salary_template_detail_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



