# EmployeeBankAccountConfigurationApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_employee_bank_account_configuration**](EmployeeBankAccountConfigurationApi.md#get_employee_bank_account_configuration) | **GET** /core/v1/employees/{employeeId}/bank-account-configurations | Get Employee Bank Account Configuration
[**get_employee_bank_account_configuration_histories**](EmployeeBankAccountConfigurationApi.md#get_employee_bank_account_configuration_histories) | **GET** /core/v1/employees/{employeeId}/bank-account-configurations/histories | Get Employee Bank Account Configuration Histories
[**update_bank_account_configuration**](EmployeeBankAccountConfigurationApi.md#update_bank_account_configuration) | **PUT** /core/v1/employees/{employeeId}/bank-account-configurations | Update Bank Account Configuration


# **get_employee_bank_account_configuration**
> BankAccountConfigurationResponse get_employee_bank_account_configuration(employee_id)

Get Employee Bank Account Configuration

This endpoint is deprecated. Please use /v1/employees/{employeeId}/bank-account-configurations/histories instead.


### Example


```python
from catapa import Catapa, EmployeeBankAccountConfigurationApi, ApiException
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
api_instance = EmployeeBankAccountConfigurationApi(client)
employee_id = 'employee_id_example' # str | 

try:
    # Get Employee Bank Account Configuration
    api_response = api_instance.get_employee_bank_account_configuration(employee_id)
    print("The response of EmployeeBankAccountConfigurationApi->get_employee_bank_account_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeBankAccountConfigurationApi->get_employee_bank_account_configuration: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 

### Return type

[**BankAccountConfigurationResponse**](../models/BankAccountConfigurationResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employee_bank_account_configuration_histories**
> BankAccountConfigurationPageResponse get_employee_bank_account_configuration_histories(employee_id, page, size)

Get Employee Bank Account Configuration Histories

replacement for /v1/employees/{employeeId}/bank-account-configurations.


### Example


```python
from catapa import Catapa, EmployeeBankAccountConfigurationApi, ApiException
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
api_instance = EmployeeBankAccountConfigurationApi(client)
employee_id = 'employee_id_example' # str | 
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)

try:
    # Get Employee Bank Account Configuration Histories
    api_response = api_instance.get_employee_bank_account_configuration_histories(employee_id, page=page, size=size)
    print("The response of EmployeeBankAccountConfigurationApi->get_employee_bank_account_configuration_histories:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeBankAccountConfigurationApi->get_employee_bank_account_configuration_histories: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]

### Return type

[**BankAccountConfigurationPageResponse**](../models/BankAccountConfigurationPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_bank_account_configuration**
> BankAccountConfigurationResponse update_bank_account_configuration(employee_id, update_bank_account_configuration_request)

Update Bank Account Configuration

This endpoint is deprecated. Please use /v1/bank-account-configurations/approvals instead.


### Example


```python
from catapa import Catapa, EmployeeBankAccountConfigurationApi, ApiException
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
api_instance = EmployeeBankAccountConfigurationApi(client)
employee_id = 'employee_id_example' # str | 
update_bank_account_configuration_request = UpdateBankAccountConfigurationRequest() # UpdateBankAccountConfigurationRequest |  (optional)

try:
    # Update Bank Account Configuration
    api_response = api_instance.update_bank_account_configuration(employee_id, update_bank_account_configuration_request=update_bank_account_configuration_request)
    print("The response of EmployeeBankAccountConfigurationApi->update_bank_account_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeBankAccountConfigurationApi->update_bank_account_configuration: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **update_bank_account_configuration_request** | [**UpdateBankAccountConfigurationRequest**](../models/UpdateBankAccountConfigurationRequest.md)|  | [optional] 

### Return type

[**BankAccountConfigurationResponse**](../models/BankAccountConfigurationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

