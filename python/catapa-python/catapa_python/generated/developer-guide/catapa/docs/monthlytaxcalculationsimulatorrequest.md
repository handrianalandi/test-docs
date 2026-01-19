# MonthlyTaxCalculationSimulatorRequest

## Properties

| Name               | Type                                                                | Description | Notes |
| ------------------ | ------------------------------------------------------------------- | ----------- | ----- |
| **tax\_object**    | **str**                                                             |             |       |
| **tax\_method**    | **str**                                                             |             |       |
| **ptkp\_category** | **str**                                                             |             |       |
| **component**      | [**CalculationScenarioComponent**](calculationscenariocomponent.md) |             |       |

## Example

```python
from catapa import MonthlyTaxCalculationSimulatorRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MonthlyTaxCalculationSimulatorRequest from a JSON string
monthly_tax_calculation_simulator_request_instance = MonthlyTaxCalculationSimulatorRequest.from_json(json)
# print the JSON string representation of the object
print(MonthlyTaxCalculationSimulatorRequest.to_json())

# convert the object into a dict
monthly_tax_calculation_simulator_request_dict = monthly_tax_calculation_simulator_request_instance.to_dict()
# create an instance of MonthlyTaxCalculationSimulatorRequest from a dict
monthly_tax_calculation_simulator_request_from_dict = MonthlyTaxCalculationSimulatorRequest.from_dict(monthly_tax_calculation_simulator_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
