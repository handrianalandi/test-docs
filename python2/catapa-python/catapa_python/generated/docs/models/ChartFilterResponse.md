# ChartFilterResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**chart_filter_type** | **str** |  | 
**column** | [**AnalyticsColumnResponse**](AnalyticsColumnResponse.md) |  | 
**values** | **List[str]** |  | 
**start_date** | **str** |  | 
**end_date** | **str** |  | 
**time_frame** | **str** |  | 
**time_unit** | **str** |  | 
**duration** | **float** |  | 

## Example

```python
from catapa import ChartFilterResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ChartFilterResponse from a JSON string
chart_filter_response_instance = ChartFilterResponse.from_json(json)
# print the JSON string representation of the object
print(ChartFilterResponse.to_json())

# convert the object into a dict
chart_filter_response_dict = chart_filter_response_instance.to_dict()
# create an instance of ChartFilterResponse from a dict
chart_filter_response_from_dict = ChartFilterResponse.from_dict(chart_filter_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



