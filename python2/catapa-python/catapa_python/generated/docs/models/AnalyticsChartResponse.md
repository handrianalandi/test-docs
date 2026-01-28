# AnalyticsChartResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**title** | **str** |  | 
**size** | **float** |  | 
**options** | **str** |  | 
**chart_type** | **str** |  | 
**aggregation_type** | **str** |  | 
**table_id** | **str** |  | 
**yaxis_title** | **str** |  | 
**ycolumn_id** | **str** |  | 
**ychart_table_relations** | [**List[ChartTableRelationResponse]**](ChartTableRelationResponse.md) |  | 
**xaxis_title** | **str** |  | 
**xcolumn_id** | **str** |  | 
**xchart_table_relations** | [**List[ChartTableRelationResponse]**](ChartTableRelationResponse.md) |  | 
**series_axis_title** | **str** |  | 
**series_column_id** | **str** |  | 
**series_chart_table_relations** | [**List[ChartTableRelationResponse]**](ChartTableRelationResponse.md) |  | 
**color_scheme** | [**AnalyticsColorSchemeResponse**](AnalyticsColorSchemeResponse.md) |  | 
**data_trustee_enabled** | **bool** |  | 
**chart_filters** | [**List[ChartFilterResponse]**](ChartFilterResponse.md) |  | 
**max_items** | **float** |  | 
**sort_type** | **str** |  | 

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



