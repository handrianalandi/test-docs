# AnalyticsColorSchemeResponse

## Properties

| Name                   | Type                                                                                | Description |
| :--------------------- | :---------------------------------------------------------------------------------- | :---------- |
| `id`                   | `str`                                                                               |             |
| `color_scheme_details` | [`List[AnalyticsColorSchemeDetailResponse]`](AnalyticsColorSchemeDetailResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import AnalyticsColorSchemeResponse

analytics_color_scheme_response = AnalyticsColorSchemeResponse(
    id="''",
    color_scheme_details=[],  # List[[AnalyticsColorSchemeDetailResponse](AnalyticsColorSchemeDetailResponse.md)]
)
```

### Working with JSON

```python
from catapa import AnalyticsColorSchemeResponse

# Parse from JSON
json_str = '{"id": "example"}'
analytics_color_scheme_response = AnalyticsColorSchemeResponse.from_json(json_str)

# Convert to JSON
print(analytics_color_scheme_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnalyticsColorSchemeResponse

# Convert to/from dictionary
data_dict = analytics_color_scheme_response.to_dict()
analytics_color_scheme_response = AnalyticsColorSchemeResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(analytics_color_scheme_response.id)
# Update properties
analytics_color_scheme_response.id = "new_value"
```
