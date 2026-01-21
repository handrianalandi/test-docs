# TaxCalculationIncomeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method** | **str** |  | 
**amount** | **float** |  | 
**item** | **str** |  | 

## Example

```python
from catapa import TaxCalculationIncomeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TaxCalculationIncomeRequest from a JSON string
tax_calculation_income_request_instance = TaxCalculationIncomeRequest.from_json(json)
# print the JSON string representation of the object
print(TaxCalculationIncomeRequest.to_json())

# convert the object into a dict
tax_calculation_income_request_dict = tax_calculation_income_request_instance.to_dict()
# create an instance of TaxCalculationIncomeRequest from a dict
tax_calculation_income_request_from_dict = TaxCalculationIncomeRequest.from_dict(tax_calculation_income_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



