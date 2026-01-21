# RoleApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_role_authorities**](RoleApi.md#get_role_authorities) | **GET** /v1/roles/{id}/authorities | Get Role Authorities
[**get_role_by_id**](RoleApi.md#get_role_by_id) | **GET** /v1/roles/{id} | Get Role by ID
[**get_role_permissions**](RoleApi.md#get_role_permissions) | **GET** /v1/roles/{id}/permissions | Get Role Permissions
[**list_all_roles**](RoleApi.md#list_all_roles) | **GET** /v1/roles | List All Roles


# **get_role_authorities**
> RoleAuthorityListResponse get_role_authorities(id, page, size)

Get Role Authorities


### Example


```python
from catapa import Catapa, RoleApi, ApiException
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
api_instance = RoleApi(client)
id = 'id_example' # str | Role ID
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)

try:
    # Get Role Authorities
    api_response = api_instance.get_role_authorities(id, page=page, size=size)
    print("The response of RoleApi->get_role_authorities:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling RoleApi->get_role_authorities: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Role ID | 
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]

### Return type

[**RoleAuthorityListResponse**](../models/RoleAuthorityListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Role not found |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_role_by_id**
> RoleDetailResponse get_role_by_id(id)

Get Role by ID


### Example


```python
from catapa import Catapa, RoleApi, ApiException
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
api_instance = RoleApi(client)
id = 'id_example' # str | Role ID

try:
    # Get Role by ID
    api_response = api_instance.get_role_by_id(id)
    print("The response of RoleApi->get_role_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling RoleApi->get_role_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Role ID | 

### Return type

[**RoleDetailResponse**](../models/RoleDetailResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Role not found |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_role_permissions**
> RolePermissionListResponse get_role_permissions(id, expanded)

Get Role Permissions


### Example


```python
from catapa import Catapa, RoleApi, ApiException
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
api_instance = RoleApi(client)
id = 'id_example' # str | Role ID
expanded = False # bool | Controls how permissions are returned: - `false` (default): Returns raw permissions as stored in the database without any transformation.   Permissions with dataId=\"ALL\" will be returned as-is. - `true`: Returns expanded permissions where:   1. Roles with ADMIN type will get all available dataId permissions   2. Any permission with dataId=\"ALL\" will be expanded to show all available dataId       permissions for the same dataType  Raw permissions show the exact database records, while expanded permissions show the effective access granted to the role after applying permission inheritance rules.  (optional) (default to False)

try:
    # Get Role Permissions
    api_response = api_instance.get_role_permissions(id, expanded=expanded)
    print("The response of RoleApi->get_role_permissions:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling RoleApi->get_role_permissions: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Role ID | 
 **expanded** | **bool**| Controls how permissions are returned: - &#x60;false&#x60; (default): Returns raw permissions as stored in the database without any transformation.   Permissions with dataId&#x3D;\&quot;ALL\&quot; will be returned as-is. - &#x60;true&#x60;: Returns expanded permissions where:   1. Roles with ADMIN type will get all available dataId permissions   2. Any permission with dataId&#x3D;\&quot;ALL\&quot; will be expanded to show all available dataId       permissions for the same dataType  Raw permissions show the exact database records, while expanded permissions show the effective access granted to the role after applying permission inheritance rules.  | [optional] [default to False]

### Return type

[**RolePermissionListResponse**](../models/RolePermissionListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Role not found |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **list_all_roles**
> RoleListResponse list_all_roles(page, size, query)

List All Roles


### Example


```python
from catapa import Catapa, RoleApi, ApiException
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
api_instance = RoleApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'name:admin' # str | ### Search query   | Supported Keys | Supported Operators | Notes                                                                                     | |----------------|---------------------|-------------------------------------------------------------------------------------------| | id             | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | name           | `:`                 | Like operator                                                                             |  (optional)

try:
    # List All Roles
    api_response = api_instance.list_all_roles(page=page, size=size, query=query)
    print("The response of RoleApi->list_all_roles:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling RoleApi->list_all_roles: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search query   | Supported Keys | Supported Operators | Notes                                                                                     | |----------------|---------------------|-------------------------------------------------------------------------------------------| | id             | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | name           | &#x60;:&#x60;                 | Like operator                                                                             |  | [optional] 

### Return type

[**RoleListResponse**](../models/RoleListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

