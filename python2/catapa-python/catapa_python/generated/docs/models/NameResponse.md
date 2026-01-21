# NameResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 

## Example

```python
from catapa import NameResponse

# TODO update the JSON string below
json = "{}"
# create an instance of NameResponse from a JSON string
name_response_instance = NameResponse.from_json(json)
# print the JSON string representation of the object
print(NameResponse.to_json())

# convert the object into a dict
name_response_dict = name_response_instance.to_dict()
# create an instance of NameResponse from a dict
name_response_from_dict = NameResponse.from_dict(name_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



