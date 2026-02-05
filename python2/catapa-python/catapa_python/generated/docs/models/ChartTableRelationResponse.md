# ChartTableRelationResponse

## Properties

| Name                      | Type    | Description |
| :------------------------ | :------ | :---------- |
| `chart_table_relation_id` | `str`   |             |
| `sequence`                | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import ChartTableRelationResponse

chart_table_relation_response = ChartTableRelationResponse(
    chart_table_relation_id="''", sequence=1.337
)
```

### Working with JSON

```python
from catapa import ChartTableRelationResponse

# Parse from JSON
json_str = '{"chart_table_relation_id": "example"}'
chart_table_relation_response = ChartTableRelationResponse.from_json(json_str)

# Convert to JSON
print(chart_table_relation_response.to_json())
```

### Working with dictionaries

```python
from catapa import ChartTableRelationResponse

# Convert to/from dictionary
data_dict = chart_table_relation_response.to_dict()
chart_table_relation_response = ChartTableRelationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(chart_table_relation_response.chart_table_relation_id)
# Update properties
chart_table_relation_response.chart_table_relation_id = "new_value"
```
