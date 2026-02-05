# CalculationScenarioPreviousJobComponent

## Properties

| Name         | Type    | Required | Description    |
| :----------- | :------ | :------: | :------------- |
| `net_income` | `float` |    ❌    | (default: `0`) |
| `tax`        | `float` |    ❌    | (default: `0`) |

## Usage Examples

### Creating an instance

```python
from catapa import CalculationScenarioPreviousJobComponent

calculation_scenario_previous_job_component = CalculationScenarioPreviousJobComponent(
    net_income=1.337, tax=1.337
)
```

### Working with JSON

```python
from catapa import CalculationScenarioPreviousJobComponent

# Parse from JSON
json_str = '{"net_income": "example"}'
calculation_scenario_previous_job_component = (
    CalculationScenarioPreviousJobComponent.from_json(json_str)
)

# Convert to JSON
print(calculation_scenario_previous_job_component.to_json())
```

### Working with dictionaries

```python
from catapa import CalculationScenarioPreviousJobComponent

# Convert to/from dictionary
data_dict = calculation_scenario_previous_job_component.to_dict()
calculation_scenario_previous_job_component = (
    CalculationScenarioPreviousJobComponent.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(calculation_scenario_previous_job_component.net_income)
# Update properties
calculation_scenario_previous_job_component.net_income = new_value
```
