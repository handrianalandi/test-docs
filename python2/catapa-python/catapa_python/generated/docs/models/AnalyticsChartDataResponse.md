# AnalyticsChartDataResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** | Title of the analytics chart | [optional] 
**size** | **float** | Size of the chart | [optional] 
**options** | **str** | Additional chart options | [optional] 
**chart_type** | **str** | Type of the chart (e.g., BAR_VERTICAL_GROUPED_CHART) | [optional] 
**yaxis_title** | **str** | Title for Y-axis | [optional] 
**ycolumn_type** | **str** | Data type of Y-axis column | [optional] 
**xaxis_title** | **str** | Title for X-axis | [optional] 
**xcolumn_type** | **str** | Data type of X-axis column | [optional] 
**series_axis_title** | **str** | Title for series axis | [optional] 
**series_column_type** | **str** | Data type of series column | [optional] 
**categories** | **List[str]** | Chart categories | [optional] 
**series** | [**List[AnalyticsChartDataSeriesResponse]**](AnalyticsChartDataSeriesResponse.md) | Chart series data | [optional] 
**color_scheme** | [**AnalyticsColorSchemeResponse**](AnalyticsColorSchemeResponse.md) |  | [optional] 
**chart_filters** | [**List[ChartFilterResponse]**](ChartFilterResponse.md) | Chart filter configurations | [optional] 

## Example

```python
from catapa import AnalyticsChartDataResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnalyticsChartDataResponse from a JSON string
analytics_chart_data_response_instance = AnalyticsChartDataResponse.from_json(json)
# print the JSON string representation of the object
print(AnalyticsChartDataResponse.to_json())

# convert the object into a dict
analytics_chart_data_response_dict = analytics_chart_data_response_instance.to_dict()
# create an instance of AnalyticsChartDataResponse from a dict
analytics_chart_data_response_from_dict = AnalyticsChartDataResponse.from_dict(analytics_chart_data_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



