# ContactInformationApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_contact_information**](ContactInformationApi.md#get_contact_information) | **GET** /core/v1/employees/{employeeId}/contact-information | Get Contact Information
[**get_historical_contact_information**](ContactInformationApi.md#get_historical_contact_information) | **GET** /core/v1/contact-information | Get Historical Contact Information
[**update_contact_information**](ContactInformationApi.md#update_contact_information) | **PUT** /core/v1/employees/{employeeId}/contact-information | Update Contact Information


# **get_contact_information**
> ContactInformationResponse get_contact_information(employee_id)

Get Contact Information

### Example


```python
from catapa import Catapa, ContactInformationApi, ApiException
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
api_instance = ContactInformationApi(client)
employee_id = 'employee_id_example' # str | 

try:
    # Get Contact Information
    api_response = api_instance.get_contact_information(employee_id)
    print("The response of ContactInformationApi->get_contact_information:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ContactInformationApi->get_contact_information: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 

### Return type

[**ContactInformationResponse**](ContactInformationResponse.md)

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


# **get_historical_contact_information**
> ContactInformationListResponse get_historical_contact_information(page, size, query)

Get Historical Contact Information

### Example


```python
from catapa import Catapa, ContactInformationApi, ApiException
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
api_instance = ContactInformationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;0100902f-5d8f-4de4-8fae-5ced86831dd1' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                                                                                                                                   | |--------------------|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter<br/>The contact information ID value is the same as the ID of the employee who owns this contact information  | | employee.id        | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter<br/>The contact information ID value is the same as the ID of the employee who owns this contact information  |  (optional)

try:
    # Get Historical Contact Information
    api_response = api_instance.get_historical_contact_information(page=page, size=size, query=query)
    print("The response of ContactInformationApi->get_historical_contact_information:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ContactInformationApi->get_historical_contact_information: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                                                                                                                                   | |--------------------|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------| | id                 | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter&lt;br/&gt;The contact information ID value is the same as the ID of the employee who owns this contact information  | | employee.id        | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter&lt;br/&gt;The contact information ID value is the same as the ID of the employee who owns this contact information  |  | [optional] 

### Return type

[**ContactInformationListResponse**](ContactInformationListResponse.md)

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


# **update_contact_information**
> ContactInformationResponse update_contact_information(employee_id, contact_information_request)

Update Contact Information

### Example


```python
from catapa import Catapa, ContactInformationApi, ApiException
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
api_instance = ContactInformationApi(client)
employee_id = 'employee_id_example' # str | 
contact_information_request = ContactInformationRequest() # ContactInformationRequest |  (optional)

try:
    # Update Contact Information
    api_response = api_instance.update_contact_information(employee_id, contact_information_request=contact_information_request)
    print("The response of ContactInformationApi->update_contact_information:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling ContactInformationApi->update_contact_information: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **contact_information_request** | [**ContactInformationRequest**](ContactInformationRequest.md)|  | [optional] 

### Return type

[**ContactInformationResponse**](ContactInformationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

