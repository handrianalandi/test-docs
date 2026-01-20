# SubLocationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 
**location_id** | **str** | Parent location ID | 

## Example

```python
from catapa import SubLocationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SubLocationRequest from a JSON string
sub_location_request_instance = SubLocationRequest.from_json(json)
# print the JSON string representation of the object
print(SubLocationRequest.to_json())

# convert the object into a dict
sub_location_request_dict = sub_location_request_instance.to_dict()
# create an instance of SubLocationRequest from a dict
sub_location_request_from_dict = SubLocationRequest.from_dict(sub_location_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



