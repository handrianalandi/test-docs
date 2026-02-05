# FingerprintItemRequest

## Properties

| Name                    | Type  | Required | Description |
| :---------------------- | :---- | :------: | :---------- |
| `identification_number` | `str` |    ✅    |             |
| `time`                  | `str` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import FingerprintItemRequest

fingerprint_item_request = FingerprintItemRequest(identification_number="''", time="''")
```

### Working with JSON

```python
from catapa import FingerprintItemRequest

# Parse from JSON
json_str = '{"identification_number": "example"}'
fingerprint_item_request = FingerprintItemRequest.from_json(json_str)

# Convert to JSON
print(fingerprint_item_request.to_json())
```

### Working with dictionaries

```python
from catapa import FingerprintItemRequest

# Convert to/from dictionary
data_dict = fingerprint_item_request.to_dict()
fingerprint_item_request = FingerprintItemRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(fingerprint_item_request.identification_number)
# Update properties
fingerprint_item_request.identification_number = "new_value"
```
