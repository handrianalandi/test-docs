# AnomalySuspectAttributeResponse

## Properties

| Name            | Type  | Description                         |
| :-------------- | :---- | :---------------------------------- |
| `id`            | `str` | Unique identifier for the attribute |
| `attribute_key` | `str` | Key/name of the attribute           |

## Usage Examples

### Creating an instance

```python
from catapa import AnomalySuspectAttributeResponse

anomaly_suspect_attribute_response = AnomalySuspectAttributeResponse(
    id="''", attribute_key="''"
)
```

### Working with JSON

```python
from catapa import AnomalySuspectAttributeResponse

# Parse from JSON
json_str = '{"id": "example"}'
anomaly_suspect_attribute_response = AnomalySuspectAttributeResponse.from_json(json_str)

# Convert to JSON
print(anomaly_suspect_attribute_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnomalySuspectAttributeResponse

# Convert to/from dictionary
data_dict = anomaly_suspect_attribute_response.to_dict()
anomaly_suspect_attribute_response = AnomalySuspectAttributeResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(anomaly_suspect_attribute_response.id)
# Update properties
anomaly_suspect_attribute_response.id = "new_value"
```
