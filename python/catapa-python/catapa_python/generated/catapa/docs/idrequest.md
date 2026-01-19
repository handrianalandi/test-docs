# IdRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique identifier | 

## Example

```python
from catapa import IdRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IdRequest from a JSON string
id_request_instance = IdRequest.from_json(json)
# print the JSON string representation of the object
print(IdRequest.to_json())

# convert the object into a dict
id_request_dict = id_request_instance.to_dict()
# create an instance of IdRequest from a dict
id_request_from_dict = IdRequest.from_dict(id_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



