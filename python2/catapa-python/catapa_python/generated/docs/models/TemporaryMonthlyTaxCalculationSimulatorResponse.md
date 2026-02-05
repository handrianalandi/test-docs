# TemporaryMonthlyTaxCalculationSimulatorResponse

## Properties

| Name            | Type    | Description |
| :-------------- | :------ | :---------- |
| `type`          | `str`   |             |
| `basic_salary`  | `float` |             |
| `tax_allowance` | `float` |             |
| `bonus`         | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TemporaryMonthlyTaxCalculationSimulatorResponse

temporary_monthly_tax_calculation_simulator_response = (
    TemporaryMonthlyTaxCalculationSimulatorResponse(
        type="'TEMPORARY'", basic_salary=1.337, tax_allowance=1.337, bonus=1.337
    )
)
```

### Working with JSON

```python
from catapa import TemporaryMonthlyTaxCalculationSimulatorResponse

# Parse from JSON
json_str = '{"type": "example"}'
temporary_monthly_tax_calculation_simulator_response = (
    TemporaryMonthlyTaxCalculationSimulatorResponse.from_json(json_str)
)

# Convert to JSON
print(temporary_monthly_tax_calculation_simulator_response.to_json())
```

### Working with dictionaries

```python
from catapa import TemporaryMonthlyTaxCalculationSimulatorResponse

# Convert to/from dictionary
data_dict = temporary_monthly_tax_calculation_simulator_response.to_dict()
temporary_monthly_tax_calculation_simulator_response = (
    TemporaryMonthlyTaxCalculationSimulatorResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(temporary_monthly_tax_calculation_simulator_response.type)
# Update properties
temporary_monthly_tax_calculation_simulator_response.type = "new_value"
```
