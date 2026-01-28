# WidgetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier for the widget | 
**position** | **float** | Position of the widget in the layout | 
**widget_type** | **str** | Type of the widget | 
**content** | [**WidgetContentResponse**](WidgetContentResponse.md) |  | 

## Example

```python
from catapa import WidgetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WidgetResponse from a JSON string
widget_response_instance = WidgetResponse.from_json(json)
# print the JSON string representation of the object
print(WidgetResponse.to_json())

# convert the object into a dict
widget_response_dict = widget_response_instance.to_dict()
# create an instance of WidgetResponse from a dict
widget_response_from_dict = WidgetResponse.from_dict(widget_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



