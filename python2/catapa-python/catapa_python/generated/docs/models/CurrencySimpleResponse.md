# CurrencySimpleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**base_currency** | **bool** |  | [optional] 

## Example

```python
from catapa import CurrencySimpleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CurrencySimpleResponse from a JSON string
currency_simple_response_instance = CurrencySimpleResponse.from_json(json)
# print the JSON string representation of the object
print(CurrencySimpleResponse.to_json())

# convert the object into a dict
currency_simple_response_dict = currency_simple_response_instance.to_dict()
# create an instance of CurrencySimpleResponse from a dict
currency_simple_response_from_dict = CurrencySimpleResponse.from_dict(currency_simple_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



