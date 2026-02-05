# FingerprintSuccessItemResponse

## Properties

| Name                    | Type  | Description |
| :---------------------- | :---- | :---------- |
| `identification_number` | `str` |             |
| `time`                  | `str` |             |
| `var_date`              | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import FingerprintSuccessItemResponse

fingerprint_success_item_response = FingerprintSuccessItemResponse(
    identification_number="''", time="''", var_date="''"
)
```

### Working with JSON

```python
from catapa import FingerprintSuccessItemResponse

# Parse from JSON
json_str = '{"identification_number": "example"}'
fingerprint_success_item_response = FingerprintSuccessItemResponse.from_json(json_str)

# Convert to JSON
print(fingerprint_success_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import FingerprintSuccessItemResponse

# Convert to/from dictionary
data_dict = fingerprint_success_item_response.to_dict()
fingerprint_success_item_response = FingerprintSuccessItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(fingerprint_success_item_response.identification_number)
# Update properties
fingerprint_success_item_response.identification_number = "new_value"
```
