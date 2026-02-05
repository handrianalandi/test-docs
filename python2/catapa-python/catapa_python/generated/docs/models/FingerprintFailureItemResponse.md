# FingerprintFailureItemResponse

## Properties

| Name      | Type                                                                              | Description |
| :-------- | :-------------------------------------------------------------------------------- | :---------- |
| `code`    | `str`                                                                             |             |
| `message` | `str`                                                                             |             |
| `params`  | [`EmployeeIdentificationNumberResponse`](EmployeeIdentificationNumberResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import FingerprintFailureItemResponse

fingerprint_failure_item_response = FingerprintFailureItemResponse(
    code="''",
    message="''",
    params=None,  # [EmployeeIdentificationNumberResponse](EmployeeIdentificationNumberResponse.md)
)
```

### Working with JSON

```python
from catapa import FingerprintFailureItemResponse

# Parse from JSON
json_str = '{"code": "example"}'
fingerprint_failure_item_response = FingerprintFailureItemResponse.from_json(json_str)

# Convert to JSON
print(fingerprint_failure_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import FingerprintFailureItemResponse

# Convert to/from dictionary
data_dict = fingerprint_failure_item_response.to_dict()
fingerprint_failure_item_response = FingerprintFailureItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(fingerprint_failure_item_response.code)
# Update properties
fingerprint_failure_item_response.code = "new_value"
```
