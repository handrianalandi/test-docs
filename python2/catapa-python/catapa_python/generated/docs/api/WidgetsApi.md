# WidgetsApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_widgets_by_current_user**](WidgetsApi.md#get_widgets_by_current_user) | **GET** /core/v1/users/me/widgets | Get Widgets by Current User


# **get_widgets_by_current_user**
> WidgetPageResponse get_widgets_by_current_user()

Get Widgets by Current User

### Search Query
| Supported Keys | Supported Operators | Notes         |
|----------------|---------------------|---------------|
| widgetType          | :                   | Equal operator |



### Example


```python
from catapa import Catapa, WidgetsApi, ApiException
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
api_instance = WidgetsApi(client)

try:
    # Get Widgets by Current User
    api_response = api_instance.get_widgets_by_current_user()
    print("The response of WidgetsApi->get_widgets_by_current_user:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WidgetsApi->get_widgets_by_current_user: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**WidgetPageResponse**](../models/WidgetPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

