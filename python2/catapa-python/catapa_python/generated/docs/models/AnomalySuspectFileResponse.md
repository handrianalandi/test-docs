# AnomalySuspectFileResponse

## Properties

| Name       | Type  | Description            |
| :--------- | :---- | :--------------------- |
| `filename` | `str` | Name of the file       |
| `path`     | `str` | File path              |
| `url`      | `str` | URL to access the file |

## Usage Examples

### Creating an instance

```python
from catapa import AnomalySuspectFileResponse

anomaly_suspect_file_response = AnomalySuspectFileResponse(
    filename="''", path="''", url="''"
)
```

### Working with JSON

```python
from catapa import AnomalySuspectFileResponse

# Parse from JSON
json_str = '{"filename": "example"}'
anomaly_suspect_file_response = AnomalySuspectFileResponse.from_json(json_str)

# Convert to JSON
print(anomaly_suspect_file_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnomalySuspectFileResponse

# Convert to/from dictionary
data_dict = anomaly_suspect_file_response.to_dict()
anomaly_suspect_file_response = AnomalySuspectFileResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(anomaly_suspect_file_response.filename)
# Update properties
anomaly_suspect_file_response.filename = "new_value"
```
