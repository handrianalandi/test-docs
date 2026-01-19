# NonEmployeeMonthlyTaxCalculationSimulatorResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**basic_salary** | **float** |  | [optional] 
**tax_allowance** | **float** |  | [optional] 
**base_income** | **float** |  | [optional] 
**base_income_tax_deduction** | **float** |  | [optional] 
**base_income_tax** | **float** |  | [optional] 

## Example

```python
from catapa import NonEmployeeMonthlyTaxCalculationSimulatorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of NonEmployeeMonthlyTaxCalculationSimulatorResponse from a JSON string
non_employee_monthly_tax_calculation_simulator_response_instance = NonEmployeeMonthlyTaxCalculationSimulatorResponse.from_json(json)
# print the JSON string representation of the object
print(NonEmployeeMonthlyTaxCalculationSimulatorResponse.to_json())

# convert the object into a dict
non_employee_monthly_tax_calculation_simulator_response_dict = non_employee_monthly_tax_calculation_simulator_response_instance.to_dict()
# create an instance of NonEmployeeMonthlyTaxCalculationSimulatorResponse from a dict
non_employee_monthly_tax_calculation_simulator_response_from_dict = NonEmployeeMonthlyTaxCalculationSimulatorResponse.from_dict(non_employee_monthly_tax_calculation_simulator_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



