# TaxCalculationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_id** | **str** |  | 
**incomes** | [**List[TaxCalculationIncomeRequest]**](TaxCalculationIncomeRequest.md) |  | 
**reference_date** | **date** |  | 
**payment_method** | **str** |  | 
**external_id** | **str** |  | 
**multiplier** | **float** |  | 
**payment_date** | **date** |  | 
**calculation_type** | **str** |  | 
**working_days** | **float** |  | 

## Example

```python
from catapa import TaxCalculationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TaxCalculationRequest from a JSON string
tax_calculation_request_instance = TaxCalculationRequest.from_json(json)
# print the JSON string representation of the object
print(TaxCalculationRequest.to_json())

# convert the object into a dict
tax_calculation_request_dict = tax_calculation_request_instance.to_dict()
# create an instance of TaxCalculationRequest from a dict
tax_calculation_request_from_dict = TaxCalculationRequest.from_dict(tax_calculation_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



