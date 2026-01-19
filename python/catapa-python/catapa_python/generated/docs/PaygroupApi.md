# PaygroupApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_paygroup**](PaygroupApi.md#get_paygroup) | **GET** /core/v1/paygroups | Get Paygroup


# **get_paygroup**
> PaygroupListResponse get_paygroup()

Get Paygroup

### Search Query | Supported Keys  | Supported Operators | Notes   | | --------------- | ------------------- | ------- | | code            | :                   | Equal   | | defaultPaygroup | :                   | boolean | 

### Example


```python
from catapa import Catapa, PaygroupApi, ApiException
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
api_instance = PaygroupApi(client)

try:
    # Get Paygroup
    api_response = api_instance.get_paygroup()
    print("The response of PaygroupApi->get_paygroup:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PaygroupApi->get_paygroup: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**PaygroupListResponse**](PaygroupListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

