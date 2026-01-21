# ShiftPatternTemplateDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shift** | [**ShiftResponse**](ShiftResponse.md) |  | [optional] 
**sequence** | **float** |  | [optional] 

## Example

```python
from catapa import ShiftPatternTemplateDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ShiftPatternTemplateDetailResponse from a JSON string
shift_pattern_template_detail_response_instance = ShiftPatternTemplateDetailResponse.from_json(json)
# print the JSON string representation of the object
print(ShiftPatternTemplateDetailResponse.to_json())

# convert the object into a dict
shift_pattern_template_detail_response_dict = shift_pattern_template_detail_response_instance.to_dict()
# create an instance of ShiftPatternTemplateDetailResponse from a dict
shift_pattern_template_detail_response_from_dict = ShiftPatternTemplateDetailResponse.from_dict(shift_pattern_template_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



