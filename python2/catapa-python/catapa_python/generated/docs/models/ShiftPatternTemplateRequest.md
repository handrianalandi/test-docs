# ShiftPatternTemplateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**shift_pattern_template_details** | [**List[ShiftPatternTemplateDetailItemRequest]**](ShiftPatternTemplateDetailItemRequest.md) |  | 

## Example

```python
from catapa import ShiftPatternTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ShiftPatternTemplateRequest from a JSON string
shift_pattern_template_request_instance = ShiftPatternTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(ShiftPatternTemplateRequest.to_json())

# convert the object into a dict
shift_pattern_template_request_dict = shift_pattern_template_request_instance.to_dict()
# create an instance of ShiftPatternTemplateRequest from a dict
shift_pattern_template_request_from_dict = ShiftPatternTemplateRequest.from_dict(shift_pattern_template_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



