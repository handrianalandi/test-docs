# TaxCalculationResponse

## Properties

| Name       | Type    | Description                        |
| :--------- | :------ | :--------------------------------- |
| `original` | `float` | Original tax amount                |
| `penalty`  | `float` | Penalty tax amount                 |
| `total`    | `float` | Total tax amount including penalty |

## Usage Examples

### Creating an instance

```python
from catapa import TaxCalculationResponse

tax_calculation_response = TaxCalculationResponse(
    original=1.337, penalty=1.337, total=1.337
)
```

### Working with JSON

```python
from catapa import TaxCalculationResponse

# Parse from JSON
json_str = '{"original": "example"}'
tax_calculation_response = TaxCalculationResponse.from_json(json_str)

# Convert to JSON
print(tax_calculation_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxCalculationResponse

# Convert to/from dictionary
data_dict = tax_calculation_response.to_dict()
tax_calculation_response = TaxCalculationResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_calculation_response.original)
# Update properties
tax_calculation_response.original = new_value
```
