# ChartFilterResponse

## Properties

| Name                | Type                                                    | Description |
| :------------------ | :------------------------------------------------------ | :---------- |
| `id`                | `str`                                                   |             |
| `chart_filter_type` | `str`                                                   |             |
| `column`            | [`AnalyticsColumnResponse`](AnalyticsColumnResponse.md) |             |
| `values`            | `List[str]`                                             |             |
| `start_date`        | `str`                                                   |             |
| `end_date`          | `str`                                                   |             |
| `time_frame`        | `str`                                                   |             |
| `time_unit`         | `str`                                                   |             |
| `duration`          | `float`                                                 |             |

## Usage Examples

### Creating an instance

```python
from catapa import ChartFilterResponse

chart_filter_response = ChartFilterResponse(
    id="''",
    chart_filter_type="''",
    column=None,  # [AnalyticsColumnResponse](AnalyticsColumnResponse.md)
    values=[""],
    start_date="''",
    end_date="''",
    time_frame="''",
    time_unit="''",
    duration=1.337,
)
```

### Working with JSON

```python
from catapa import ChartFilterResponse

# Parse from JSON
json_str = '{"id": "example"}'
chart_filter_response = ChartFilterResponse.from_json(json_str)

# Convert to JSON
print(chart_filter_response.to_json())
```

### Working with dictionaries

```python
from catapa import ChartFilterResponse

# Convert to/from dictionary
data_dict = chart_filter_response.to_dict()
chart_filter_response = ChartFilterResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(chart_filter_response.id)
# Update properties
chart_filter_response.id = "new_value"
```
