# AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse

## Properties

| Name                              | Type    | Description |
| :-------------------------------- | :------ | :---------- |
| `monthly_gross_income`            | `float` |             |
| `percentage`                      | `float` |             |
| `monthly_tax`                     | `float` |             |
| `netto_tax`                       | `float` |             |
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
from catapa import AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse

annual_tax_calculation_simulator_monthly_tax_reports_response = (
    AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse(
        monthly_gross_income=1.337,
        percentage=1.337,
        monthly_tax=1.337,
        netto_tax=1.337,
        type="''",
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
from catapa import AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse

# Parse from JSON
json_str = '{"monthly_gross_income": "example"}'
annual_tax_calculation_simulator_monthly_tax_reports_response = (
    AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse.from_json(json_str)
)

# Convert to JSON
print(annual_tax_calculation_simulator_monthly_tax_reports_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse

# Convert to/from dictionary
data_dict = annual_tax_calculation_simulator_monthly_tax_reports_response.to_dict()
annual_tax_calculation_simulator_monthly_tax_reports_response = (
    AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(
    annual_tax_calculation_simulator_monthly_tax_reports_response.monthly_gross_income
)
# Update properties
annual_tax_calculation_simulator_monthly_tax_reports_response.monthly_gross_income = (
    new_value
)
```
