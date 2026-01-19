# BankAccountConfigurationApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approve_approval**](BankAccountConfigurationApi.md#approve_approval) | **PUT** /core/v1/bank-account-configurations/approvals/approve | Update Bank Account Configuration
[**cancel_approval**](BankAccountConfigurationApi.md#cancel_approval) | **PUT** /core/v1/bank-account-configurations/approvals/{id}/cancel | Cancel Bank Account Configuration
[**create_bank_account_configuration_approval**](BankAccountConfigurationApi.md#create_bank_account_configuration_approval) | **POST** /core/v1/bank-account-configurations/approvals | Create Bank Account Configuration Approval
[**get_bank_account_configuration_by_id**](BankAccountConfigurationApi.md#get_bank_account_configuration_by_id) | **GET** /core/v1/bank-account-configurations/{id} | Get Bank Account Configuration by Id
[**get_bank_account_configurations**](BankAccountConfigurationApi.md#get_bank_account_configurations) | **GET** /core/v1/bank-account-configurations | Get all bank account configurations
[**reject_approval**](BankAccountConfigurationApi.md#reject_approval) | **PUT** /core/v1/bank-account-configurations/approvals/reject | Reject Bank Account Configuration
[**undo**](BankAccountConfigurationApi.md#undo) | **PUT** /core/v1/bank-account-configurations/approvals/undo | Undo Bank Account Configuration
[**update_bank_account_configuration_approval**](BankAccountConfigurationApi.md#update_bank_account_configuration_approval) | **PUT** /core/v1/bank-account-configurations/approvals/{id} | Update Bank Account Configuration Approval


# **approve_approval**
> BulkOperationResponse approve_approval(id_request)

Update Bank Account Configuration

### Example


```python
from catapa import Catapa, BankAccountConfigurationApi, ApiException
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
api_instance = BankAccountConfigurationApi(client)
id_request = List[IdRequest]() # List[IdRequest] |  (optional)

try:
    # Update Bank Account Configuration
    api_response = api_instance.approve_approval(id_request=id_request)
    print("The response of BankAccountConfigurationApi->approve_approval:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BankAccountConfigurationApi->approve_approval: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_request** | [**List[IdRequest]**](IdRequest.md)|  | [optional] 

### Return type

[**BulkOperationResponse**](BulkOperationResponse.md)

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


# **cancel_approval**
> cancel_approval(id)

Cancel Bank Account Configuration

### Example


```python
from catapa import Catapa, BankAccountConfigurationApi, ApiException
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
api_instance = BankAccountConfigurationApi(client)
id = 'id_example' # str | 

try:
    # Cancel Bank Account Configuration
    api_instance.cancel_approval(id)
except ApiException as e:
    print("Exception when calling BankAccountConfigurationApi->cancel_approval: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_bank_account_configuration_approval**
> BankAccountConfigurationResponse create_bank_account_configuration_approval(update_bank_account_configuration_request)

Create Bank Account Configuration Approval

Replacement for /v1/employees/{employeeId}/bank-account-configurations.

### Example


```python
from catapa import Catapa, BankAccountConfigurationApi, ApiException
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
api_instance = BankAccountConfigurationApi(client)
update_bank_account_configuration_request = UpdateBankAccountConfigurationRequest() # UpdateBankAccountConfigurationRequest |  (optional)

try:
    # Create Bank Account Configuration Approval
    api_response = api_instance.create_bank_account_configuration_approval(update_bank_account_configuration_request=update_bank_account_configuration_request)
    print("The response of BankAccountConfigurationApi->create_bank_account_configuration_approval:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BankAccountConfigurationApi->create_bank_account_configuration_approval: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_bank_account_configuration_request** | [**UpdateBankAccountConfigurationRequest**](UpdateBankAccountConfigurationRequest.md)|  | [optional] 

### Return type

[**BankAccountConfigurationResponse**](BankAccountConfigurationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_bank_account_configuration_by_id**
> BankAccountConfigurationResponse get_bank_account_configuration_by_id(id)

Get Bank Account Configuration by Id

### Example


```python
from catapa import Catapa, BankAccountConfigurationApi, ApiException
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
api_instance = BankAccountConfigurationApi(client)
id = 'id_example' # str | 

try:
    # Get Bank Account Configuration by Id
    api_response = api_instance.get_bank_account_configuration_by_id(id)
    print("The response of BankAccountConfigurationApi->get_bank_account_configuration_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BankAccountConfigurationApi->get_bank_account_configuration_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**BankAccountConfigurationResponse**](BankAccountConfigurationResponse.md)

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


# **get_bank_account_configurations**
> BankAccountConfigurationListResponse get_bank_account_configurations(page, size, query)

Get all bank account configurations

Get all bank account configurations with pagination

### Example


```python
from catapa import Catapa, BankAccountConfigurationApi, ApiException
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
api_instance = BankAccountConfigurationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'query_example' # str | ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | employee.id     | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |  (optional)

try:
    # Get all bank account configurations
    api_response = api_instance.get_bank_account_configurations(page=page, size=size, query=query)
    print("The response of BankAccountConfigurationApi->get_bank_account_configurations:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BankAccountConfigurationApi->get_bank_account_configurations: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | employee.id     | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter |  | [optional] 

### Return type

[**BankAccountConfigurationListResponse**](BankAccountConfigurationListResponse.md)

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


# **reject_approval**
> BulkOperationResponse reject_approval(reject_approval_request)

Reject Bank Account Configuration

### Example


```python
from catapa import Catapa, BankAccountConfigurationApi, ApiException
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
api_instance = BankAccountConfigurationApi(client)
reject_approval_request = List[RejectApprovalRequest]() # List[RejectApprovalRequest] |  (optional)

try:
    # Reject Bank Account Configuration
    api_response = api_instance.reject_approval(reject_approval_request=reject_approval_request)
    print("The response of BankAccountConfigurationApi->reject_approval:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BankAccountConfigurationApi->reject_approval: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reject_approval_request** | [**List[RejectApprovalRequest]**](RejectApprovalRequest.md)|  | [optional] 

### Return type

[**BulkOperationResponse**](BulkOperationResponse.md)

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


# **undo**
> BulkOperationResponse undo(id_request)

Undo Bank Account Configuration

### Example


```python
from catapa import Catapa, BankAccountConfigurationApi, ApiException
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
api_instance = BankAccountConfigurationApi(client)
id_request = List[IdRequest]() # List[IdRequest] |  (optional)

try:
    # Undo Bank Account Configuration
    api_response = api_instance.undo(id_request=id_request)
    print("The response of BankAccountConfigurationApi->undo:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BankAccountConfigurationApi->undo: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_request** | [**List[IdRequest]**](IdRequest.md)|  | [optional] 

### Return type

[**BulkOperationResponse**](BulkOperationResponse.md)

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


# **update_bank_account_configuration_approval**
> BankAccountConfigurationResponse update_bank_account_configuration_approval(id, update_bank_account_configuration_request)

Update Bank Account Configuration Approval

### Example


```python
from catapa import Catapa, BankAccountConfigurationApi, ApiException
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
api_instance = BankAccountConfigurationApi(client)
id = 'id_example' # str | 
update_bank_account_configuration_request = UpdateBankAccountConfigurationRequest() # UpdateBankAccountConfigurationRequest |  (optional)

try:
    # Update Bank Account Configuration Approval
    api_response = api_instance.update_bank_account_configuration_approval(id, update_bank_account_configuration_request=update_bank_account_configuration_request)
    print("The response of BankAccountConfigurationApi->update_bank_account_configuration_approval:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BankAccountConfigurationApi->update_bank_account_configuration_approval: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **update_bank_account_configuration_request** | [**UpdateBankAccountConfigurationRequest**](UpdateBankAccountConfigurationRequest.md)|  | [optional] 

### Return type

[**BankAccountConfigurationResponse**](BankAccountConfigurationResponse.md)

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

