# TerminationReasonListResponse


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
**content** | [**List[TerminationReasonDetailResponse]**](TerminationReasonDetailResponse.md) |  | [optional] 

## Example

```python
from catapa import TerminationReasonListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationReasonListResponse from a JSON string
termination_reason_list_response_instance = TerminationReasonListResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationReasonListResponse.to_json())

# convert the object into a dict
termination_reason_list_response_dict = termination_reason_list_response_instance.to_dict()
# create an instance of TerminationReasonListResponse from a dict
termination_reason_list_response_from_dict = TerminationReasonListResponse.from_dict(termination_reason_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



