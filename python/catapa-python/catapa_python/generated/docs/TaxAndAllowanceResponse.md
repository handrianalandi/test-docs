# TaxAndAllowanceResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**original** | **float** |  | [optional] 
**penalty** | **float** |  | [optional] 
**tax** | **float** |  | [optional] 
**allowance** | **float** |  | [optional] 

## Example

```python
from catapa import TaxAndAllowanceResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxAndAllowanceResponse from a JSON string
tax_and_allowance_response_instance = TaxAndAllowanceResponse.from_json(json)
# print the JSON string representation of the object
print(TaxAndAllowanceResponse.to_json())

# convert the object into a dict
tax_and_allowance_response_dict = tax_and_allowance_response_instance.to_dict()
# create an instance of TaxAndAllowanceResponse from a dict
tax_and_allowance_response_from_dict = TaxAndAllowanceResponse.from_dict(tax_and_allowance_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



