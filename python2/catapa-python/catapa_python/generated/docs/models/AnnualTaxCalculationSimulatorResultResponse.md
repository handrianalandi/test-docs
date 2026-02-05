# AnnualTaxCalculationSimulatorResultResponse

## Properties

| Name                        | Type    | Description |
| :-------------------------- | :------ | :---------- |
| `basic_salary`              | `float` |             |
| `tax_allowance`             | `float` |             |
| `other_allowance`           | `float` |             |
| `honorarium`                | `float` |             |
| `insurance_premium`         | `float` |             |
| `enjoyment_revenue`         | `float` |             |
| `bonus`                     | `float` |             |
| `total_gross_income`        | `float` |             |
| `positional_allowance`      | `float` |             |
| `retirement_contribution`   | `float` |             |
| `total_deduction`           | `float` |             |
| `net_income`                | `float` |             |
| `previous_net_income`       | `float` |             |
| `total_net_income`          | `float` |             |
| `base_income_tax_deduction` | `float` |             |
| `base_income_tax`           | `float` |             |
| `yearly_original_tax`       | `float` |             |
| `yearly_penalty_tax`        | `float` |             |
| `yearly_tax`                | `float` |             |
| `previous_original_tax`     | `float` |             |
| `previous_penalty_tax`      | `float` |             |
| `previous_tax`              | `float` |             |
| `outstanding_original_tax`  | `float` |             |
| `outstanding_penalty_tax`   | `float` |             |
| `outstanding_tax`           | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import AnnualTaxCalculationSimulatorResultResponse

annual_tax_calculation_simulator_result_response = (
    AnnualTaxCalculationSimulatorResultResponse(
        basic_salary=1.337,
        tax_allowance=1.337,
        other_allowance=1.337,
        honorarium=1.337,
        insurance_premium=1.337,
        enjoyment_revenue=1.337,
        bonus=1.337,
        total_gross_income=1.337,
        positional_allowance=1.337,
        retirement_contribution=1.337,
        total_deduction=1.337,
        net_income=1.337,
        previous_net_income=1.337,
        total_net_income=1.337,
        base_income_tax_deduction=1.337,
        base_income_tax=1.337,
        yearly_original_tax=1.337,
        yearly_penalty_tax=1.337,
        yearly_tax=1.337,
        previous_original_tax=1.337,
        previous_penalty_tax=1.337,
        previous_tax=1.337,
        outstanding_original_tax=1.337,
        outstanding_penalty_tax=1.337,
        outstanding_tax=1.337,
    )
)
```

### Working with JSON

```python
from catapa import AnnualTaxCalculationSimulatorResultResponse

# Parse from JSON
json_str = '{"basic_salary": "example"}'
annual_tax_calculation_simulator_result_response = (
    AnnualTaxCalculationSimulatorResultResponse.from_json(json_str)
)

# Convert to JSON
print(annual_tax_calculation_simulator_result_response.to_json())
```

### Working with dictionaries

```python
from catapa import AnnualTaxCalculationSimulatorResultResponse

# Convert to/from dictionary
data_dict = annual_tax_calculation_simulator_result_response.to_dict()
annual_tax_calculation_simulator_result_response = (
    AnnualTaxCalculationSimulatorResultResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(annual_tax_calculation_simulator_result_response.basic_salary)
# Update properties
annual_tax_calculation_simulator_result_response.basic_salary = new_value
```
