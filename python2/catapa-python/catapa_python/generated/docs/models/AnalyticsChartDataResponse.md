# AnalyticsChartDataResponse

## Properties

| Name                 | Type                                                                            | Description                                          |
| :------------------- | :------------------------------------------------------------------------------ | :--------------------------------------------------- |
| `title`              | `str`                                                                           | Title of the analytics chart                         |
| `size`               | `float`                                                                         | Size of the chart                                    |
| `options`            | `str`                                                                           | Additional chart options                             |
| `chart_type`         | `str`                                                                           | Type of the chart (e.g., BAR_VERTICAL_GROUPED_CHART) |
| `yaxis_title`        | `str`                                                                           | Title for Y-axis                                     |
| `ycolumn_type`       | `str`                                                                           | Data type of Y-axis column                           |
| `xaxis_title`        | `str`                                                                           | Title for X-axis                                     |
| `xcolumn_type`       | `str`                                                                           | Data type of X-axis column                           |
| `series_axis_title`  | `str`                                                                           | Title for series axis                                |
| `series_column_type` | `str`                                                                           | Data type of series column                           |
| `categories`         | `List[str]`                                                                     | Chart categories                                     |
| `series`             | [`List[AnalyticsChartDataSeriesResponse]`](AnalyticsChartDataSeriesResponse.md) | Chart series data                                    |
| `color_scheme`       | [`AnalyticsColorSchemeResponse`](AnalyticsColorSchemeResponse.md)               |                                                      |
| `chart_filters`      | [`List[ChartFilterResponse]`](ChartFilterResponse.md)                           | Chart filter configurations                          |

## Usage Examples

### Creating an instance

```python
from catapa import AnalyticsChartDataResponse

analytics_chart_data_response = AnalyticsChartDataResponse(
    title="''",
    size=1.337,
    options="''",
    chart_type="''",
    yaxis_title="''",
    ycolumn_type="''",
    xaxis_title="''",
    xcolumn_type="''",
    series_axis_title="''",
    series_column_type="''",
    categories=[""],
    series=[],  # List[[AnalyticsChartDataSeriesResponse](AnalyticsChartDataSeriesResponse.md)]
    color_scheme=None,  # [AnalyticsColorSchemeResponse](AnalyticsColorSchemeResponse.md)
    chart_filters=[],  # List[[ChartFilterResponse](ChartFilterResponse.md)]
)
```

### Working with JSON

```python
from catapa import AnalyticsChartDataResponse

# Parse from JSON
json_str = '{"title": "example"}'
analytics_chart_data_response = AnalyticsChartDataResponse.from_json(json_str)

# Convert to JSON
print(analytics_chart_data_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnalyticsChartDataResponse

# Convert to/from dictionary
data_dict = analytics_chart_data_response.to_dict()
analytics_chart_data_response = AnalyticsChartDataResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(analytics_chart_data_response.title)
# Update properties
analytics_chart_data_response.title = "new_value"
```
