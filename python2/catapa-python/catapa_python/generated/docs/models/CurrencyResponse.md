# CurrencyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **int** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **int** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**payroll_rate** | **object** |  | [optional] 
**tax_rate** | **object** |  | [optional] 
**base_currency** | **bool** |  | [optional] 

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



