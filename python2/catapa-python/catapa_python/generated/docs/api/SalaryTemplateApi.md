# SalaryTemplateApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_salary_item_add_on**](SalaryTemplateApi.md#add_salary_item_add_on) | **PUT** /core/v1/salary-item-add-on/add | Add Salary Item Add On
[**delete_salary_item_add_on**](SalaryTemplateApi.md#delete_salary_item_add_on) | **DELETE** /core/v1/salary-item-add-on | Delete Salary Item Add On
[**get_salary_item_add_on**](SalaryTemplateApi.md#get_salary_item_add_on) | **GET** /core/v1/salary-item-add-on | Get Salary Item Add On
[**get_salary_template_by_id**](SalaryTemplateApi.md#get_salary_template_by_id) | **GET** /core/v1/salary-templates/{id} | Get Salary Template by ID
[**get_salary_templates**](SalaryTemplateApi.md#get_salary_templates) | **GET** /core/v1/salary-templates | Get Salary Templates
[**subtract_salary_item_add_on**](SalaryTemplateApi.md#subtract_salary_item_add_on) | **PUT** /core/v1/salary-item-add-on/subtract | Subtract Salary Item Add On
[**update_salary_item_add_on**](SalaryTemplateApi.md#update_salary_item_add_on) | **PUT** /core/v1/salary-item-add-on | Update Salary Item Add On


# **add_salary_item_add_on**
> SalaryItemAddOnResponse add_salary_item_add_on(salary_item_add_on_request)

Add Salary Item Add On


### Example


```python
from catapa import Catapa, SalaryTemplateApi, ApiException
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
api_instance = SalaryTemplateApi(client)
salary_item_add_on_request = SalaryItemAddOnRequest() # SalaryItemAddOnRequest |  (optional)

try:
    # Add Salary Item Add On
    api_response = api_instance.add_salary_item_add_on(salary_item_add_on_request=salary_item_add_on_request)
    print("The response of SalaryTemplateApi->add_salary_item_add_on:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryTemplateApi->add_salary_item_add_on: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salary_item_add_on_request** | [**SalaryItemAddOnRequest**](SalaryItemAddOnRequest.md)|  | [optional] 

### Return type

[**SalaryItemAddOnResponse**](SalaryItemAddOnResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **delete_salary_item_add_on**
> object delete_salary_item_add_on(tenant, employee_identification_number, var_date, salary_item_code)

Delete Salary Item Add On


### Example


```python
from catapa import Catapa, SalaryTemplateApi, ApiException
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
api_instance = SalaryTemplateApi(client)
tenant = 'tenant_example' # str | 
employee_identification_number = 'employee_identification_number_example' # str | 
var_date = 'var_date_example' # str | 
salary_item_code = 'salary_item_code_example' # str | 

try:
    # Delete Salary Item Add On
    api_response = api_instance.delete_salary_item_add_on(tenant, employee_identification_number, var_date, salary_item_code)
    print("The response of SalaryTemplateApi->delete_salary_item_add_on:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryTemplateApi->delete_salary_item_add_on: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant** | **str**|  | 
 **employee_identification_number** | **str**|  | 
 **var_date** | **str**|  | 
 **salary_item_code** | **str**|  | 

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_salary_item_add_on**
> SalaryItemAddOnResponse get_salary_item_add_on(employee_identification_number, var_date, salary_item_code)

Get Salary Item Add On


### Example


```python
from catapa import Catapa, SalaryTemplateApi, ApiException
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
api_instance = SalaryTemplateApi(client)
employee_identification_number = 'employee_identification_number_example' # str | 
var_date = 'var_date_example' # str | 
salary_item_code = 'salary_item_code_example' # str | 

try:
    # Get Salary Item Add On
    api_response = api_instance.get_salary_item_add_on(employee_identification_number, var_date, salary_item_code)
    print("The response of SalaryTemplateApi->get_salary_item_add_on:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryTemplateApi->get_salary_item_add_on: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_identification_number** | **str**|  | 
 **var_date** | **str**|  | 
 **salary_item_code** | **str**|  | 

### Return type

[**SalaryItemAddOnResponse**](SalaryItemAddOnResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_salary_template_by_id**
> SalaryTemplateResponse get_salary_template_by_id(id)

Get Salary Template by ID


### Example


```python
from catapa import Catapa, SalaryTemplateApi, ApiException
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
api_instance = SalaryTemplateApi(client)
id = 'id_example' # str | 

try:
    # Get Salary Template by ID
    api_response = api_instance.get_salary_template_by_id(id)
    print("The response of SalaryTemplateApi->get_salary_template_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryTemplateApi->get_salary_template_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**SalaryTemplateResponse**](SalaryTemplateResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_salary_templates**
> SalaryTemplateListResponse get_salary_templates()

Get Salary Templates

### Search Query
| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| code           | :                   | Like operator |
| name           | :                   | Like operator |



### Example


```python
from catapa import Catapa, SalaryTemplateApi, ApiException
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
api_instance = SalaryTemplateApi(client)

try:
    # Get Salary Templates
    api_response = api_instance.get_salary_templates()
    print("The response of SalaryTemplateApi->get_salary_templates:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryTemplateApi->get_salary_templates: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**SalaryTemplateListResponse**](SalaryTemplateListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **subtract_salary_item_add_on**
> object subtract_salary_item_add_on(salary_item_add_on_request)

Subtract Salary Item Add On


### Example


```python
from catapa import Catapa, SalaryTemplateApi, ApiException
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
api_instance = SalaryTemplateApi(client)
salary_item_add_on_request = SalaryItemAddOnRequest() # SalaryItemAddOnRequest |  (optional)

try:
    # Subtract Salary Item Add On
    api_response = api_instance.subtract_salary_item_add_on(salary_item_add_on_request=salary_item_add_on_request)
    print("The response of SalaryTemplateApi->subtract_salary_item_add_on:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryTemplateApi->subtract_salary_item_add_on: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salary_item_add_on_request** | [**SalaryItemAddOnRequest**](SalaryItemAddOnRequest.md)|  | [optional] 

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_salary_item_add_on**
> SalaryItemAddOnResponse update_salary_item_add_on(salary_item_add_on_request)

Update Salary Item Add On


### Example


```python
from catapa import Catapa, SalaryTemplateApi, ApiException
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
api_instance = SalaryTemplateApi(client)
salary_item_add_on_request = SalaryItemAddOnRequest() # SalaryItemAddOnRequest |  (optional)

try:
    # Update Salary Item Add On
    api_response = api_instance.update_salary_item_add_on(salary_item_add_on_request=salary_item_add_on_request)
    print("The response of SalaryTemplateApi->update_salary_item_add_on:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryTemplateApi->update_salary_item_add_on: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **salary_item_add_on_request** | [**SalaryItemAddOnRequest**](SalaryItemAddOnRequest.md)|  | [optional] 

### Return type

[**SalaryItemAddOnResponse**](SalaryItemAddOnResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

