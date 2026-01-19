# SubLocationLocationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**company** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 

## Example

```python
from catapa import SubLocationLocationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SubLocationLocationResponse from a JSON string
sub_location_location_response_instance = SubLocationLocationResponse.from_json(json)
# print the JSON string representation of the object
print(SubLocationLocationResponse.to_json())

# convert the object into a dict
sub_location_location_response_dict = sub_location_location_response_instance.to_dict()
# create an instance of SubLocationLocationResponse from a dict
sub_location_location_response_from_dict = SubLocationLocationResponse.from_dict(sub_location_location_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



