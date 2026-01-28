# ShiftPatternTemplatePageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[ShiftPatternTemplateListItemResponse]**](ShiftPatternTemplateListItemResponse.md) |  | 

## Example

```python
from catapa import ShiftPatternTemplatePageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ShiftPatternTemplatePageResponse from a JSON string
shift_pattern_template_page_response_instance = ShiftPatternTemplatePageResponse.from_json(json)
# print the JSON string representation of the object
print(ShiftPatternTemplatePageResponse.to_json())

# convert the object into a dict
shift_pattern_template_page_response_dict = shift_pattern_template_page_response_instance.to_dict()
# create an instance of ShiftPatternTemplatePageResponse from a dict
shift_pattern_template_page_response_from_dict = ShiftPatternTemplatePageResponse.from_dict(shift_pattern_template_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



