# InstitutionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**code** | **str** |  | [optional] 

## Example

```python
from catapa import InstitutionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of InstitutionResponse from a JSON string
institution_response_instance = InstitutionResponse.from_json(json)
# print the JSON string representation of the object
print(InstitutionResponse.to_json())

# convert the object into a dict
institution_response_dict = institution_response_instance.to_dict()
# create an instance of InstitutionResponse from a dict
institution_response_from_dict = InstitutionResponse.from_dict(institution_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



