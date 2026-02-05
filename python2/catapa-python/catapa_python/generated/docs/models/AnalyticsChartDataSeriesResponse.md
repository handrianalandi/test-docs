# AnalyticsChartDataSeriesResponse

## Properties

| Name   | Type          | Description        |
| :----- | :------------ | :----------------- |
| `name` | `str`         | Series name        |
| `data` | `List[float]` | Series data points |

## Usage Examples

### Creating an instance

```python
from catapa import AnalyticsChartDataSeriesResponse

analytics_chart_data_series_response = AnalyticsChartDataSeriesResponse(
    name="''", data=[1.337]
)
```

### Working with JSON

```python
from catapa import AnalyticsChartDataSeriesResponse

# Parse from JSON
json_str = '{"name": "example"}'
analytics_chart_data_series_response = AnalyticsChartDataSeriesResponse.from_json(
    json_str
)

# Convert to JSON
print(analytics_chart_data_series_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnalyticsChartDataSeriesResponse

# Convert to/from dictionary
data_dict = analytics_chart_data_series_response.to_dict()
analytics_chart_data_series_response = AnalyticsChartDataSeriesResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(analytics_chart_data_series_response.name)
# Update properties
analytics_chart_data_series_response.name = "new_value"
```
