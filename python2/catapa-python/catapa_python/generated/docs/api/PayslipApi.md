# PayslipApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_or_update_payslip_layout**](PayslipApi.md#create_or_update_payslip_layout) | **PUT** /core/v1/payslip-layouts | Create or Update Payslip Layout
[**create_payslip_additional_note**](PayslipApi.md#create_payslip_additional_note) | **POST** /core/v1/payslip-additional-notes | Create Payslip Additional Note
[**delete_payslip_layout_by_id**](PayslipApi.md#delete_payslip_layout_by_id) | **DELETE** /core/v1/payslip-layouts/{id} | Delete Payslip Layout By Id
[**download_payslip**](PayslipApi.md#download_payslip) | **POST** /core/v1/employees/{id}/payslip | Download Payslip
[**get_payslip_additional_notes**](PayslipApi.md#get_payslip_additional_notes) | **GET** /core/v1/payslip-additional-notes | Get Payslip Additional Notes
[**get_payslip_layout_by_id**](PayslipApi.md#get_payslip_layout_by_id) | **GET** /core/v1/payslip-layouts/{id} | Get Payslip Layout By Id
[**get_payslip_layouts**](PayslipApi.md#get_payslip_layouts) | **GET** /core/v1/payslip-layouts | Get Payslip Layouts
[**update_payslip_additional_note_by_id**](PayslipApi.md#update_payslip_additional_note_by_id) | **PUT** /core/v1/payslip-additional-notes/{id} | Update Payslip Additional Note by Id


# **create_or_update_payslip_layout**
> PayslipLayoutResponse create_or_update_payslip_layout(payslip_layout_request)

Create or Update Payslip Layout


### Example


```python
from catapa import Catapa, PayslipApi, ApiException
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
api_instance = PayslipApi(client)
payslip_layout_request = PayslipLayoutRequest() # PayslipLayoutRequest |  (optional)

try:
    # Create or Update Payslip Layout
    api_response = api_instance.create_or_update_payslip_layout(payslip_layout_request=payslip_layout_request)
    print("The response of PayslipApi->create_or_update_payslip_layout:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayslipApi->create_or_update_payslip_layout: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payslip_layout_request** | [**PayslipLayoutRequest**](../models/PayslipLayoutRequest.md)|  | [optional] 

### Return type

[**PayslipLayoutResponse**](../models/PayslipLayoutResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **create_payslip_additional_note**
> PayslipAdditionalNoteResponse create_payslip_additional_note(payslip_additional_note_request)

Create Payslip Additional Note


### Example


```python
from catapa import Catapa, PayslipApi, ApiException
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
api_instance = PayslipApi(client)
payslip_additional_note_request = PayslipAdditionalNoteRequest() # PayslipAdditionalNoteRequest |  (optional)

try:
    # Create Payslip Additional Note
    api_response = api_instance.create_payslip_additional_note(payslip_additional_note_request=payslip_additional_note_request)
    print("The response of PayslipApi->create_payslip_additional_note:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayslipApi->create_payslip_additional_note: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payslip_additional_note_request** | [**PayslipAdditionalNoteRequest**](../models/PayslipAdditionalNoteRequest.md)|  | [optional] 

### Return type

[**PayslipAdditionalNoteResponse**](../models/PayslipAdditionalNoteResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **delete_payslip_layout_by_id**
> object delete_payslip_layout_by_id(tenant, id)

Delete Payslip Layout By Id


### Example


```python
from catapa import Catapa, PayslipApi, ApiException
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
api_instance = PayslipApi(client)
tenant = 'tenant_example' # str | 
id = 'id_example' # str | 

try:
    # Delete Payslip Layout By Id
    api_response = api_instance.delete_payslip_layout_by_id(tenant, id)
    print("The response of PayslipApi->delete_payslip_layout_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayslipApi->delete_payslip_layout_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant** | **str**|  | 
 **id** | **str**|  | 

### Return type

**object**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **download_payslip**
> object download_payslip(id, payslip_download_request)

Download Payslip


### Example


```python
from catapa import Catapa, PayslipApi, ApiException
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
api_instance = PayslipApi(client)
id = 'id_example' # str | 
payslip_download_request = PayslipDownloadRequest() # PayslipDownloadRequest |  (optional)

try:
    # Download Payslip
    api_response = api_instance.download_payslip(id, payslip_download_request=payslip_download_request)
    print("The response of PayslipApi->download_payslip:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayslipApi->download_payslip: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **payslip_download_request** | [**PayslipDownloadRequest**](../models/PayslipDownloadRequest.md)|  | [optional] 

### Return type

**object**

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_payslip_additional_notes**
> PayslipAdditionalNotePageResponse get_payslip_additional_notes()

Get Payslip Additional Notes

### Search Query
| Supported Keys               | Supported Operators | Notes                |
| ---------------------------- | ------------------- | ---------------------|
| paymentDate                  | :                   | Equal operator       |



### Example


```python
from catapa import Catapa, PayslipApi, ApiException
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
api_instance = PayslipApi(client)

try:
    # Get Payslip Additional Notes
    api_response = api_instance.get_payslip_additional_notes()
    print("The response of PayslipApi->get_payslip_additional_notes:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayslipApi->get_payslip_additional_notes: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**PayslipAdditionalNotePageResponse**](../models/PayslipAdditionalNotePageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_payslip_layout_by_id**
> PayslipLayoutResponse get_payslip_layout_by_id(id)

Get Payslip Layout By Id


### Example


```python
from catapa import Catapa, PayslipApi, ApiException
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
api_instance = PayslipApi(client)
id = 'id_example' # str | 

try:
    # Get Payslip Layout By Id
    api_response = api_instance.get_payslip_layout_by_id(id)
    print("The response of PayslipApi->get_payslip_layout_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayslipApi->get_payslip_layout_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**PayslipLayoutResponse**](../models/PayslipLayoutResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_payslip_layouts**
> PayslipLayoutPageResponse get_payslip_layouts()

Get Payslip Layouts

### Search Query
| Supported Keys               | Supported Operators | Notes                |
| ---------------------------- | ------------------- | ---------------------|
| section                      | :                   | Equal operator       |



### Example


```python
from catapa import Catapa, PayslipApi, ApiException
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
api_instance = PayslipApi(client)

try:
    # Get Payslip Layouts
    api_response = api_instance.get_payslip_layouts()
    print("The response of PayslipApi->get_payslip_layouts:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayslipApi->get_payslip_layouts: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**PayslipLayoutPageResponse**](../models/PayslipLayoutPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_payslip_additional_note_by_id**
> PayslipAdditionalNoteResponse update_payslip_additional_note_by_id(id, payslip_additional_note_request)

Update Payslip Additional Note by Id


### Example


```python
from catapa import Catapa, PayslipApi, ApiException
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
api_instance = PayslipApi(client)
id = 'id_example' # str | 
payslip_additional_note_request = PayslipAdditionalNoteRequest() # PayslipAdditionalNoteRequest |  (optional)

try:
    # Update Payslip Additional Note by Id
    api_response = api_instance.update_payslip_additional_note_by_id(id, payslip_additional_note_request=payslip_additional_note_request)
    print("The response of PayslipApi->update_payslip_additional_note_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayslipApi->update_payslip_additional_note_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **payslip_additional_note_request** | [**PayslipAdditionalNoteRequest**](../models/PayslipAdditionalNoteRequest.md)|  | [optional] 

### Return type

[**PayslipAdditionalNoteResponse**](../models/PayslipAdditionalNoteResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

