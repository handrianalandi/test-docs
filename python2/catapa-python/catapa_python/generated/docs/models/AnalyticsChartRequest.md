# AnalyticsChartRequest

## Properties

| Name                           | Type                                                              | Required | Description |
| :----------------------------- | :---------------------------------------------------------------- | :------: | :---------- |
| `title`                        | `str`                                                             |    ✅    |             |
| `size`                         | `float`                                                           |    ✅    |             |
| `options`                      | `str`                                                             |    ❌    |             |
| `chart_type`                   | `str`                                                             |    ✅    |             |
| `aggregation_type`             | `str`                                                             |    ✅    |             |
| `table_id`                     | `str`                                                             |    ✅    |             |
| `yaxis_title`                  | `str`                                                             |    ✅    |             |
| `ycolumn_id`                   | `str`                                                             |    ✅    |             |
| `ychart_table_relations`       | [`List[ChartTableRelationRequest]`](ChartTableRelationRequest.md) |    ✅    |             |
| `xaxis_title`                  | `str`                                                             |    ✅    |             |
| `xcolumn_id`                   | `str`                                                             |    ✅    |             |
| `xchart_table_relations`       | [`List[ChartTableRelationRequest]`](ChartTableRelationRequest.md) |    ✅    |             |
| `series_axis_title`            | `str`                                                             |    ❌    |             |
| `series_column_id`             | `str`                                                             |    ❌    |             |
| `series_chart_table_relations` | [`List[ChartTableRelationRequest]`](ChartTableRelationRequest.md) |    ❌    |             |
| `color_scheme`                 | [`IdRequest`](IdRequest.md)                                       |    ✅    |             |
| `data_trustee_enabled`         | `bool`                                                            |    ❌    |             |
| `chart_filters`                | [`List[ChartFilterRequest]`](ChartFilterRequest.md)               |    ❌    |             |
| `max_items`                    | `float`                                                           |    ✅    |             |
| `sort_type`                    | `str`                                                             |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import AnalyticsChartRequest

analytics_chart_request = AnalyticsChartRequest(
    title="''",
    size=1.337,
    options="''",
    chart_type="''",
    aggregation_type="''",
    table_id="''",
    yaxis_title="''",
    ycolumn_id="''",
    ychart_table_relations=[],  # List[[ChartTableRelationRequest](ChartTableRelationRequest.md)]
    xaxis_title="''",
    xcolumn_id="''",
    xchart_table_relations=[],  # List[[ChartTableRelationRequest](ChartTableRelationRequest.md)]
    series_axis_title="''",
    series_column_id="''",
    series_chart_table_relations=[],  # List[[ChartTableRelationRequest](ChartTableRelationRequest.md)]
    color_scheme=None,  # [IdRequest](IdRequest.md)
    data_trustee_enabled=True,
    chart_filters=[],  # List[[ChartFilterRequest](ChartFilterRequest.md)]
    max_items=1.337,
    sort_type="''",
)
```

### Working with JSON

```python
from catapa import AnalyticsChartRequest

# Parse from JSON
json_str = '{"title": "example"}'
analytics_chart_request = AnalyticsChartRequest.from_json(json_str)

# Convert to JSON
print(analytics_chart_request.to_json())
```

### Working with dictionaries

```python
from catapa import AnalyticsChartRequest

# Convert to/from dictionary
data_dict = analytics_chart_request.to_dict()
analytics_chart_request = AnalyticsChartRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(analytics_chart_request.title)
# Update properties
analytics_chart_request.title = "new_value"
```
