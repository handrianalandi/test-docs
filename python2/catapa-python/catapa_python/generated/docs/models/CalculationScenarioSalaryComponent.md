# CalculationScenarioSalaryComponent

## Properties

| Name                              | Type    | Required | Description    |
| :-------------------------------- | :------ | :------: | :------------- |
| `basic_salary`                    | `float` |    ❌    | (default: `0`) |
| `tax_allowance`                   | `float` |    ❌    | (default: `0`) |
| `other_allowance`                 | `float` |    ❌    | (default: `0`) |
| `honorarium`                      | `float` |    ❌    | (default: `0`) |
| `insurance_premium`               | `float` |    ❌    | (default: `0`) |
| `enjoyment_revenue`               | `float` |    ❌    | (default: `0`) |
| `bonus`                           | `float` |    ❌    | (default: `0`) |
| `monthly_retirement_contribution` | `float` |    ❌    | (default: `0`) |
| `monthly_religion_allowance`      | `float` |    ❌    | (default: `0`) |

## Usage Examples

### Creating an instance

```python
from catapa import CalculationScenarioSalaryComponent

calculation_scenario_salary_component = CalculationScenarioSalaryComponent(
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
```

### Working with JSON

```python
from catapa import CalculationScenarioSalaryComponent

# Parse from JSON
json_str = '{"basic_salary": "example"}'
calculation_scenario_salary_component = CalculationScenarioSalaryComponent.from_json(
    json_str
)

# Convert to JSON
print(calculation_scenario_salary_component.to_json())
```

### Working with dictionaries

```python
from catapa import CalculationScenarioSalaryComponent

# Convert to/from dictionary
data_dict = calculation_scenario_salary_component.to_dict()
calculation_scenario_salary_component = CalculationScenarioSalaryComponent.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(calculation_scenario_salary_component.basic_salary)
# Update properties
calculation_scenario_salary_component.basic_salary = new_value
```
