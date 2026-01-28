# OauthClientApi

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_o_auth_client_by_id**](OauthClientApi.md#get_o_auth_client_by_id) | **GET** /v1/oauth-clients/{id} | Get OAuth Client by ID
[**list_all_o_auth_clients**](OauthClientApi.md#list_all_o_auth_clients) | **GET** /v1/oauth-clients | List All OAuth Clients


# **get_o_auth_client_by_id**
> OAuthClientResponse get_o_auth_client_by_id(id)

Get OAuth Client by ID


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| OAuth Client ID | 

### Return type

[**OAuthClientResponse**](../models/OAuthClientResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **list_all_o_auth_clients**
> OAuthClientPageResponse list_all_o_auth_clients(page, size)

List All OAuth Clients


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [default to 0]
 **size** | **int**| Page size | [default to 10]

### Return type

[**OAuthClientPageResponse**](../models/OAuthClientPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

