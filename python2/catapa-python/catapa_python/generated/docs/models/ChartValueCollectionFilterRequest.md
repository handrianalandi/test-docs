# ChartValueCollectionFilterRequest

## Properties

| Name    | Type  | Required | Description |
| :------ | :---- | :------: | :---------- |
| `value` | `str` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import ChartValueCollectionFilterRequest

chart_value_collection_filter_request = ChartValueCollectionFilterRequest(value="''")
```

### Working with JSON

```python
from catapa import ChartValueCollectionFilterRequest

# Parse from JSON
json_str = '{"value": "example"}'
chart_value_collection_filter_request = ChartValueCollectionFilterRequest.from_json(
    json_str
)

# Convert to JSON
print(chart_value_collection_filter_request.to_json())
```

### Working with dictionaries

```python
from catapa import ChartValueCollectionFilterRequest

# Convert to/from dictionary
data_dict = chart_value_collection_filter_request.to_dict()
chart_value_collection_filter_request = ChartValueCollectionFilterRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(chart_value_collection_filter_request.value)
# Update properties
chart_value_collection_filter_request.value = "new_value"
```
