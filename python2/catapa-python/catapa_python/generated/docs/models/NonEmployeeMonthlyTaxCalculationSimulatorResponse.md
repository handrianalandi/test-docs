# NonEmployeeMonthlyTaxCalculationSimulatorResponse

## Properties

| Name                        | Type    | Description |
| :-------------------------- | :------ | :---------- |
| `type`                      | `str`   |             |
| `basic_salary`              | `float` |             |
| `tax_allowance`             | `float` |             |
| `base_income`               | `float` |             |
| `base_income_tax_deduction` | `float` |             |
| `base_income_tax`           | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import NonEmployeeMonthlyTaxCalculationSimulatorResponse

non_employee_monthly_tax_calculation_simulator_response = (
    NonEmployeeMonthlyTaxCalculationSimulatorResponse(
        type="'NON_EMPLOYEE'",
        basic_salary=1.337,
        tax_allowance=1.337,
        base_income=1.337,
        base_income_tax_deduction=1.337,
        base_income_tax=1.337,
    )
)
```

### Working with JSON

```python
from catapa import NonEmployeeMonthlyTaxCalculationSimulatorResponse

# Parse from JSON
json_str = '{"type": "example"}'
non_employee_monthly_tax_calculation_simulator_response = (
    NonEmployeeMonthlyTaxCalculationSimulatorResponse.from_json(json_str)
)

# Convert to JSON
print(non_employee_monthly_tax_calculation_simulator_response.to_json())
```

### Working with dictionaries

```python
from catapa import NonEmployeeMonthlyTaxCalculationSimulatorResponse

# Convert to/from dictionary
data_dict = non_employee_monthly_tax_calculation_simulator_response.to_dict()
non_employee_monthly_tax_calculation_simulator_response = (
    NonEmployeeMonthlyTaxCalculationSimulatorResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(non_employee_monthly_tax_calculation_simulator_response.type)
# Update properties
non_employee_monthly_tax_calculation_simulator_response.type = "new_value"
```
