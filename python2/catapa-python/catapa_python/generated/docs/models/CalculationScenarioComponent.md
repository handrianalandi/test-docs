# CalculationScenarioComponent

## Properties

| Name               | Type                                                                          | Required | Description |
| :----------------- | :---------------------------------------------------------------------------- | :------: | :---------- |
| `first_component`  | [`CalculationScenarioSalaryComponent`](CalculationScenarioSalaryComponent.md) |    ❌    |             |
| `second_component` | [`CalculationScenarioSalaryComponent`](CalculationScenarioSalaryComponent.md) |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import CalculationScenarioComponent

calculation_scenario_component = CalculationScenarioComponent(
    first_component=None,  # [CalculationScenarioSalaryComponent](CalculationScenarioSalaryComponent.md)
    second_component=None,  # [CalculationScenarioSalaryComponent](CalculationScenarioSalaryComponent.md)
)
```

### Working with JSON

```python
from catapa import CalculationScenarioComponent

# Parse from JSON
json_str = '{"first_component": "example"}'
calculation_scenario_component = CalculationScenarioComponent.from_json(json_str)

# Convert to JSON
print(calculation_scenario_component.to_json())
```

### Working with dictionaries

```python
from catapa import CalculationScenarioComponent

# Convert to/from dictionary
data_dict = calculation_scenario_component.to_dict()
calculation_scenario_component = CalculationScenarioComponent.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(calculation_scenario_component.first_component)
# Update properties
calculation_scenario_component.first_component = new_value
```
