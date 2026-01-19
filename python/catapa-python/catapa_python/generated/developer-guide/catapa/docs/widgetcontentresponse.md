# WidgetContentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Content identifier | [optional] 
**title** | **str** | Content title | [optional] 
**size** | **float** | Content size | [optional] 

## Example

```python
from catapa import WidgetContentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WidgetContentResponse from a JSON string
widget_content_response_instance = WidgetContentResponse.from_json(json)
# print the JSON string representation of the object
print(WidgetContentResponse.to_json())

# convert the object into a dict
widget_content_response_dict = widget_content_response_instance.to_dict()
# create an instance of WidgetContentResponse from a dict
widget_content_response_from_dict = WidgetContentResponse.from_dict(widget_content_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



