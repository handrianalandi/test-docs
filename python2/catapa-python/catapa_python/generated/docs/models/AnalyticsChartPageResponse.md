# AnalyticsChartPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[AnalyticsChartResponse]**](AnalyticsChartResponse.md) |  | 

## Example

```python
from catapa import AnalyticsChartPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnalyticsChartPageResponse from a JSON string
analytics_chart_page_response_instance = AnalyticsChartPageResponse.from_json(json)
# print the JSON string representation of the object
print(AnalyticsChartPageResponse.to_json())

# convert the object into a dict
analytics_chart_page_response_dict = analytics_chart_page_response_instance.to_dict()
# create an instance of AnalyticsChartPageResponse from a dict
analytics_chart_page_response_from_dict = AnalyticsChartPageResponse.from_dict(analytics_chart_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



