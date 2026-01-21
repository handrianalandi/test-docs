# AnalyticsChartRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **str** |  | 
**size** | **float** |  | 
**options** | **str** |  | [optional] 
**chart_type** | **str** |  | 
**aggregation_type** | **str** |  | 
**table_id** | **str** |  | 
**yaxis_title** | **str** |  | 
**ycolumn_id** | **str** |  | 
**ychart_table_relations** | [**List[ChartTableRelationRequest]**](ChartTableRelationRequest.md) |  | 
**xaxis_title** | **str** |  | 
**xcolumn_id** | **str** |  | 
**xchart_table_relations** | [**List[ChartTableRelationRequest]**](ChartTableRelationRequest.md) |  | 
**series_axis_title** | **str** |  | [optional] 
**series_column_id** | **str** |  | [optional] 
**series_chart_table_relations** | [**List[ChartTableRelationRequest]**](ChartTableRelationRequest.md) |  | [optional] 
**color_scheme** | [**IdRequest**](IdRequest.md) |  | 
**data_trustee_enabled** | **bool** |  | [optional] 
**chart_filters** | [**List[ChartFilterRequest]**](ChartFilterRequest.md) |  | [optional] 
**max_items** | **float** |  | 
**sort_type** | **str** |  | 

## Example

```python
from catapa import AnalyticsChartRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AnalyticsChartRequest from a JSON string
analytics_chart_request_instance = AnalyticsChartRequest.from_json(json)
# print the JSON string representation of the object
print(AnalyticsChartRequest.to_json())

# convert the object into a dict
analytics_chart_request_dict = analytics_chart_request_instance.to_dict()
# create an instance of AnalyticsChartRequest from a dict
analytics_chart_request_from_dict = AnalyticsChartRequest.from_dict(analytics_chart_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



