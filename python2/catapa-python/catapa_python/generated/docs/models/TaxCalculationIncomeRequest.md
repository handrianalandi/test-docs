# TaxCalculationIncomeRequest

## Properties

| Name     | Type    | Required | Description |
| :------- | :------ | :------: | :---------- |
| `method` | `str`   |    ✅    |             |
| `amount` | `float` |    ✅    |             |
| `item`   | `str`   |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import TaxCalculationIncomeRequest

tax_calculation_income_request = TaxCalculationIncomeRequest(
    method="''", amount=1.337, item="''"
)
```

### Working with JSON

```python
from catapa import TaxCalculationIncomeRequest

# Parse from JSON
json_str = '{"method": "example"}'
tax_calculation_income_request = TaxCalculationIncomeRequest.from_json(json_str)

# Convert to JSON
print(tax_calculation_income_request.to_json())
```

### Working with dictionaries

```python
from catapa import TaxCalculationIncomeRequest

# Convert to/from dictionary
data_dict = tax_calculation_income_request.to_dict()
tax_calculation_income_request = TaxCalculationIncomeRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_calculation_income_request.method)
# Update properties
tax_calculation_income_request.method = "new_value"
```
