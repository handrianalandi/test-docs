# RoleAuthorityResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** | Authority code | 

## Example

```python
from catapa import RoleAuthorityResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RoleAuthorityResponse from a JSON string
role_authority_response_instance = RoleAuthorityResponse.from_json(json)
# print the JSON string representation of the object
print(RoleAuthorityResponse.to_json())

# convert the object into a dict
role_authority_response_dict = role_authority_response_instance.to_dict()
# create an instance of RoleAuthorityResponse from a dict
role_authority_response_from_dict = RoleAuthorityResponse.from_dict(role_authority_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



