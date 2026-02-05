# AnomalySuspectAttributeValueResponse

## Properties

| Name                        | Type                                                                                              | Description                               |
| :-------------------------- | :------------------------------------------------------------------------------------------------ | :---------------------------------------- |
| `id`                        | `str`                                                                                             | Unique identifier for the attribute value |
| `attribute_value`           | `str`                                                                                             | Value of the attribute                    |
| `score`                     | `float`                                                                                           | Score associated with the attribute value |
| `input_source`              | `str`                                                                                             | Source of the input data                  |
| `anomaly_suspect_attribute` | [`AnomalySuspectAttributeResponse`](AnomalySuspectAttributeResponse.md)                           |                                           |
| `child`                     | [`List[AnomalySuspectAttributeValueChildResponse]`](AnomalySuspectAttributeValueChildResponse.md) | Child attribute values                    |

## Usage Examples

### Creating an instance

```python
from catapa import AnomalySuspectAttributeValueResponse

anomaly_suspect_attribute_value_response = AnomalySuspectAttributeValueResponse(
    id="''",
    attribute_value="''",
    score=1.337,
    input_source="'USER'",
    anomaly_suspect_attribute=None,  # [AnomalySuspectAttributeResponse](AnomalySuspectAttributeResponse.md)
    child=[],  # List[[AnomalySuspectAttributeValueChildResponse](AnomalySuspectAttributeValueChildResponse.md)]
)
```

### Working with JSON

```python
from catapa import AnomalySuspectAttributeValueResponse

# Parse from JSON
json_str = '{"id": "example"}'
anomaly_suspect_attribute_value_response = (
    AnomalySuspectAttributeValueResponse.from_json(json_str)
)

# Convert to JSON
print(anomaly_suspect_attribute_value_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnomalySuspectAttributeValueResponse

# Convert to/from dictionary
data_dict = anomaly_suspect_attribute_value_response.to_dict()
anomaly_suspect_attribute_value_response = (
    AnomalySuspectAttributeValueResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(anomaly_suspect_attribute_value_response.id)
# Update properties
anomaly_suspect_attribute_value_response.id = "new_value"
```
