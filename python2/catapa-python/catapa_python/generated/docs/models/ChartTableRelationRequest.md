# ChartTableRelationRequest

## Properties

| Name                      | Type    | Required | Description |
| :------------------------ | :------ | :------: | :---------- |
| `chart_table_relation_id` | `str`   |    ❌    |             |
| `sequence`                | `float` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import ChartTableRelationRequest

chart_table_relation_request = ChartTableRelationRequest(
    chart_table_relation_id="''", sequence=1.337
)
```

### Working with JSON

```python
from catapa import ChartTableRelationRequest

# Parse from JSON
json_str = '{"chart_table_relation_id": "example"}'
chart_table_relation_request = ChartTableRelationRequest.from_json(json_str)

# Convert to JSON
print(chart_table_relation_request.to_json())
```

### Working with dictionaries

```python
from catapa import ChartTableRelationRequest

# Convert to/from dictionary
data_dict = chart_table_relation_request.to_dict()
chart_table_relation_request = ChartTableRelationRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(chart_table_relation_request.chart_table_relation_id)
# Update properties
chart_table_relation_request.chart_table_relation_id = "new_value"
```
