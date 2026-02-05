# MonthlyTaxCalculationSimulatorRequest

## Properties

| Name            | Type                                                              | Required | Description |
| :-------------- | :---------------------------------------------------------------- | :------: | :---------- |
| `tax_object`    | `str`                                                             |    ✅    |             |
| `tax_method`    | `str`                                                             |    ✅    |             |
| `ptkp_category` | `str`                                                             |    ✅    |             |
| `component`     | [`CalculationScenarioComponent`](CalculationScenarioComponent.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import MonthlyTaxCalculationSimulatorRequest

monthly_tax_calculation_simulator_request = MonthlyTaxCalculationSimulatorRequest(
    tax_object="'PERMANENT'",
    tax_method="'GROSS'",
    ptkp_category="''",
    component=None,  # [CalculationScenarioComponent](CalculationScenarioComponent.md)
)
```

### Working with JSON

```python
from catapa import MonthlyTaxCalculationSimulatorRequest

# Parse from JSON
json_str = '{"tax_object": "example"}'
monthly_tax_calculation_simulator_request = (
    MonthlyTaxCalculationSimulatorRequest.from_json(json_str)
)

# Convert to JSON
print(monthly_tax_calculation_simulator_request.to_json())
```

### Working with dictionaries

```python
from catapa import MonthlyTaxCalculationSimulatorRequest

# Convert to/from dictionary
data_dict = monthly_tax_calculation_simulator_request.to_dict()
monthly_tax_calculation_simulator_request = (
    MonthlyTaxCalculationSimulatorRequest.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(monthly_tax_calculation_simulator_request.tax_object)
# Update properties
monthly_tax_calculation_simulator_request.tax_object = "new_value"
```
