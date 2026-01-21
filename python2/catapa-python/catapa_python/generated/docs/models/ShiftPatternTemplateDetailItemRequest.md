# ShiftPatternTemplateDetailItemRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shift** | [**ShiftPatternTemplateDetailItemRequestShift**](ShiftPatternTemplateDetailItemRequestShift.md) |  | 
**sequence** | **float** |  | 

## Example

```python
from catapa import ShiftPatternTemplateDetailItemRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ShiftPatternTemplateDetailItemRequest from a JSON string
shift_pattern_template_detail_item_request_instance = ShiftPatternTemplateDetailItemRequest.from_json(json)
# print the JSON string representation of the object
print(ShiftPatternTemplateDetailItemRequest.to_json())

# convert the object into a dict
shift_pattern_template_detail_item_request_dict = shift_pattern_template_detail_item_request_instance.to_dict()
# create an instance of ShiftPatternTemplateDetailItemRequest from a dict
shift_pattern_template_detail_item_request_from_dict = ShiftPatternTemplateDetailItemRequest.from_dict(shift_pattern_template_detail_item_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



