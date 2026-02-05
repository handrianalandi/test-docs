# AnalyticsColorSchemeDetailResponse

## Properties

| Name        | Type    | Description |
| :---------- | :------ | :---------- |
| `id`        | `str`   |             |
| `hex_color` | `str`   |             |
| `sequence`  | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import AnalyticsColorSchemeDetailResponse

analytics_color_scheme_detail_response = AnalyticsColorSchemeDetailResponse(
    id="''", hex_color="''", sequence=1.337
)
```

### Working with JSON

```python
from catapa import AnalyticsColorSchemeDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
analytics_color_scheme_detail_response = AnalyticsColorSchemeDetailResponse.from_json(
    json_str
)

# Convert to JSON
print(analytics_color_scheme_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnalyticsColorSchemeDetailResponse

# Convert to/from dictionary
data_dict = analytics_color_scheme_detail_response.to_dict()
analytics_color_scheme_detail_response = AnalyticsColorSchemeDetailResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(analytics_color_scheme_detail_response.id)
# Update properties
analytics_color_scheme_detail_response.id = "new_value"
```
