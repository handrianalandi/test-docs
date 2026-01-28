# IdentityCardResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**identity_card_type** | **str** |  | 

## Example

```python
from catapa import IdentityCardResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IdentityCardResponse from a JSON string
identity_card_response_instance = IdentityCardResponse.from_json(json)
# print the JSON string representation of the object
print(IdentityCardResponse.to_json())

# convert the object into a dict
identity_card_response_dict = identity_card_response_instance.to_dict()
# create an instance of IdentityCardResponse from a dict
identity_card_response_from_dict = IdentityCardResponse.from_dict(identity_card_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



