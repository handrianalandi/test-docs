# CustomTableEntryApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_entry**](CustomTableEntryApi.md#create_entry) | **POST** /core/v1/custom-tables/{tableId}/entries | Create a new entry in a custom table
[**find_all_entries**](CustomTableEntryApi.md#find_all_entries) | **GET** /core/v1/custom-tables/{tableId}/entries | Retrieve all entries for a custom table, with response structure varying based on the custom table columns
[**update_entry**](CustomTableEntryApi.md#update_entry) | **PUT** /core/v1/custom-tables/{tableId}/entries/{entryId} | Update an entry in a custom table


# **create_entry**
> Dict[str, object] create_entry(table_id, request_body)

Create a new entry in a custom table

Creates a new entry in a custom table with the provided details


### Example


```python
from catapa import Catapa, CustomTableEntryApi, ApiException
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
api_instance = CustomTableEntryApi(client)
table_id = 'table_id_example' # str | 
request_body = Dict[str, object]() # Dict[str, object] | 

try:
    # Create a new entry in a custom table
    api_response = api_instance.create_entry(table_id, request_body)
    print("The response of CustomTableEntryApi->create_entry:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CustomTableEntryApi->create_entry: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **str**|  | 
 **request_body** | [**Dict[str, object]**](../models/object.md)|  | 

### Return type

**Dict[str, object]**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Entry created successfully |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **find_all_entries**
> CustomTableEntryPageResponse find_all_entries(table_id, query, page, size)

Retrieve all entries for a custom table, with response structure varying based on the custom table columns


### Example


```python
from catapa import Catapa, CustomTableEntryApi, ApiException
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
api_instance = CustomTableEntryApi(client)
table_id = 'table_id_example' # str | 
query = 'query_example' # str | Filter entries based on specific criteria, depending on the custom table's schema. (optional)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)

try:
    # Retrieve all entries for a custom table, with response structure varying based on the custom table columns
    api_response = api_instance.find_all_entries(table_id, query=query, page=page, size=size)
    print("The response of CustomTableEntryApi->find_all_entries:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CustomTableEntryApi->find_all_entries: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **str**|  | 
 **query** | **str**| Filter entries based on specific criteria, depending on the custom table&#39;s schema. | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]

### Return type

[**CustomTableEntryPageResponse**](../models/CustomTableEntryPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful operation |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_entry**
> Dict[str, object] update_entry(table_id, entry_id, request_body)

Update an entry in a custom table

Updates an existing entry in a custom table with the provided details


### Example


```python
from catapa import Catapa, CustomTableEntryApi, ApiException
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
api_instance = CustomTableEntryApi(client)
table_id = 'table_id_example' # str | 
entry_id = 'entry_id_example' # str | 
request_body = Dict[str, object]() # Dict[str, object] | 

try:
    # Update an entry in a custom table
    api_response = api_instance.update_entry(table_id, entry_id, request_body)
    print("The response of CustomTableEntryApi->update_entry:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CustomTableEntryApi->update_entry: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table_id** | **str**|  | 
 **entry_id** | **str**|  | 
 **request_body** | [**Dict[str, object]**](../models/object.md)|  | 

### Return type

**Dict[str, object]**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Entry updated successfully |  -  |
**400** | Bad Request |  -  |
**404** | Entry not found |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

