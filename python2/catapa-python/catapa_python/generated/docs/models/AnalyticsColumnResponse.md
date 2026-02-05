# AnalyticsColumnResponse

## Properties

| Name           | Type    | Description |
| :------------- | :------ | :---------- |
| `id`           | `str`   |             |
| `created_by`   | `str`   |             |
| `created_date` | `float` |             |
| `updated_by`   | `str`   |             |
| `updated_date` | `float` |             |
| `name`         | `str`   |             |
| `type`         | `str`   |             |

## Usage Examples

### Creating an instance

```python
from catapa import AnalyticsColumnResponse

analytics_column_response = AnalyticsColumnResponse(
    id="''",
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
    name="''",
    type="''",
)
```

### Working with JSON

```python
from catapa import AnalyticsColumnResponse

# Parse from JSON
json_str = '{"id": "example"}'
analytics_column_response = AnalyticsColumnResponse.from_json(json_str)

# Convert to JSON
print(analytics_column_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnalyticsColumnResponse

# Convert to/from dictionary
data_dict = analytics_column_response.to_dict()
analytics_column_response = AnalyticsColumnResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(analytics_column_response.id)
# Update properties
analytics_column_response.id = "new_value"
```
