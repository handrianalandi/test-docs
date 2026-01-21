# EmploymentStatusApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_employment_status_by_employee**](EmploymentStatusApi.md#get_employment_status_by_employee) | **GET** /core/v1/employees/{employeeId}/employment-data | Get Employment Status by Employee
[**get_employment_status_histories**](EmploymentStatusApi.md#get_employment_status_histories) | **GET** /core/v1/employment-status-histories | Get Employment Status Histories
[**get_employment_statuses**](EmploymentStatusApi.md#get_employment_statuses) | **GET** /core/v1/employment-statuses | Get Employment Statuses
[**update_employment_status_by_employee**](EmploymentStatusApi.md#update_employment_status_by_employee) | **PUT** /core/v1/employees/{employeeId}/employment-data | Update Employment Status by Employee


# **get_employment_status_by_employee**
> EmploymentDataResponse get_employment_status_by_employee(employee_id, query)

Get Employment Status by Employee

⚠️ **This endpoint is deprecated.**   Please use [Get Employment Statuses](https://api-docs.catapa.com/#tag/employment-status/operation/getEmploymentStatuses) instead.



### Example


```python
from catapa import Catapa, EmploymentStatusApi, ApiException
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
api_instance = EmploymentStatusApi(client)
employee_id = 'employee_id_example' # str | 
query = 'effectiveDate>2023-09-20' # str | ### Search query | Supported Keys | Supported Operators | Notes                                                                                                                                | |----------------|---------------------|--------------------------------------------------------------------------------------------------------------------------------------| | effectiveDate  | `>`<br/>`<`         | Greater than or equal operator<br/>Less than or equal operator<br/><br/>Use the `YYYY-MM-DD` format, e.g. `effectiveDate>2023-09-20` |  (optional)

try:
    # Get Employment Status by Employee
    api_response = api_instance.get_employment_status_by_employee(employee_id, query=query)
    print("The response of EmploymentStatusApi->get_employment_status_by_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmploymentStatusApi->get_employment_status_by_employee: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **query** | **str**| ### Search query | Supported Keys | Supported Operators | Notes                                                                                                                                | |----------------|---------------------|--------------------------------------------------------------------------------------------------------------------------------------| | effectiveDate  | &#x60;&gt;&#x60;&lt;br/&gt;&#x60;&lt;&#x60;         | Greater than or equal operator&lt;br/&gt;Less than or equal operator&lt;br/&gt;&lt;br/&gt;Use the &#x60;YYYY-MM-DD&#x60; format, e.g. &#x60;effectiveDate&gt;2023-09-20&#x60; |  | [optional] 

### Return type

[**EmploymentDataResponse**](../models/EmploymentDataResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employment_status_histories**
> EmploymentStatusHistoryListResponse get_employment_status_histories(page, size, query)

Get Employment Status Histories


### Example


```python
from catapa import Catapa, EmploymentStatusApi, ApiException
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
api_instance = EmploymentStatusApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | employee.id        | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | effectiveDate      | `<`                 | Less than or equal to<br/><br/>Use `yyyy-MM-dd` format, e.g. `effectiveDate<2025-01-31  ` |  (optional)

try:
    # Get Employment Status Histories
    api_response = api_instance.get_employment_status_histories(page=page, size=size, query=query)
    print("The response of EmploymentStatusApi->get_employment_status_histories:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmploymentStatusApi->get_employment_status_histories: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | id                 | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | employee.id        | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | effectiveDate      | &#x60;&lt;&#x60;                 | Less than or equal to&lt;br/&gt;&lt;br/&gt;Use &#x60;yyyy-MM-dd&#x60; format, e.g. &#x60;effectiveDate&lt;2025-01-31  &#x60; |  | [optional] 

### Return type

[**EmploymentStatusHistoryListResponse**](../models/EmploymentStatusHistoryListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employment_statuses**
> EmploymentStatusListResponse get_employment_statuses(page, size, query)

Get Employment Statuses


### Example


```python
from catapa import Catapa, EmploymentStatusApi, ApiException
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
api_instance = EmploymentStatusApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | employee.id        | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |  (optional)

try:
    # Get Employment Statuses
    api_response = api_instance.get_employment_statuses(page=page, size=size, query=query)
    print("The response of EmploymentStatusApi->get_employment_statuses:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmploymentStatusApi->get_employment_statuses: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | id                 | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | employee.id        | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter |  | [optional] 

### Return type

[**EmploymentStatusListResponse**](../models/EmploymentStatusListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_employment_status_by_employee**
> EmploymentDataResponse update_employment_status_by_employee(employee_id, employment_data_request)

Update Employment Status by Employee

### Generate Employment Status Number
The default value for the `generateEmploymentStatusNumber` field in the request body is set to `false`. If a request is sent with the value of `true`, it will first check the existing employee policy. If the employee policy is set to manual, it will accept the employment status number in the request. If the employee policy is set to automatic, it will generate a new employment status number based on the format in the employee policy.



### Example


```python
from catapa import Catapa, EmploymentStatusApi, ApiException
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
api_instance = EmploymentStatusApi(client)
employee_id = 'employee_id_example' # str | 
employment_data_request = EmploymentDataRequest() # EmploymentDataRequest |  (optional)

try:
    # Update Employment Status by Employee
    api_response = api_instance.update_employment_status_by_employee(employee_id, employment_data_request=employment_data_request)
    print("The response of EmploymentStatusApi->update_employment_status_by_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmploymentStatusApi->update_employment_status_by_employee: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **employment_data_request** | [**EmploymentDataRequest**](../models/EmploymentDataRequest.md)|  | [optional] 

### Return type

[**EmploymentDataResponse**](../models/EmploymentDataResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

