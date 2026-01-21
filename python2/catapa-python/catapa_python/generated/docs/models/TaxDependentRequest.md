# TaxDependentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier for the tax dependent | [optional] 
**name** | **str** | Name of the tax dependent | 
**ptkp_relation_type** | **str** | Relationship type for PTKP calculation | 
**date_of_birth** | **datetime** | Date of birth of the tax dependent | 
**job** | **str** | Job or occupation of the tax dependent | [optional] 

## Example

```python
from catapa import TaxDependentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TaxDependentRequest from a JSON string
tax_dependent_request_instance = TaxDependentRequest.from_json(json)
# print the JSON string representation of the object
print(TaxDependentRequest.to_json())

# convert the object into a dict
tax_dependent_request_dict = tax_dependent_request_instance.to_dict()
# create an instance of TaxDependentRequest from a dict
tax_dependent_request_from_dict = TaxDependentRequest.from_dict(tax_dependent_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



