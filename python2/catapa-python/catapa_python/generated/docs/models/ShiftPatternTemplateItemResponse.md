# ShiftPatternTemplateItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**shift_pattern_template_details** | [**List[ShiftPatternTemplateDetailResponse]**](ShiftPatternTemplateDetailResponse.md) |  | 

## Example

```python
from catapa import ShiftPatternTemplateItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ShiftPatternTemplateItemResponse from a JSON string
shift_pattern_template_item_response_instance = ShiftPatternTemplateItemResponse.from_json(json)
# print the JSON string representation of the object
print(ShiftPatternTemplateItemResponse.to_json())

# convert the object into a dict
shift_pattern_template_item_response_dict = shift_pattern_template_item_response_instance.to_dict()
# create an instance of ShiftPatternTemplateItemResponse from a dict
shift_pattern_template_item_response_from_dict = ShiftPatternTemplateItemResponse.from_dict(shift_pattern_template_item_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



