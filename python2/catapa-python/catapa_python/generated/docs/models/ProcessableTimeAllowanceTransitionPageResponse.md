# ProcessableTimeAllowanceTransitionPageResponse


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
**content** | [**List[ProcessableTimeAllowanceTransitionResponse]**](ProcessableTimeAllowanceTransitionResponse.md) |  | [optional] 

## Example

```python
from catapa import ProcessableTimeAllowanceTransitionPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ProcessableTimeAllowanceTransitionPageResponse from a JSON string
processable_time_allowance_transition_page_response_instance = ProcessableTimeAllowanceTransitionPageResponse.from_json(json)
# print the JSON string representation of the object
print(ProcessableTimeAllowanceTransitionPageResponse.to_json())

# convert the object into a dict
processable_time_allowance_transition_page_response_dict = processable_time_allowance_transition_page_response_instance.to_dict()
# create an instance of ProcessableTimeAllowanceTransitionPageResponse from a dict
processable_time_allowance_transition_page_response_from_dict = ProcessableTimeAllowanceTransitionPageResponse.from_dict(processable_time_allowance_transition_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



