# TerminationTaxReasonListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[TerminationTaxReasonResponse]**](TerminationTaxReasonResponse.md) |  | [optional] 

## Example

```python
from catapa import TerminationTaxReasonListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationTaxReasonListResponse from a JSON string
termination_tax_reason_list_response_instance = TerminationTaxReasonListResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationTaxReasonListResponse.to_json())

# convert the object into a dict
termination_tax_reason_list_response_dict = termination_tax_reason_list_response_instance.to_dict()
# create an instance of TerminationTaxReasonListResponse from a dict
termination_tax_reason_list_response_from_dict = TerminationTaxReasonListResponse.from_dict(termination_tax_reason_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



