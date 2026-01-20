# ChartFilterResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**chart_filter_type** | **str** |  | [optional] 
**column** | [**AnalyticsColumnResponse**](AnalyticsColumnResponse.md) |  | [optional] 
**values** | **List[str]** |  | [optional] 
**start_date** | **str** |  | [optional] 
**end_date** | **str** |  | [optional] 
**time_frame** | **str** |  | [optional] 
**time_unit** | **str** |  | [optional] 
**duration** | **float** |  | [optional] 

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
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



