# TerminationTaxReasonResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**tax_annualized** | **bool** |  | 

## Example

```python
from catapa import TerminationTaxReasonResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationTaxReasonResponse from a JSON string
termination_tax_reason_response_instance = TerminationTaxReasonResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationTaxReasonResponse.to_json())

# convert the object into a dict
termination_tax_reason_response_dict = termination_tax_reason_response_instance.to_dict()
# create an instance of TerminationTaxReasonResponse from a dict
termination_tax_reason_response_from_dict = TerminationTaxReasonResponse.from_dict(termination_tax_reason_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



