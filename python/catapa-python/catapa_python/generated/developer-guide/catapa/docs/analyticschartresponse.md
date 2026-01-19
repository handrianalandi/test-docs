# AnalyticsChartResponse

## Properties

| Name                                | Type                                                                    | Description | Notes       |
| ----------------------------------- | ----------------------------------------------------------------------- | ----------- | ----------- |
| **id**                              | **str**                                                                 |             | \[optional] |
| **title**                           | **str**                                                                 |             | \[optional] |
| **size**                            | **float**                                                               |             | \[optional] |
| **options**                         | **str**                                                                 |             | \[optional] |
| **chart\_type**                     | **str**                                                                 |             | \[optional] |
| **aggregation\_type**               | **str**                                                                 |             | \[optional] |
| **table\_id**                       | **str**                                                                 |             | \[optional] |
| **yaxis\_title**                    | **str**                                                                 |             | \[optional] |
| **ycolumn\_id**                     | **str**                                                                 |             | \[optional] |
| **ychart\_table\_relations**        | [**List\[ChartTableRelationResponse\]**](charttablerelationresponse.md) |             | \[optional] |
| **xaxis\_title**                    | **str**                                                                 |             | \[optional] |
| **xcolumn\_id**                     | **str**                                                                 |             | \[optional] |
| **xchart\_table\_relations**        | [**List\[ChartTableRelationResponse\]**](charttablerelationresponse.md) |             | \[optional] |
| **series\_axis\_title**             | **str**                                                                 |             | \[optional] |
| **series\_column\_id**              | **str**                                                                 |             | \[optional] |
| **series\_chart\_table\_relations** | [**List\[ChartTableRelationResponse\]**](charttablerelationresponse.md) |             | \[optional] |
| **color\_scheme**                   | [**AnalyticsColorSchemeResponse**](analyticscolorschemeresponse.md)     |             | \[optional] |
| **data\_trustee\_enabled**          | **bool**                                                                |             | \[optional] |
| **chart\_filters**                  | [**List\[ChartFilterResponse\]**](chartfilterresponse.md)               |             | \[optional] |
| **max\_items**                      | **float**                                                               |             | \[optional] |
| **sort\_type**                      | **str**                                                                 |             | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
