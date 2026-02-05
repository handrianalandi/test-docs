# FingerprintResponse

## Properties

| Name        | Type                                                                        | Description |
| :---------- | :-------------------------------------------------------------------------- | :---------- |
| `successes` | [`List[FingerprintSuccessItemResponse]`](FingerprintSuccessItemResponse.md) |             |
| `failures`  | [`List[FingerprintFailureItemResponse]`](FingerprintFailureItemResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import FingerprintResponse

fingerprint_response = FingerprintResponse(
    successes=[],  # List[[FingerprintSuccessItemResponse](FingerprintSuccessItemResponse.md)]
    failures=[],  # List[[FingerprintFailureItemResponse](FingerprintFailureItemResponse.md)]
)
```

### Working with JSON

```python
from catapa import FingerprintResponse

# Parse from JSON
json_str = '{"successes": "example"}'
fingerprint_response = FingerprintResponse.from_json(json_str)

# Convert to JSON
print(fingerprint_response.to_json())
```

### Working with dictionaries

```python
from catapa import FingerprintResponse

# Convert to/from dictionary
data_dict = fingerprint_response.to_dict()
fingerprint_response = FingerprintResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(fingerprint_response.successes)
# Update properties
fingerprint_response.successes = new_value
```
