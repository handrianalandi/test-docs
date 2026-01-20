# AnalyticsChartDataSeriesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Series name | [optional] 
**data** | **List[float]** | Series data points | [optional] 

## Example

```python
from catapa import AnalyticsChartDataSeriesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnalyticsChartDataSeriesResponse from a JSON string
analytics_chart_data_series_response_instance = AnalyticsChartDataSeriesResponse.from_json(json)
# print the JSON string representation of the object
print(AnalyticsChartDataSeriesResponse.to_json())

# convert the object into a dict
analytics_chart_data_series_response_dict = analytics_chart_data_series_response_instance.to_dict()
# create an instance of AnalyticsChartDataSeriesResponse from a dict
analytics_chart_data_series_response_from_dict = AnalyticsChartDataSeriesResponse.from_dict(analytics_chart_data_series_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



