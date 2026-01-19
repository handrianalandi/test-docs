# TaxIncomeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basic_salary** | **float** |  | [optional] 
**tax_allowance** | **float** |  | [optional] 
**bonus** | **float** |  | [optional] 
**irregular_bonus** | **float** |  | [optional] 
**bonus_allowance** | **float** |  | [optional] 
**honorarium** | **float** |  | [optional] 
**insurance_premium** | **float** |  | [optional] 
**enjoyment_revenue** | **float** |  | [optional] 
**other_allowance** | **float** |  | [optional] 
**irregular_other_allowance** | **float** |  | [optional] 
**retirement_contribution** | **float** |  | [optional] 
**religion_allowance** | **float** |  | [optional] 

## Example

```python
from catapa import TaxIncomeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxIncomeResponse from a JSON string
tax_income_response_instance = TaxIncomeResponse.from_json(json)
# print the JSON string representation of the object
print(TaxIncomeResponse.to_json())

# convert the object into a dict
tax_income_response_dict = tax_income_response_instance.to_dict()
# create an instance of TaxIncomeResponse from a dict
tax_income_response_from_dict = TaxIncomeResponse.from_dict(tax_income_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



