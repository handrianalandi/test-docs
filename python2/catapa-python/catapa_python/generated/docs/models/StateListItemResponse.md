# StateListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**country** | [**CountryResponse**](CountryResponse.md) |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from catapa import StateListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of StateListItemResponse from a JSON string
state_list_item_response_instance = StateListItemResponse.from_json(json)
# print the JSON string representation of the object
print(StateListItemResponse.to_json())

# convert the object into a dict
state_list_item_response_dict = state_list_item_response_instance.to_dict()
# create an instance of StateListItemResponse from a dict
state_list_item_response_from_dict = StateListItemResponse.from_dict(state_list_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



