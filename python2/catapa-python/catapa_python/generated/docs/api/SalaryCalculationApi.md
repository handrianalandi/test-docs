# SalaryCalculationApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_salary_calculation**](SalaryCalculationApi.md#get_salary_calculation) | **GET** /core/v1/salary-calculations | Get Salary Calculation
[**get_salary_calculation_details**](SalaryCalculationApi.md#get_salary_calculation_details) | **GET** /core/v1/salary-calculations/details | Get Salary Calculation Details
[**get_time_allowance_details_by_salary_calculation_detail**](SalaryCalculationApi.md#get_time_allowance_details_by_salary_calculation_detail) | **GET** /core/v1/salary-calculations/details/{id}/time-allowance-details | Get Time Allowance Details By Salary Calculation Detail
[**update_salary_calculation_detail**](SalaryCalculationApi.md#update_salary_calculation_detail) | **PUT** /core/v1/salary-calculations/{id}/details/salaryItemCode&#x3D;{code} | Update Salary Calculation Detail


# **get_salary_calculation**
> SalaryCalculationListResponse get_salary_calculation()

Get Salary Calculation

### Search Query
| Supported Keys         | Supported Operators | Notes |
| ---------------------- | ------------------- | ----- |
| id                  | :                   | Equal |
| month                  | :                   | Equal |
| year                   | :                   | Equal |
| salaryPaymentProcess   | :                   | Equal |



### Example


```python
from catapa import Catapa, SalaryCalculationApi, ApiException
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
api_instance = SalaryCalculationApi(client)

try:
    # Get Salary Calculation
    api_response = api_instance.get_salary_calculation()
    print("The response of SalaryCalculationApi->get_salary_calculation:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryCalculationApi->get_salary_calculation: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**SalaryCalculationListResponse**](SalaryCalculationListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_salary_calculation_details**
> SalaryCalculationDetailListResponse get_salary_calculation_details()

Get Salary Calculation Details

### Search Query
| Supported Keys      | Supported Operators | Notes         |
| ------------------- | ------------------- | ------------- |
| salaryCalculationId | :                   | Like operator |



### Example


```python
from catapa import Catapa, SalaryCalculationApi, ApiException
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
api_instance = SalaryCalculationApi(client)

try:
    # Get Salary Calculation Details
    api_response = api_instance.get_salary_calculation_details()
    print("The response of SalaryCalculationApi->get_salary_calculation_details:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryCalculationApi->get_salary_calculation_details: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**SalaryCalculationDetailListResponse**](SalaryCalculationDetailListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_time_allowance_details_by_salary_calculation_detail**
> TimeAllowanceDetailsResponse get_time_allowance_details_by_salary_calculation_detail(id)

Get Time Allowance Details By Salary Calculation Detail


### Example


```python
from catapa import Catapa, SalaryCalculationApi, ApiException
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
api_instance = SalaryCalculationApi(client)
id = 'id_example' # str | 

try:
    # Get Time Allowance Details By Salary Calculation Detail
    api_response = api_instance.get_time_allowance_details_by_salary_calculation_detail(id)
    print("The response of SalaryCalculationApi->get_time_allowance_details_by_salary_calculation_detail:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryCalculationApi->get_time_allowance_details_by_salary_calculation_detail: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**TimeAllowanceDetailsResponse**](TimeAllowanceDetailsResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_salary_calculation_detail**
> object update_salary_calculation_detail(id, code, amount_request)

Update Salary Calculation Detail


### Example


```python
from catapa import Catapa, SalaryCalculationApi, ApiException
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
api_instance = SalaryCalculationApi(client)
id = 'id_example' # str | 
code = 'code_example' # str | 
amount_request = AmountRequest() # AmountRequest |  (optional)

try:
    # Update Salary Calculation Detail
    api_response = api_instance.update_salary_calculation_detail(id, code, amount_request=amount_request)
    print("The response of SalaryCalculationApi->update_salary_calculation_detail:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryCalculationApi->update_salary_calculation_detail: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **code** | **str**|  | 
 **amount_request** | [**AmountRequest**](AmountRequest.md)|  | [optional] 

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

