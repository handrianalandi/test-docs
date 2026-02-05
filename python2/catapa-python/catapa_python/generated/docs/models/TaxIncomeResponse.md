# TaxIncomeResponse

## Properties

| Name                        | Type    | Description |
| :-------------------------- | :------ | :---------- |
| `basic_salary`              | `float` |             |
| `tax_allowance`             | `float` |             |
| `bonus`                     | `float` |             |
| `irregular_bonus`           | `float` |             |
| `bonus_allowance`           | `float` |             |
| `honorarium`                | `float` |             |
| `insurance_premium`         | `float` |             |
| `enjoyment_revenue`         | `float` |             |
| `other_allowance`           | `float` |             |
| `irregular_other_allowance` | `float` |             |
| `retirement_contribution`   | `float` |             |
| `religion_allowance`        | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TaxIncomeResponse

tax_income_response = TaxIncomeResponse(
    basic_salary=1.337,
    tax_allowance=1.337,
    bonus=1.337,
    irregular_bonus=1.337,
    bonus_allowance=1.337,
    honorarium=1.337,
    insurance_premium=1.337,
    enjoyment_revenue=1.337,
    other_allowance=1.337,
    irregular_other_allowance=1.337,
    retirement_contribution=1.337,
    religion_allowance=1.337,
)
```

### Working with JSON

```python
from catapa import TaxIncomeResponse

# Parse from JSON
json_str = '{"basic_salary": "example"}'
tax_income_response = TaxIncomeResponse.from_json(json_str)

# Convert to JSON
print(tax_income_response.to_json())
```

### Working with dictionaries

```python
from catapa import TaxIncomeResponse

# Convert to/from dictionary
data_dict = tax_income_response.to_dict()
tax_income_response = TaxIncomeResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(tax_income_response.basic_salary)
# Update properties
tax_income_response.basic_salary = new_value
```
