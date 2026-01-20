# TransitionCalculationSalaryTemplateDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**salary_item** | [**SalaryItemResponseWithCategory**](SalaryItemResponseWithCategory.md) |  | [optional] 
**salary_item_type** | **str** |  | [optional] 
**thp** | **bool** |  | [optional] 

## Example

```python
from catapa import TransitionCalculationSalaryTemplateDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TransitionCalculationSalaryTemplateDetailResponse from a JSON string
transition_calculation_salary_template_detail_response_instance = TransitionCalculationSalaryTemplateDetailResponse.from_json(json)
# print the JSON string representation of the object
print(TransitionCalculationSalaryTemplateDetailResponse.to_json())

# convert the object into a dict
transition_calculation_salary_template_detail_response_dict = transition_calculation_salary_template_detail_response_instance.to_dict()
# create an instance of TransitionCalculationSalaryTemplateDetailResponse from a dict
transition_calculation_salary_template_detail_response_from_dict = TransitionCalculationSalaryTemplateDetailResponse.from_dict(transition_calculation_salary_template_detail_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



