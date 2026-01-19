# IdCodeNameResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from catapa import IdCodeNameResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IdCodeNameResponse from a JSON string
id_code_name_response_instance = IdCodeNameResponse.from_json(json)
# print the JSON string representation of the object
print(IdCodeNameResponse.to_json())

# convert the object into a dict
id_code_name_response_dict = id_code_name_response_instance.to_dict()
# create an instance of IdCodeNameResponse from a dict
id_code_name_response_from_dict = IdCodeNameResponse.from_dict(id_code_name_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



