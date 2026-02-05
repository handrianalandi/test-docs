# AnnualTaxCalculationSimulatorResponse

## Properties

| Name                  | Type                                                                                                                        | Description |
| :-------------------- | :-------------------------------------------------------------------------------------------------------------------------- | :---------- |
| `monthly_tax_reports` | [`List[AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse]`](AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse.md) |             |
| `annual_tax_report`   | [`AnnualTaxCalculationSimulatorResultResponse`](AnnualTaxCalculationSimulatorResultResponse.md)                             |             |

## Usage Examples

### Creating an instance

```python
from catapa import AnnualTaxCalculationSimulatorResponse

annual_tax_calculation_simulator_response = AnnualTaxCalculationSimulatorResponse(
    monthly_tax_reports=[],  # List[[AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse](AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse.md)]
    annual_tax_report=None,  # [AnnualTaxCalculationSimulatorResultResponse](AnnualTaxCalculationSimulatorResultResponse.md)
)
```

### Working with JSON

```python
from catapa import AnnualTaxCalculationSimulatorResponse

# Parse from JSON
json_str = '{"monthly_tax_reports": "example"}'
annual_tax_calculation_simulator_response = (
    AnnualTaxCalculationSimulatorResponse.from_json(json_str)
)

# Convert to JSON
print(annual_tax_calculation_simulator_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnnualTaxCalculationSimulatorResponse

# Convert to/from dictionary
data_dict = annual_tax_calculation_simulator_response.to_dict()
annual_tax_calculation_simulator_response = (
    AnnualTaxCalculationSimulatorResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(annual_tax_calculation_simulator_response.monthly_tax_reports)
# Update properties
annual_tax_calculation_simulator_response.monthly_tax_reports = new_value
```
