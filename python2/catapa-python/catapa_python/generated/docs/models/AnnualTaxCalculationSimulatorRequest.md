# AnnualTaxCalculationSimulatorRequest

## Properties

| Name                     | Type                                                                                    | Required | Description                                                                                                                                                 |
| :----------------------- | :-------------------------------------------------------------------------------------- | :------: | :---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `tax_method`             | `str`                                                                                   |    ✅    |                                                                                                                                                             |
| `ptkp_category`          | `str`                                                                                   |    ✅    |                                                                                                                                                             |
| `tax_object`             | `str`                                                                                   |    ✅    |                                                                                                                                                             |
| `start_month`            | `int`                                                                                   |    ✅    |                                                                                                                                                             |
| `components`             | [`List[CalculationScenarioComponent]`](CalculationScenarioComponent.md)                 |    ✅    | List of monthly income components. The last component is the tax end month. For example, if startMonth is 1 and there are 6 components, then endMonth is 6. |
| `previous_job_component` | [`CalculationScenarioPreviousJobComponent`](CalculationScenarioPreviousJobComponent.md) |    ❌    |                                                                                                                                                             |

## Usage Examples

### Creating an instance

```python
from catapa import AnnualTaxCalculationSimulatorRequest

annual_tax_calculation_simulator_request = AnnualTaxCalculationSimulatorRequest(
    tax_method="'GROSS'",
    ptkp_category="''",
    tax_object="'PERMANENT'",
    start_month=1,
    components=[],  # List[[CalculationScenarioComponent](CalculationScenarioComponent.md)]
    previous_job_component=None,  # [CalculationScenarioPreviousJobComponent](CalculationScenarioPreviousJobComponent.md)
)
```

### Working with JSON

```python
from catapa import AnnualTaxCalculationSimulatorRequest

# Parse from JSON
json_str = '{"tax_method": "example"}'
annual_tax_calculation_simulator_request = (
    AnnualTaxCalculationSimulatorRequest.from_json(json_str)
)

# Convert to JSON
print(annual_tax_calculation_simulator_request.to_json())
```

### Working with dictionaries

```python
from catapa import AnnualTaxCalculationSimulatorRequest

# Convert to/from dictionary
data_dict = annual_tax_calculation_simulator_request.to_dict()
annual_tax_calculation_simulator_request = (
    AnnualTaxCalculationSimulatorRequest.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(annual_tax_calculation_simulator_request.tax_method)
# Update properties
annual_tax_calculation_simulator_request.tax_method = "new_value"
```
