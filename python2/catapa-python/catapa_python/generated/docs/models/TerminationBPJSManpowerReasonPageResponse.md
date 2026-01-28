# TerminationBPJSManpowerReasonPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[TerminationBPJSManpowerReasonResponse]**](TerminationBPJSManpowerReasonResponse.md) |  | 

## Example

```python
from catapa import TerminationBPJSManpowerReasonPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationBPJSManpowerReasonPageResponse from a JSON string
termination_bpjs_manpower_reason_page_response_instance = TerminationBPJSManpowerReasonPageResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationBPJSManpowerReasonPageResponse.to_json())

# convert the object into a dict
termination_bpjs_manpower_reason_page_response_dict = termination_bpjs_manpower_reason_page_response_instance.to_dict()
# create an instance of TerminationBPJSManpowerReasonPageResponse from a dict
termination_bpjs_manpower_reason_page_response_from_dict = TerminationBPJSManpowerReasonPageResponse.from_dict(termination_bpjs_manpower_reason_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



