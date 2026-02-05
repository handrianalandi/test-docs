# MonthlyTaxCalculationSimulatorResponse

## Properties

| Name                   | Type    | Description |
| :--------------------- | :------ | :---------- |
| `monthly_gross_income` | `float` |             |
| `percentage`           | `float` |             |
| `monthly_tax`          | `float` |             |
| `netto_tax`            | `float` |             |
| `type`                 | `str`   |             |

## Usage Examples

### Creating an instance

```python
from catapa import MonthlyTaxCalculationSimulatorResponse

monthly_tax_calculation_simulator_response = MonthlyTaxCalculationSimulatorResponse(
    monthly_gross_income=1.337,
    percentage=1.337,
    monthly_tax=1.337,
    netto_tax=1.337,
    type="''",
)
```

### Working with JSON

```python
from catapa import MonthlyTaxCalculationSimulatorResponse

# Parse from JSON
json_str = '{"monthly_gross_income": "example"}'
monthly_tax_calculation_simulator_response = (
    MonthlyTaxCalculationSimulatorResponse.from_json(json_str)
)

# Convert to JSON
print(monthly_tax_calculation_simulator_response.to_json())
```

### Working with dictionaries

```python
from catapa import MonthlyTaxCalculationSimulatorResponse

# Convert to/from dictionary
data_dict = monthly_tax_calculation_simulator_response.to_dict()
monthly_tax_calculation_simulator_response = (
    MonthlyTaxCalculationSimulatorResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(monthly_tax_calculation_simulator_response.monthly_gross_income)
# Update properties
monthly_tax_calculation_simulator_response.monthly_gross_income = new_value
```
