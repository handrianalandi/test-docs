# TaxDependentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the tax dependent | 
**ptkp_relation_type** | **str** | Relationship type for PTKP calculation | 
**date_of_birth** | **date** | Date of birth of the tax dependent | 
**job** | **str** | Job or occupation of the tax dependent | 

## Example

```python
from catapa import TaxDependentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TaxDependentResponse from a JSON string
tax_dependent_response_instance = TaxDependentResponse.from_json(json)
# print the JSON string representation of the object
print(TaxDependentResponse.to_json())

# convert the object into a dict
tax_dependent_response_dict = tax_dependent_response_instance.to_dict()
# create an instance of TaxDependentResponse from a dict
tax_dependent_response_from_dict = TaxDependentResponse.from_dict(tax_dependent_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



