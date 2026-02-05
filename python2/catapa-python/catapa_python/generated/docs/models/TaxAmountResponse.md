# TaxAmountResponse

## Properties

| Name       | Type    | Description |
| :--------- | :------ | :---------- |
| `original` | `float` |             |
| `penalty`  | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TaxAmountResponse

tax_amount_response = TaxAmountResponse(original=1.337, penalty=1.337)
```

### Working with JSON

```python
from catapa import TaxAmountResponse

# Parse from JSON
json_str = '{"original": "example"}'
tax_amount_response = TaxAmountResponse.from_json(json_str)

# Convert to JSON
print(tax_amount_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxAmountResponse

# Convert to/from dictionary
data_dict = tax_amount_response.to_dict()
tax_amount_response = TaxAmountResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_amount_response.original)
# Update properties
tax_amount_response.original = new_value
```
