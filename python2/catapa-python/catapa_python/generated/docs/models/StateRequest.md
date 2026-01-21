# StateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**country** | [**CountryRequest**](CountryRequest.md) |  | [optional] 

## Example

```python
from catapa import StateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of StateRequest from a JSON string
state_request_instance = StateRequest.from_json(json)
# print the JSON string representation of the object
print(StateRequest.to_json())

# convert the object into a dict
state_request_dict = state_request_instance.to_dict()
# create an instance of StateRequest from a dict
state_request_from_dict = StateRequest.from_dict(state_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



