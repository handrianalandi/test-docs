# PlaceOfBirthResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**state** | [**StateResponse**](StateResponse.md) |  | [optional] 

## Example

```python
from catapa import PlaceOfBirthResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PlaceOfBirthResponse from a JSON string
place_of_birth_response_instance = PlaceOfBirthResponse.from_json(json)
# print the JSON string representation of the object
print(PlaceOfBirthResponse.to_json())

# convert the object into a dict
place_of_birth_response_dict = place_of_birth_response_instance.to_dict()
# create an instance of PlaceOfBirthResponse from a dict
place_of_birth_response_from_dict = PlaceOfBirthResponse.from_dict(place_of_birth_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



