# TaxAndAllowanceResponse

## Properties

| Name        | Type    | Description |
| :---------- | :------ | :---------- |
| `original`  | `float` |             |
| `penalty`   | `float` |             |
| `tax`       | `float` |             |
| `allowance` | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TaxAndAllowanceResponse

tax_and_allowance_response = TaxAndAllowanceResponse(
    original=1.337, penalty=1.337, tax=1.337, allowance=1.337
)
```

### Working with JSON

```python
from catapa import TaxAndAllowanceResponse

# Parse from JSON
json_str = '{"original": "example"}'
tax_and_allowance_response = TaxAndAllowanceResponse.from_json(json_str)

# Convert to JSON
print(tax_and_allowance_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxAndAllowanceResponse

# Convert to/from dictionary
data_dict = tax_and_allowance_response.to_dict()
tax_and_allowance_response = TaxAndAllowanceResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_and_allowance_response.original)
# Update properties
tax_and_allowance_response.original = new_value
```
