# TaxCalculationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**original** | **float** | Original tax amount | 
**penalty** | **float** | Penalty tax amount | 
**total** | **float** | Total tax amount including penalty | 

## Example

```python
from catapa import TaxCalculationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxCalculationResponse from a JSON string
tax_calculation_response_instance = TaxCalculationResponse.from_json(json)
# print the JSON string representation of the object
print(TaxCalculationResponse.to_json())

# convert the object into a dict
tax_calculation_response_dict = tax_calculation_response_instance.to_dict()
# create an instance of TaxCalculationResponse from a dict
tax_calculation_response_from_dict = TaxCalculationResponse.from_dict(tax_calculation_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



