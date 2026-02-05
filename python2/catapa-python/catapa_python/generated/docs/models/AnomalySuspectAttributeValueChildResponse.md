# AnomalySuspectAttributeValueChildResponse

## Properties

| Name                        | Type                                                                    | Description                                     |
| :-------------------------- | :---------------------------------------------------------------------- | :---------------------------------------------- |
| `id`                        | `str`                                                                   | Unique identifier for the child attribute value |
| `attribute_value`           | `str`                                                                   | Value of the child attribute                    |
| `anomaly_suspect_attribute` | [`AnomalySuspectAttributeResponse`](AnomalySuspectAttributeResponse.md) |                                                 |

## Usage Examples

### Creating an instance

```python
from catapa import AnomalySuspectAttributeValueChildResponse

anomaly_suspect_attribute_value_child_response = AnomalySuspectAttributeValueChildResponse(
    id="''",
    attribute_value="''",
    anomaly_suspect_attribute=None,  # [AnomalySuspectAttributeResponse](AnomalySuspectAttributeResponse.md)
)
```

### Working with JSON

```python
from catapa import AnomalySuspectAttributeValueChildResponse

# Parse from JSON
json_str = '{"id": "example"}'
anomaly_suspect_attribute_value_child_response = (
    AnomalySuspectAttributeValueChildResponse.from_json(json_str)
)

# Convert to JSON
print(anomaly_suspect_attribute_value_child_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnomalySuspectAttributeValueChildResponse

# Convert to/from dictionary
data_dict = anomaly_suspect_attribute_value_child_response.to_dict()
anomaly_suspect_attribute_value_child_response = (
    AnomalySuspectAttributeValueChildResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(anomaly_suspect_attribute_value_child_response.id)
# Update properties
anomaly_suspect_attribute_value_child_response.id = "new_value"
```
