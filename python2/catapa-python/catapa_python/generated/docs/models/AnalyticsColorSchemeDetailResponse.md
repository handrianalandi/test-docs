# AnalyticsColorSchemeDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**hex_color** | **str** |  | [optional] 
**sequence** | **float** |  | [optional] 

## Example

```python
from catapa import AnalyticsColorSchemeDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnalyticsColorSchemeDetailResponse from a JSON string
analytics_color_scheme_detail_response_instance = AnalyticsColorSchemeDetailResponse.from_json(json)
# print the JSON string representation of the object
print(AnalyticsColorSchemeDetailResponse.to_json())

# convert the object into a dict
analytics_color_scheme_detail_response_dict = analytics_color_scheme_detail_response_instance.to_dict()
# create an instance of AnalyticsColorSchemeDetailResponse from a dict
analytics_color_scheme_detail_response_from_dict = AnalyticsColorSchemeDetailResponse.from_dict(analytics_color_scheme_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



