# CustomTableApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_all_custom_tables**](CustomTableApi.md#find_all_custom_tables) | **GET** /core/v1/custom-tables | Retrieve all custom tables
[**find_custom_table_by_id**](CustomTableApi.md#find_custom_table_by_id) | **GET** /core/v1/custom-tables/{tableId} | Find Custom Table by Table ID


# **find_all_custom_tables**
> CustomTableListResponse find_all_custom_tables(page, size, query)

Retrieve all custom tables


### Example


```python
from catapa import Catapa, CustomTableApi, ApiException
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
api_instance = CustomTableApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:a31aa166-70be-4303-81e4-5ada93b5213a' # str | ### Search Query | Supported Keys      | Supported Operators | Notes                                                                                     | |---------------------|---------------------|-------------------------------------------------------------------------------------------| | id                  | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | tableName           | `:`                 | Like operator                                                                             | | displayName         | `:`                 | Like operator                                                                             | | menuLocation        | `:`                 | Like operator                                                                             | | historicalType      | `:`                 | Like operator                                                                             | | parentEntity        | `:`                 | Like operator                                                                             | | parentEntityIsNull  | `:`                 | Equal operator<br/>Boolean                                                                | | parentReferenceField| `:`                 | Like operator                                                                             |  (optional)

try:
    # Retrieve all custom tables
    api_response = api_instance.find_all_custom_tables(page=page, size=size, query=query)
    print("The response of CustomTableApi->find_all_custom_tables:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CustomTableApi->find_all_custom_tables: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys      | Supported Operators | Notes                                                                                     | |---------------------|---------------------|-------------------------------------------------------------------------------------------| | id                  | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | tableName           | &#x60;:&#x60;                 | Like operator                                                                             | | displayName         | &#x60;:&#x60;                 | Like operator                                                                             | | menuLocation        | &#x60;:&#x60;                 | Like operator                                                                             | | historicalType      | &#x60;:&#x60;                 | Like operator                                                                             | | parentEntity        | &#x60;:&#x60;                 | Like operator                                                                             | | parentEntityIsNull  | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Boolean                                                                | | parentReferenceField| &#x60;:&#x60;                 | Like operator                                                                             |  | [optional] 

### Return type

[**CustomTableListResponse**](CustomTableListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful operation |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **find_custom_table_by_id**
> CustomTableResponse find_custom_table_by_id(table_id)

Find Custom Table by Table ID


### Example


```python
from catapa import Catapa, CustomTableApi, ApiException
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
api_instance = CustomTableApi(client)
table_id = 'table_id_example' # str | 

try:
    # Find Custom Table by Table ID
    api_response = api_instance.find_custom_table_by_id(table_id)
    print("The response of CustomTableApi->find_custom_table_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CustomTableApi->find_custom_table_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **str**|  | 

### Return type

[**CustomTableResponse**](CustomTableResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful operation |  -  |
**400** | Bad Request |  -  |
**404** | Custom table not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

