# AnalyticsChartResponse

## Properties

| Name                           | Type                                                                | Description |
| :----------------------------- | :------------------------------------------------------------------ | :---------- |
| `id`                           | `str`                                                               |             |
| `title`                        | `str`                                                               |             |
| `size`                         | `float`                                                             |             |
| `options`                      | `str`                                                               |             |
| `chart_type`                   | `str`                                                               |             |
| `aggregation_type`             | `str`                                                               |             |
| `table_id`                     | `str`                                                               |             |
| `yaxis_title`                  | `str`                                                               |             |
| `ycolumn_id`                   | `str`                                                               |             |
| `ychart_table_relations`       | [`List[ChartTableRelationResponse]`](ChartTableRelationResponse.md) |             |
| `xaxis_title`                  | `str`                                                               |             |
| `xcolumn_id`                   | `str`                                                               |             |
| `xchart_table_relations`       | [`List[ChartTableRelationResponse]`](ChartTableRelationResponse.md) |             |
| `series_axis_title`            | `str`                                                               |             |
| `series_column_id`             | `str`                                                               |             |
| `series_chart_table_relations` | [`List[ChartTableRelationResponse]`](ChartTableRelationResponse.md) |             |
| `color_scheme`                 | [`AnalyticsColorSchemeResponse`](AnalyticsColorSchemeResponse.md)   |             |
| `data_trustee_enabled`         | `bool`                                                              |             |
| `chart_filters`                | [`List[ChartFilterResponse]`](ChartFilterResponse.md)               |             |
| `max_items`                    | `float`                                                             |             |
| `sort_type`                    | `str`                                                               |             |

## Usage Examples

### Creating an instance

```python
from catapa import AnalyticsChartResponse

analytics_chart_response = AnalyticsChartResponse(
    id="''",
    title="''",
    size=1.337,
    options="''",
    chart_type="''",
    aggregation_type="''",
    table_id="''",
    yaxis_title="''",
    ycolumn_id="''",
    ychart_table_relations=[],  # List[[ChartTableRelationResponse](ChartTableRelationResponse.md)]
    xaxis_title="''",
    xcolumn_id="''",
    xchart_table_relations=[],  # List[[ChartTableRelationResponse](ChartTableRelationResponse.md)]
    series_axis_title="''",
    series_column_id="''",
    series_chart_table_relations=[],  # List[[ChartTableRelationResponse](ChartTableRelationResponse.md)]
    color_scheme=None,  # [AnalyticsColorSchemeResponse](AnalyticsColorSchemeResponse.md)
    data_trustee_enabled=True,
    chart_filters=[],  # List[[ChartFilterResponse](ChartFilterResponse.md)]
    max_items=1.337,
    sort_type="''",
)
```

### Working with JSON

```python
from catapa import AnalyticsChartResponse

# Parse from JSON
json_str = '{"id": "example"}'
analytics_chart_response = AnalyticsChartResponse.from_json(json_str)

# Convert to JSON
print(analytics_chart_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnalyticsChartResponse

# Convert to/from dictionary
data_dict = analytics_chart_response.to_dict()
analytics_chart_response = AnalyticsChartResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(analytics_chart_response.id)
# Update properties
analytics_chart_response.id = "new_value"
```
