# EmployeePaygroupApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_employee_paygroup_by_id**](EmployeePaygroupApi.md#get_employee_paygroup_by_id) | **GET** /core/v1/employee-paygroups/{id} | Get Employee Paygroup by ID
[**get_employee_paygroups**](EmployeePaygroupApi.md#get_employee_paygroups) | **GET** /core/v1/employee-paygroups | Get Employee Paygroups


# **get_employee_paygroup_by_id**
> EmployeePaygroupResponse get_employee_paygroup_by_id(id)

Get Employee Paygroup by ID


### Example


```python
from catapa import Catapa, EmployeePaygroupApi, ApiException
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
api_instance = EmployeePaygroupApi(client)
id = 'id_example' # str | 

try:
    # Get Employee Paygroup by ID
    api_response = api_instance.get_employee_paygroup_by_id(id)
    print("The response of EmployeePaygroupApi->get_employee_paygroup_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeePaygroupApi->get_employee_paygroup_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**EmployeePaygroupResponse**](EmployeePaygroupResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_employee_paygroups**
> EmployeePaygroupListResponse get_employee_paygroups(page, size, query)

Get Employee Paygroups


### Example


```python
from catapa import Catapa, EmployeePaygroupApi, ApiException
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
api_instance = EmployeePaygroupApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'query_example' # str | ### Search Query | Supported Keys          | Supported Operators | Notes                                                                                | |-------------------------|---------------------|--------------------------------------------------------------------------------------| | employee.id             | `:`                 | Equal operator with multiple values. Each value should separated with delimiters `;` | | effectiveDate           | `>`<br/>`<`<br/>`=` | Equal operator<br/>Greater than or equal operator<br/>Less than or equal operator<br/><br/>Use the `YYYY-MM-DD` format, e.g. `effectiveDate>2023-09-20` |  (optional)

try:
    # Get Employee Paygroups
    api_response = api_instance.get_employee_paygroups(page=page, size=size, query=query)
    print("The response of EmployeePaygroupApi->get_employee_paygroups:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeePaygroupApi->get_employee_paygroups: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys          | Supported Operators | Notes                                                                                | |-------------------------|---------------------|--------------------------------------------------------------------------------------| | employee.id             | &#x60;:&#x60;                 | Equal operator with multiple values. Each value should separated with delimiters &#x60;;&#x60; | | effectiveDate           | &#x60;&gt;&#x60;&lt;br/&gt;&#x60;&lt;&#x60;&lt;br/&gt;&#x60;&#x3D;&#x60; | Equal operator&lt;br/&gt;Greater than or equal operator&lt;br/&gt;Less than or equal operator&lt;br/&gt;&lt;br/&gt;Use the &#x60;YYYY-MM-DD&#x60; format, e.g. &#x60;effectiveDate&gt;2023-09-20&#x60; |  | [optional] 

### Return type

[**EmployeePaygroupListResponse**](EmployeePaygroupListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

