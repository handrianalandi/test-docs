# OAuthClientResponse

## Properties

| Name                      | Type   | Description                                                                                                  |
| :------------------------ | :----- | :----------------------------------------------------------------------------------------------------------- |
| `id`                      | `str`  | OAuth client unique identifier                                                                               |
| `client_id`               | `str`  | OAuth client ID used for authentication                                                                      |
| `scope`                   | `str`  | OAuth scopes granted to this client                                                                          |
| `authorized_grant_types`  | `str`  | Comma-separated list of authorized grant types (e.g., client_credentials, authorization_code, refresh_token) |
| `authorities`             | `str`  | Authorities granted to this client                                                                           |
| `web_server_redirect_uri` | `str`  | Redirect URI for web server flow                                                                             |
| `authorize_all_endpoints` | `bool` | Whether this client is authorized to access all endpoints                                                    |

## Usage Examples

### Creating an instance

```python
from catapa import OAuthClientResponse

o_auth_client_response = OAuthClientResponse(
    id="''",
    client_id="''",
    scope="''",
    authorized_grant_types="''",
    authorities="''",
    web_server_redirect_uri="''",
    authorize_all_endpoints=True,
)
```

### Working with JSON

```python
from catapa import OAuthClientResponse

# Parse from JSON
json_str = '{"id": "example"}'
o_auth_client_response = OAuthClientResponse.from_json(json_str)

# Convert to JSON
print(o_auth_client_response.to_json())
```

### Working with dictionaries

```python
from catapa import OAuthClientResponse

# Convert to/from dictionary
data_dict = o_auth_client_response.to_dict()
o_auth_client_response = OAuthClientResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(o_auth_client_response.id)
# Update properties
o_auth_client_response.id = "new_value"
```
