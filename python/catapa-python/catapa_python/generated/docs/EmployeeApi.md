# EmployeeApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_employee**](EmployeeApi.md#add_employee) | **POST** /core/v1/employees | Add Employee
[**delete_employee**](EmployeeApi.md#delete_employee) | **DELETE** /core/v1/employees | Delete Employee
[**get_additional_assignment_approvals**](EmployeeApi.md#get_additional_assignment_approvals) | **GET** /core/v1/additional-assignments/approvals | List All Additional Assignment Approvals
[**get_employee_hiring_data**](EmployeeApi.md#get_employee_hiring_data) | **GET** /core/v1/employees/{id}/hiring-data | Get Employee Hiring Data
[**list_all_employees**](EmployeeApi.md#list_all_employees) | **GET** /core/v1/employees | List All Employees
[**update_employee_hiring_data**](EmployeeApi.md#update_employee_hiring_data) | **PUT** /core/v1/employees/{id}/hiring-data | Update Employee Hiring Data
[**update_manager**](EmployeeApi.md#update_manager) | **PUT** /core/v1/employees/{employeeId}/manager | Update Manager


# **add_employee**
> EmployeeCreateResponse add_employee(employee_request)

Add Employee

### Example


```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
employee_request = EmployeeRequest() # EmployeeRequest |  (optional)

try:
    # Add Employee
    api_response = api_instance.add_employee(employee_request=employee_request)
    print("The response of EmployeeApi->add_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->add_employee: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_request** | [**EmployeeRequest**](EmployeeRequest.md)|  | [optional] 

### Return type

[**EmployeeCreateResponse**](EmployeeCreateResponse.md)

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


# **delete_employee**
> BulkOperationResponse delete_employee()

Delete Employee

This endpoint expects a JSON array in the request body,  where each item is an object containing an `id` field representing the employee to delete. The array must contain between 1 and 50 items. **Request body schema:** ```json [   { \"id\": \"string\" } ] ``` **Example payload:** ```json [   { \"id\": \"7eb20b1e-577b-45c0-adf4-c76ae17cdeae\" } ] ``` 

### Example


```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)

try:
    # Delete Employee
    api_response = api_instance.delete_employee()
    print("The response of EmployeeApi->delete_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->delete_employee: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**BulkOperationResponse**](BulkOperationResponse.md)

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


# **get_additional_assignment_approvals**
> AdditionalAssignmentApprovalListResponse get_additional_assignment_approvals(page, size, query)

List All Additional Assignment Approvals

### Example


```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:f47ac10b-58cc-4372-a567-0e02b2c3d479' # str | ### Search Query | Supported Keys          | Supported Operators | Notes                                                                                | |-------------------------|---------------------|--------------------------------------------------------------------------------------| | id                      | `:`                 | Equal operator                                                                       | | employee.id             | `:`                 | Equal operator                                                                       | | employee.name           | `:`                 | Like operator                                                                        | | approvalStatus          | `:`                 | Equal operator                                                                       | | additionalAssignment.id | `:`                 | Equal operator with multiple values. Each value should separated with delimiters `;` |  (optional)

try:
    # List All Additional Assignment Approvals
    api_response = api_instance.get_additional_assignment_approvals(page=page, size=size, query=query)
    print("The response of EmployeeApi->get_additional_assignment_approvals:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->get_additional_assignment_approvals: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys          | Supported Operators | Notes                                                                                | |-------------------------|---------------------|--------------------------------------------------------------------------------------| | id                      | &#x60;:&#x60;                 | Equal operator                                                                       | | employee.id             | &#x60;:&#x60;                 | Equal operator                                                                       | | employee.name           | &#x60;:&#x60;                 | Like operator                                                                        | | approvalStatus          | &#x60;:&#x60;                 | Equal operator                                                                       | | additionalAssignment.id | &#x60;:&#x60;                 | Equal operator with multiple values. Each value should separated with delimiters &#x60;;&#x60; |  | [optional] 

### Return type

[**AdditionalAssignmentApprovalListResponse**](AdditionalAssignmentApprovalListResponse.md)

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


# **get_employee_hiring_data**
> EmployeeHiringDataSimpleResponse get_employee_hiring_data(id)

Get Employee Hiring Data

### Example


```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
id = 'id_example' # str | 

try:
    # Get Employee Hiring Data
    api_response = api_instance.get_employee_hiring_data(id)
    print("The response of EmployeeApi->get_employee_hiring_data:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->get_employee_hiring_data: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**EmployeeHiringDataSimpleResponse**](EmployeeHiringDataSimpleResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | ok |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **list_all_employees**
> EmployeeListResponse list_all_employees(page, size, query)

List All Employees

### Example


```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'identificationNumberIn:E001' # str | ### Search query   | Supported Keys                    | Supported Operators | Notes                                                                                                                                                 | |-----------------------------------|---------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------| | id                                | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter                                                             | | active                            | `:`                 | Equal operator                                                                                                                                        | | createdDate                       | `>`<br/>`<`         | Greater than or equal operator<br/>Less than or equal operator<br/><br/>Use unix timestamp in milliseconds, e.g. `createdDate>1675827618944`          | | employmentStatus.organization.id  | `:`                 | Equal operator                                                                                                                                        | | identificationNumber              | `:`                 | Like operator                                                                                                                                         | | identificationNumberIn            | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter                                                             | | name                              | `:`                 | Like operator                                                                                                                                         | | startDate                         | `:`<br/>`>`<br/>`<` | Equal operator<br/>Greater than or equal operator<br/>Less than or equal operator<br/><br/>Use `yyyy-MM-dd` format, e.g. `startDate>2023-05-31`       | | lastWorkingDate                   | `>`<br/>`<`         | Greater than or equal operator<br/>Less than or equal operator<br/><br/>Use `yyyy-MM-dd` format, e.g. `lastWorkingDate>2023-05-31`                    |  (optional)

try:
    # List All Employees
    api_response = api_instance.list_all_employees(page=page, size=size, query=query)
    print("The response of EmployeeApi->list_all_employees:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->list_all_employees: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search query   | Supported Keys                    | Supported Operators | Notes                                                                                                                                                 | |-----------------------------------|---------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------| | id                                | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter                                                             | | active                            | &#x60;:&#x60;                 | Equal operator                                                                                                                                        | | createdDate                       | &#x60;&gt;&#x60;&lt;br/&gt;&#x60;&lt;&#x60;         | Greater than or equal operator&lt;br/&gt;Less than or equal operator&lt;br/&gt;&lt;br/&gt;Use unix timestamp in milliseconds, e.g. &#x60;createdDate&gt;1675827618944&#x60;          | | employmentStatus.organization.id  | &#x60;:&#x60;                 | Equal operator                                                                                                                                        | | identificationNumber              | &#x60;:&#x60;                 | Like operator                                                                                                                                         | | identificationNumberIn            | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter                                                             | | name                              | &#x60;:&#x60;                 | Like operator                                                                                                                                         | | startDate                         | &#x60;:&#x60;&lt;br/&gt;&#x60;&gt;&#x60;&lt;br/&gt;&#x60;&lt;&#x60; | Equal operator&lt;br/&gt;Greater than or equal operator&lt;br/&gt;Less than or equal operator&lt;br/&gt;&lt;br/&gt;Use &#x60;yyyy-MM-dd&#x60; format, e.g. &#x60;startDate&gt;2023-05-31&#x60;       | | lastWorkingDate                   | &#x60;&gt;&#x60;&lt;br/&gt;&#x60;&lt;&#x60;         | Greater than or equal operator&lt;br/&gt;Less than or equal operator&lt;br/&gt;&lt;br/&gt;Use &#x60;yyyy-MM-dd&#x60; format, e.g. &#x60;lastWorkingDate&gt;2023-05-31&#x60;                    |  | [optional] 

### Return type

[**EmployeeListResponse**](EmployeeListResponse.md)

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


# **update_employee_hiring_data**
> EmployeeHiringDataResponse update_employee_hiring_data(id, employee_hiring_data_request)

Update Employee Hiring Data

### Example


```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
id = 'id_example' # str | 
employee_hiring_data_request = EmployeeHiringDataRequest() # EmployeeHiringDataRequest |  (optional)

try:
    # Update Employee Hiring Data
    api_response = api_instance.update_employee_hiring_data(id, employee_hiring_data_request=employee_hiring_data_request)
    print("The response of EmployeeApi->update_employee_hiring_data:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->update_employee_hiring_data: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **employee_hiring_data_request** | [**EmployeeHiringDataRequest**](EmployeeHiringDataRequest.md)|  | [optional] 

### Return type

[**EmployeeHiringDataResponse**](EmployeeHiringDataResponse.md)

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


# **update_manager**
> EmployeeFullResponse update_manager(employee_id, manager_request)

Update Manager

### Example


```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
employee_id = 'employee_id_example' # str | 
manager_request = ManagerRequest() # ManagerRequest |  (optional)

try:
    # Update Manager
    api_response = api_instance.update_manager(employee_id, manager_request=manager_request)
    print("The response of EmployeeApi->update_manager:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->update_manager: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **manager_request** | [**ManagerRequest**](ManagerRequest.md)|  | [optional] 

### Return type

[**EmployeeFullResponse**](EmployeeFullResponse.md)

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

