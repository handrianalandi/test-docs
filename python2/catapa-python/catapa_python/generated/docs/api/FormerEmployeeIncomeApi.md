# FormerEmployeeIncomeApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_former_employee_income_by_id**](FormerEmployeeIncomeApi.md#get_former_employee_income_by_id) | **GET** /core/v1/former-employee-incomes/{id} | Get Former Employee Income By Id
[**get_former_employee_income_employee**](FormerEmployeeIncomeApi.md#get_former_employee_income_employee) | **GET** /core/v1/former-employee-income-employees | Get Former Employee Income Employee
[**get_former_employee_income_employee_by_former_employee_income_id**](FormerEmployeeIncomeApi.md#get_former_employee_income_employee_by_former_employee_income_id) | **GET** /core/v1/former-employee-incomes/{formerEmployeeIncomeId}/former-employee-income-employees | Get Former Employee Income Employee By Former Employee Income Id
[**get_former_employee_incomes**](FormerEmployeeIncomeApi.md#get_former_employee_incomes) | **GET** /core/v1/former-employee-incomes | Get Former Employee Incomes
[**update_former_employee_income_employee_by_former_employee_income_id**](FormerEmployeeIncomeApi.md#update_former_employee_income_employee_by_former_employee_income_id) | **PUT** /core/v1/former-employee-incomes/{formerEmployeeIncomeId}/former-employee-income-employees/amounts | Update Former Employee Income Employee By Former Employee Income Id


# **get_former_employee_income_by_id**
> FormerEmployeeIncomeResponse get_former_employee_income_by_id(id)

Get Former Employee Income By Id


### Example


```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)
id = 'id_example' # str | 

try:
    # Get Former Employee Income By Id
    api_response = api_instance.get_former_employee_income_by_id(id)
    print("The response of FormerEmployeeIncomeApi->get_former_employee_income_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->get_former_employee_income_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**FormerEmployeeIncomeResponse**](FormerEmployeeIncomeResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_former_employee_income_employee**
> FormerEmployeeIncomeEmployeeListResponse get_former_employee_income_employee()

Get Former Employee Income Employee

### Search Query
| Supported Keys | Supported Operators |Notes                                                                                       |
| -------------- | ------------------- |--------------------------------------------------------------------------------------------|
| paymentDate    | :<br>\><br><        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator|
| paid           | :                   | Equal operator                                                                             |



### Example


```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)

try:
    # Get Former Employee Income Employee
    api_response = api_instance.get_former_employee_income_employee()
    print("The response of FormerEmployeeIncomeApi->get_former_employee_income_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->get_former_employee_income_employee: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**FormerEmployeeIncomeEmployeeListResponse**](FormerEmployeeIncomeEmployeeListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_former_employee_income_employee_by_former_employee_income_id**
> FormerEmployeeIncomeEmployeeListResponse get_former_employee_income_employee_by_former_employee_income_id(former_employee_income_id)

Get Former Employee Income Employee By Former Employee Income Id

### Search Query
| Supported Keys | Supported Operators | Notes                                                                                       |
| -------------- | ------------------- | ------------------------------------------------------------------------------------------- |
| paymentDate    | :<br>\><br><        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |
| paid           | :                   | Equal operator                                                                              |



### Example


```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)
former_employee_income_id = 'former_employee_income_id_example' # str | 

try:
    # Get Former Employee Income Employee By Former Employee Income Id
    api_response = api_instance.get_former_employee_income_employee_by_former_employee_income_id(former_employee_income_id)
    print("The response of FormerEmployeeIncomeApi->get_former_employee_income_employee_by_former_employee_income_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->get_former_employee_income_employee_by_former_employee_income_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **former_employee_income_id** | **str**|  | 

### Return type

[**FormerEmployeeIncomeEmployeeListResponse**](FormerEmployeeIncomeEmployeeListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_former_employee_incomes**
> FormerEmployeeIncomeListResponse get_former_employee_incomes()

Get Former Employee Incomes

### Search Query
| Supported Keys         | Supported Operators | Notes                                                                                       |
| ---------------------- | ------------------- | --------------------------------------------------------------------------------------------|
| itemName               | :                   | Like operator<br><br>                                                                       |
| itemType               | :                   | Equal operator                                                                              |
| referenceDate          | :<br>\><br><        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |
| pph21Method            | :                   | Equal operator                                                                              |
| minimumLastWorkingDate | :<br>\><br><        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |
| proportionalMethod     | :                   | Equal operator                                                                              |



### Example


```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)

try:
    # Get Former Employee Incomes
    api_response = api_instance.get_former_employee_incomes()
    print("The response of FormerEmployeeIncomeApi->get_former_employee_incomes:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->get_former_employee_incomes: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**FormerEmployeeIncomeListResponse**](FormerEmployeeIncomeListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_former_employee_income_employee_by_former_employee_income_id**
> object update_former_employee_income_employee_by_former_employee_income_id(former_employee_income_id, former_employee_income_employee_amount_update_request)

Update Former Employee Income Employee By Former Employee Income Id


### Example


```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)
former_employee_income_id = 'former_employee_income_id_example' # str | 
former_employee_income_employee_amount_update_request = List[FormerEmployeeIncomeEmployeeAmountUpdateRequest]() # List[FormerEmployeeIncomeEmployeeAmountUpdateRequest] |  (optional)

try:
    # Update Former Employee Income Employee By Former Employee Income Id
    api_response = api_instance.update_former_employee_income_employee_by_former_employee_income_id(former_employee_income_id, former_employee_income_employee_amount_update_request=former_employee_income_employee_amount_update_request)
    print("The response of FormerEmployeeIncomeApi->update_former_employee_income_employee_by_former_employee_income_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->update_former_employee_income_employee_by_former_employee_income_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **former_employee_income_id** | **str**|  | 
 **former_employee_income_employee_amount_update_request** | [**List[FormerEmployeeIncomeEmployeeAmountUpdateRequest]**](FormerEmployeeIncomeEmployeeAmountUpdateRequest.md)|  | [optional] 

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

