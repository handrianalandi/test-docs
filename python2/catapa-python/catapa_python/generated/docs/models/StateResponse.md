# StateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**country** | [**CountryResponse**](CountryResponse.md) |  | 

## Example

```python
from catapa import StateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of StateResponse from a JSON string
state_response_instance = StateResponse.from_json(json)
# print the JSON string representation of the object
print(StateResponse.to_json())

# convert the object into a dict
state_response_dict = state_response_instance.to_dict()
# create an instance of StateResponse from a dict
state_response_from_dict = StateResponse.from_dict(state_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



