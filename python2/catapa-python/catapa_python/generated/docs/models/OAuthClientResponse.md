# OAuthClientResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | OAuth client unique identifier | 
**client_id** | **str** | OAuth client ID used for authentication | 
**scope** | **str** | OAuth scopes granted to this client | 
**authorized_grant_types** | **str** | Comma-separated list of authorized grant types (e.g., client_credentials, authorization_code, refresh_token) | 
**authorities** | **str** | Authorities granted to this client | 
**web_server_redirect_uri** | **str** | Redirect URI for web server flow | 
**authorize_all_endpoints** | **bool** | Whether this client is authorized to access all endpoints | 

## Example

```python
from catapa import OAuthClientResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OAuthClientResponse from a JSON string
o_auth_client_response_instance = OAuthClientResponse.from_json(json)
# print the JSON string representation of the object
print(OAuthClientResponse.to_json())

# convert the object into a dict
o_auth_client_response_dict = o_auth_client_response_instance.to_dict()
# create an instance of OAuthClientResponse from a dict
o_auth_client_response_from_dict = OAuthClientResponse.from_dict(o_auth_client_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



