# AnnualTaxCalculationSimulatorResponse

## Properties

| Name                      | Type                                                                                                                            | Description | Notes       |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **monthly\_tax\_reports** | [**List\[AnnualTaxCalculationSimulatorMonthlyTaxReportsResponse\]**](annualtaxcalculationsimulatormonthlytaxreportsresponse.md) |             | \[optional] |
| **annual\_tax\_report**   | [**AnnualTaxCalculationSimulatorResultResponse**](annualtaxcalculationsimulatorresultresponse.md)                               |             | \[optional] |

## Example

```python
from catapa import AnnualTaxCalculationSimulatorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AnnualTaxCalculationSimulatorResponse from a JSON string
annual_tax_calculation_simulator_response_instance = AnnualTaxCalculationSimulatorResponse.from_json(json)
# print the JSON string representation of the object
print(AnnualTaxCalculationSimulatorResponse.to_json())

# convert the object into a dict
annual_tax_calculation_simulator_response_dict = annual_tax_calculation_simulator_response_instance.to_dict()
# create an instance of AnnualTaxCalculationSimulatorResponse from a dict
annual_tax_calculation_simulator_response_from_dict = AnnualTaxCalculationSimulatorResponse.from_dict(annual_tax_calculation_simulator_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
