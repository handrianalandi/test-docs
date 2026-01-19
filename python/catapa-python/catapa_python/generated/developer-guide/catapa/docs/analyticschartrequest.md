# AnalyticsChartRequest

## Properties

| Name                                | Type                                                                  | Description | Notes       |
| ----------------------------------- | --------------------------------------------------------------------- | ----------- | ----------- |
| **title**                           | **str**                                                               |             |             |
| **size**                            | **float**                                                             |             |             |
| **options**                         | **str**                                                               |             | \[optional] |
| **chart\_type**                     | **str**                                                               |             |             |
| **aggregation\_type**               | **str**                                                               |             |             |
| **table\_id**                       | **str**                                                               |             |             |
| **yaxis\_title**                    | **str**                                                               |             |             |
| **ycolumn\_id**                     | **str**                                                               |             |             |
| **ychart\_table\_relations**        | [**List\[ChartTableRelationRequest\]**](charttablerelationrequest.md) |             |             |
| **xaxis\_title**                    | **str**                                                               |             |             |
| **xcolumn\_id**                     | **str**                                                               |             |             |
| **xchart\_table\_relations**        | [**List\[ChartTableRelationRequest\]**](charttablerelationrequest.md) |             |             |
| **series\_axis\_title**             | **str**                                                               |             | \[optional] |
| **series\_column\_id**              | **str**                                                               |             | \[optional] |
| **series\_chart\_table\_relations** | [**List\[ChartTableRelationRequest\]**](charttablerelationrequest.md) |             | \[optional] |
| **color\_scheme**                   | [**IdRequest**](idrequest.md)                                         |             |             |
| **data\_trustee\_enabled**          | **bool**                                                              |             | \[optional] |
| **chart\_filters**                  | [**List\[ChartFilterRequest\]**](chartfilterrequest.md)               |             | \[optional] |
| **max\_items**                      | **float**                                                             |             |             |
| **sort\_type**                      | **str**                                                               |             |             |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
