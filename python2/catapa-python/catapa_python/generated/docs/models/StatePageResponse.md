# StatePageResponse


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
**content** | [**List[StateListItemResponse]**](StateListItemResponse.md) |  | 

## Example

```python
from catapa import StatePageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of StatePageResponse from a JSON string
state_page_response_instance = StatePageResponse.from_json(json)
# print the JSON string representation of the object
print(StatePageResponse.to_json())

# convert the object into a dict
state_page_response_dict = state_page_response_instance.to_dict()
# create an instance of StatePageResponse from a dict
state_page_response_from_dict = StatePageResponse.from_dict(state_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



