# ReligionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**code** | **str** |  | [optional] 

## Example

```python
from catapa import ReligionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ReligionResponse from a JSON string
religion_response_instance = ReligionResponse.from_json(json)
# print the JSON string representation of the object
print(ReligionResponse.to_json())

# convert the object into a dict
religion_response_dict = religion_response_instance.to_dict()
# create an instance of ReligionResponse from a dict
religion_response_from_dict = ReligionResponse.from_dict(religion_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



