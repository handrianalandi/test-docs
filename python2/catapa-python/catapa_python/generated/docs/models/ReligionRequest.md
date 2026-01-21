# ReligionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**code** | **str** |  | [optional] 

## Example

```python
from catapa import ReligionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReligionRequest from a JSON string
religion_request_instance = ReligionRequest.from_json(json)
# print the JSON string representation of the object
print(ReligionRequest.to_json())

# convert the object into a dict
religion_request_dict = religion_request_instance.to_dict()
# create an instance of ReligionRequest from a dict
religion_request_from_dict = ReligionRequest.from_dict(religion_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



