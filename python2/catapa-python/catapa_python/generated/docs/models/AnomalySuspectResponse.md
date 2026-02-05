# AnomalySuspectResponse

## Properties

| Name                               | Type                                                                                    | Description                               |
| :--------------------------------- | :-------------------------------------------------------------------------------------- | :---------------------------------------- |
| `id`                               | `str`                                                                                   | Unique identifier for the anomaly suspect |
| `identifier`                       | `str`                                                                                   | Anomaly suspect identifier                |
| `file`                             | [`AnomalySuspectFileResponse`](AnomalySuspectFileResponse.md)                           |                                           |
| `anomaly_suspect_attribute_values` | [`List[AnomalySuspectAttributeValueResponse]`](AnomalySuspectAttributeValueResponse.md) | List of anomaly suspect attribute values  |

## Usage Examples

### Creating an instance

```python
from catapa import AnomalySuspectResponse

anomaly_suspect_response = AnomalySuspectResponse(
    id="''",
    identifier="''",
    file=None,  # [AnomalySuspectFileResponse](AnomalySuspectFileResponse.md)
    anomaly_suspect_attribute_values=[],  # List[[AnomalySuspectAttributeValueResponse](AnomalySuspectAttributeValueResponse.md)]
)
```

### Working with JSON

```python
from catapa import AnomalySuspectResponse

# Parse from JSON
json_str = '{"id": "example"}'
anomaly_suspect_response = AnomalySuspectResponse.from_json(json_str)

# Convert to JSON
print(anomaly_suspect_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnomalySuspectResponse

# Convert to/from dictionary
data_dict = anomaly_suspect_response.to_dict()
anomaly_suspect_response = AnomalySuspectResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(anomaly_suspect_response.id)
# Update properties
anomaly_suspect_response.id = "new_value"
```
