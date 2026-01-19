# KppSimpleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**identification_number** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from catapa import KppSimpleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of KppSimpleResponse from a JSON string
kpp_simple_response_instance = KppSimpleResponse.from_json(json)
# print the JSON string representation of the object
print(KppSimpleResponse.to_json())

# convert the object into a dict
kpp_simple_response_dict = kpp_simple_response_instance.to_dict()
# create an instance of KppSimpleResponse from a dict
kpp_simple_response_from_dict = KppSimpleResponse.from_dict(kpp_simple_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



