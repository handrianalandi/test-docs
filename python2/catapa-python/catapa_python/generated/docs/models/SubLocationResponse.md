# SubLocationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**location** | [**SubLocationLocationResponse**](SubLocationLocationResponse.md) |  | 

## Example

```python
from catapa import SubLocationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SubLocationResponse from a JSON string
sub_location_response_instance = SubLocationResponse.from_json(json)
# print the JSON string representation of the object
print(SubLocationResponse.to_json())

# convert the object into a dict
sub_location_response_dict = sub_location_response_instance.to_dict()
# create an instance of SubLocationResponse from a dict
sub_location_response_from_dict = SubLocationResponse.from_dict(sub_location_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



