# OauthClientApi

## OauthClientApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                        | HTTP request                   | Description            |
| ----------------------------------------------------------------------------- | ------------------------------ | ---------------------- |
| [**get\_o\_auth\_client\_by\_id**](OauthClientApi.md#get_o_auth_client_by_id) | **GET** /v1/oauth-clients/{id} | Get OAuth Client by ID |
| [**list\_all\_o\_auth\_clients**](OauthClientApi.md#list_all_o_auth_clients)  | **GET** /v1/oauth-clients      | List All OAuth Clients |

## **get\_o\_auth\_client\_by\_id**

> OAuthClientResponse get\_o\_auth\_client\_by\_id(id)

Get OAuth Client by ID

#### Example

```python
from catapa import Catapa, OauthClientApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = OauthClientApi(client)
id = 'id_example' # str | OAuth Client ID

try:
    # Get OAuth Client by ID
    api_response = api_instance.get_o_auth_client_by_id(id)
    print("The response of OauthClientApi->get_o_auth_client_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OauthClientApi->get_o_auth_client_by_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description     | Notes |
| ------ | ------- | --------------- | ----- |
| **id** | **str** | OAuth Client ID |       |

#### Return type

[**OAuthClientResponse**](OAuthClientResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |
| **404**     | Not Found   | -                |

[\[Back to top\]](OauthClientApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **list\_all\_o\_auth\_clients**

> OAuthClientListResponse list\_all\_o\_auth\_clients(page, size)

List All OAuth Clients

#### Example

```python
from catapa import Catapa, OauthClientApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = OauthClientApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)

try:
    # List All OAuth Clients
    api_response = api_instance.list_all_o_auth_clients(page=page, size=size)
    print("The response of OauthClientApi->list_all_o_auth_clients:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OauthClientApi->list_all_o_auth_clients: %s\n" % e)
```

#### Parameters

| Name     | Type    | Description | Notes                        |
| -------- | ------- | ----------- | ---------------------------- |
| **page** | **int** | Page number | \[optional] \[default to 0]  |
| **size** | **int** | Page size   | \[optional] \[default to 10] |

#### Return type

[**OAuthClientListResponse**](OAuthClientListResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](OauthClientApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
