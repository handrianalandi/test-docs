# TerminationBPJSManpowerReasonListResponse


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
**content** | [**List[TerminationBPJSManpowerReasonResponse]**](TerminationBPJSManpowerReasonResponse.md) |  | [optional] 

## Example

```python
from catapa import TerminationBPJSManpowerReasonListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationBPJSManpowerReasonListResponse from a JSON string
termination_bpjs_manpower_reason_list_response_instance = TerminationBPJSManpowerReasonListResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationBPJSManpowerReasonListResponse.to_json())

# convert the object into a dict
termination_bpjs_manpower_reason_list_response_dict = termination_bpjs_manpower_reason_list_response_instance.to_dict()
# create an instance of TerminationBPJSManpowerReasonListResponse from a dict
termination_bpjs_manpower_reason_list_response_from_dict = TerminationBPJSManpowerReasonListResponse.from_dict(termination_bpjs_manpower_reason_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



