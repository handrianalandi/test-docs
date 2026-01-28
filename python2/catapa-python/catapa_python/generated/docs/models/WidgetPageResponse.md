# WidgetPageResponse


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
**content** | [**List[WidgetResponse]**](WidgetResponse.md) | List of widgets | 

## Example

```python
from catapa import WidgetPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WidgetPageResponse from a JSON string
widget_page_response_instance = WidgetPageResponse.from_json(json)
# print the JSON string representation of the object
print(WidgetPageResponse.to_json())

# convert the object into a dict
widget_page_response_dict = widget_page_response_instance.to_dict()
# create an instance of WidgetPageResponse from a dict
widget_page_response_from_dict = WidgetPageResponse.from_dict(widget_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



