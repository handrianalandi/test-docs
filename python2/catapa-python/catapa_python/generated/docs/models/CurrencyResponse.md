# CurrencyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**created_by** | **str** |  | 
**created_date** | **int** |  | 
**updated_by** | **str** |  | 
**updated_date** | **int** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**payroll_rate** | **object** |  | 
**tax_rate** | **object** |  | 
**base_currency** | **bool** |  | 

## Example

```python
from catapa import CurrencyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CurrencyResponse from a JSON string
currency_response_instance = CurrencyResponse.from_json(json)
# print the JSON string representation of the object
print(CurrencyResponse.to_json())

# convert the object into a dict
currency_response_dict = currency_response_instance.to_dict()
# create an instance of CurrencyResponse from a dict
currency_response_from_dict = CurrencyResponse.from_dict(currency_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



