# AnalyticsChartDataResponse

## Properties

| Name                     | Type                                                                                | Description                                             | Notes       |
| ------------------------ | ----------------------------------------------------------------------------------- | ------------------------------------------------------- | ----------- |
| **title**                | **str**                                                                             | Title of the analytics chart                            | \[optional] |
| **size**                 | **float**                                                                           | Size of the chart                                       | \[optional] |
| **options**              | **str**                                                                             | Additional chart options                                | \[optional] |
| **chart\_type**          | **str**                                                                             | Type of the chart (e.g., BAR\_VERTICAL\_GROUPED\_CHART) | \[optional] |
| **yaxis\_title**         | **str**                                                                             | Title for Y-axis                                        | \[optional] |
| **ycolumn\_type**        | **str**                                                                             | Data type of Y-axis column                              | \[optional] |
| **xaxis\_title**         | **str**                                                                             | Title for X-axis                                        | \[optional] |
| **xcolumn\_type**        | **str**                                                                             | Data type of X-axis column                              | \[optional] |
| **series\_axis\_title**  | **str**                                                                             | Title for series axis                                   | \[optional] |
| **series\_column\_type** | **str**                                                                             | Data type of series column                              | \[optional] |
| **categories**           | **List\[str]**                                                                      | Chart categories                                        | \[optional] |
| **series**               | [**List\[AnalyticsChartDataSeriesResponse\]**](analyticschartdataseriesresponse.md) | Chart series data                                       | \[optional] |
| **color\_scheme**        | [**AnalyticsColorSchemeResponse**](analyticscolorschemeresponse.md)                 |                                                         | \[optional] |
| **chart\_filters**       | [**List\[ChartFilterResponse\]**](chartfilterresponse.md)                           | Chart filter configurations                             | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
