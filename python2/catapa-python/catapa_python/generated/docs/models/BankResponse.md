# BankResponse

## Properties

| Name   | Type   | Description |
| :----- | :----- | :---------- |
| `id`   | `UUID` |             |
| `code` | `str`  |             |
| `name` | `str`  |             |
| `llg`  | `str`  |             |

## Usage Examples

### Creating an instance

```python
from catapa import BankResponse

bank_response = BankResponse(
    id="'8bf610cc-c83b-11e6-9d9d-cec0c932ce01'",
    code="'014'",
    name="'BCA'",
    llg="'146789'",
)
```

### Working with JSON

```python
from catapa import BankResponse

# Parse from JSON
json_str = '{"id": "example"}'
bank_response = BankResponse.from_json(json_str)

# Convert to JSON
print(bank_response.to_json())
```

### Working with dictionaries

```python
from catapa import BankResponse

# Convert to/from dictionary
data_dict = bank_response.to_dict()
bank_response = BankResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(bank_response.id)
# Update properties
bank_response.id = "new_value"
```
