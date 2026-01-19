# TaxAmountResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**original** | **float** |  | [optional] 
**penalty** | **float** |  | [optional] 

## Example

```python
from catapa import TaxAmountResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxAmountResponse from a JSON string
tax_amount_response_instance = TaxAmountResponse.from_json(json)
# print the JSON string representation of the object
print(TaxAmountResponse.to_json())

# convert the object into a dict
tax_amount_response_dict = tax_amount_response_instance.to_dict()
# create an instance of TaxAmountResponse from a dict
tax_amount_response_from_dict = TaxAmountResponse.from_dict(tax_amount_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



