# AnalyticsChartResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**size** | **float** |  | [optional] 
**options** | **str** |  | [optional] 
**chart_type** | **str** |  | [optional] 
**aggregation_type** | **str** |  | [optional] 
**table_id** | **str** |  | [optional] 
**yaxis_title** | **str** |  | [optional] 
**ycolumn_id** | **str** |  | [optional] 
**ychart_table_relations** | [**List[ChartTableRelationResponse]**](ChartTableRelationResponse.md) |  | [optional] 
**xaxis_title** | **str** |  | [optional] 
**xcolumn_id** | **str** |  | [optional] 
**xchart_table_relations** | [**List[ChartTableRelationResponse]**](ChartTableRelationResponse.md) |  | [optional] 
**series_axis_title** | **str** |  | [optional] 
**series_column_id** | **str** |  | [optional] 
**series_chart_table_relations** | [**List[ChartTableRelationResponse]**](ChartTableRelationResponse.md) |  | [optional] 
**color_scheme** | [**AnalyticsColorSchemeResponse**](AnalyticsColorSchemeResponse.md) |  | [optional] 
**data_trustee_enabled** | **bool** |  | [optional] 
**chart_filters** | [**List[ChartFilterResponse]**](ChartFilterResponse.md) |  | [optional] 
**max_items** | **float** |  | [optional] 
**sort_type** | **str** |  | [optional] 

## Example

```python
from catapa import AnalyticsChartResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnalyticsChartResponse from a JSON string
analytics_chart_response_instance = AnalyticsChartResponse.from_json(json)
# print the JSON string representation of the object
print(AnalyticsChartResponse.to_json())

# convert the object into a dict
analytics_chart_response_dict = analytics_chart_response_instance.to_dict()
# create an instance of AnalyticsChartResponse from a dict
analytics_chart_response_from_dict = AnalyticsChartResponse.from_dict(analytics_chart_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



