# PermanentMonthlyTaxCalculationSimulatorResponse

## Properties

| Name                              | Type    | Description |
| :-------------------------------- | :------ | :---------- |
| `type`                            | `str`   |             |
| `basic_salary`                    | `float` |             |
| `tax_allowance`                   | `float` |             |
| `other_allowance`                 | `float` |             |
| `honorarium`                      | `float` |             |
| `insurance_premium`               | `float` |             |
| `enjoyment_revenue`               | `float` |             |
| `bonus`                           | `float` |             |
| `monthly_retirement_contribution` | `float` |             |
| `monthly_religion_allowance`      | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PermanentMonthlyTaxCalculationSimulatorResponse

permanent_monthly_tax_calculation_simulator_response = (
    PermanentMonthlyTaxCalculationSimulatorResponse(
        type="'PERMANENT'",
        basic_salary=1.337,
        tax_allowance=1.337,
        other_allowance=1.337,
        honorarium=1.337,
        insurance_premium=1.337,
        enjoyment_revenue=1.337,
        bonus=1.337,
        monthly_retirement_contribution=1.337,
        monthly_religion_allowance=1.337,
    )
)
```

### Working with JSON

```python
from catapa import PermanentMonthlyTaxCalculationSimulatorResponse

# Parse from JSON
json_str = '{"type": "example"}'
permanent_monthly_tax_calculation_simulator_response = (
    PermanentMonthlyTaxCalculationSimulatorResponse.from_json(json_str)
)

# Convert to JSON
print(permanent_monthly_tax_calculation_simulator_response.to_json())
```

### Working with dictionaries

```python
from catapa import PermanentMonthlyTaxCalculationSimulatorResponse

# Convert to/from dictionary
data_dict = permanent_monthly_tax_calculation_simulator_response.to_dict()
permanent_monthly_tax_calculation_simulator_response = (
    PermanentMonthlyTaxCalculationSimulatorResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(permanent_monthly_tax_calculation_simulator_response.type)
# Update properties
permanent_monthly_tax_calculation_simulator_response.type = "new_value"
```
