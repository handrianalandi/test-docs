# AnalyticsColorSchemeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**color_scheme_details** | [**List[AnalyticsColorSchemeDetailResponse]**](AnalyticsColorSchemeDetailResponse.md) |  | 

## Example

```python
from catapa import AnalyticsColorSchemeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnalyticsColorSchemeResponse from a JSON string
analytics_color_scheme_response_instance = AnalyticsColorSchemeResponse.from_json(json)
# print the JSON string representation of the object
print(AnalyticsColorSchemeResponse.to_json())

# convert the object into a dict
analytics_color_scheme_response_dict = analytics_color_scheme_response_instance.to_dict()
# create an instance of AnalyticsColorSchemeResponse from a dict
analytics_color_scheme_response_from_dict = AnalyticsColorSchemeResponse.from_dict(analytics_color_scheme_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



