# ChartFilterRequest

## Properties

| Name                             | Type                                                                              | Required | Description |
| :------------------------------- | :-------------------------------------------------------------------------------- | :------: | :---------- |
| `column_id`                      | `str`                                                                             |    ❌    |             |
| `chart_filter_type`              | `str`                                                                             |    ❌    |             |
| `chart_value_collection_filters` | [`List[ChartValueCollectionFilterRequest]`](ChartValueCollectionFilterRequest.md) |    ❌    |             |
| `start_date`                     | `str`                                                                             |    ❌    |             |
| `end_date`                       | `str`                                                                             |    ❌    |             |
| `time_frame`                     | `str`                                                                             |    ❌    |             |
| `time_unit`                      | `str`                                                                             |    ❌    |             |
| `duration`                       | `float`                                                                           |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import ChartFilterRequest

chart_filter_request = ChartFilterRequest(
    column_id="''",
    chart_filter_type="''",
    chart_value_collection_filters=[],  # List[[ChartValueCollectionFilterRequest](ChartValueCollectionFilterRequest.md)]
    start_date="''",
    end_date="''",
    time_frame="''",
    time_unit="''",
    duration=1.337,
)
```

### Working with JSON

```python
from catapa import ChartFilterRequest

# Parse from JSON
json_str = '{"column_id": "example"}'
chart_filter_request = ChartFilterRequest.from_json(json_str)

# Convert to JSON
print(chart_filter_request.to_json())
```

### Working with dictionaries

```python
from catapa import ChartFilterRequest

# Convert to/from dictionary
data_dict = chart_filter_request.to_dict()
chart_filter_request = ChartFilterRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(chart_filter_request.column_id)
# Update properties
chart_filter_request.column_id = "new_value"
```
