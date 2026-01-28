# PayrollOthersApi

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_additional_income**](PayrollOthersApi.md#get_additional_income) | **GET** /core/v1/additional-income-payments | Get Additional Income
[**get_monthly_recapitulation**](PayrollOthersApi.md#get_monthly_recapitulation) | **GET** /core/v1/monthly-recapitulation/{filterType} | Get Monthly Recapitulation


# **get_additional_income**
> AdditionalIncomePaymentPageResponse get_additional_income()

Get Additional Income

### Search Query
| Supported Keys | Supported Operators |Notes                                                      |
| -------------- | ------------------- |---------------------------------------------------------- |
| paymentDate    | :<br>><br><         |Equal<br>Greater than or equal to<br>Less than or equal to |
| payment.process    | :     |Equal<br>Boolean



### Example


```python
from catapa import Catapa, PayrollOthersApi, ApiException
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
api_instance = PayrollOthersApi(client)

try:
    # Get Additional Income
    api_response = api_instance.get_additional_income()
    print("The response of PayrollOthersApi->get_additional_income:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayrollOthersApi->get_additional_income: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**AdditionalIncomePaymentPageResponse**](../models/AdditionalIncomePaymentPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_monthly_recapitulation**
> MonthlyRecapitulationPageResponse get_monthly_recapitulation(filter_type, year, month)

Get Monthly Recapitulation


### Example


```python
from catapa import Catapa, PayrollOthersApi, ApiException
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
api_instance = PayrollOthersApi(client)
filter_type = 'filter_type_example' # str | 
year = 3.4 # float |  (optional)
month = 3.4 # float |  (optional)

try:
    # Get Monthly Recapitulation
    api_response = api_instance.get_monthly_recapitulation(filter_type, year=year, month=month)
    print("The response of PayrollOthersApi->get_monthly_recapitulation:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayrollOthersApi->get_monthly_recapitulation: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_type** | **str**|  | 
 **year** | **float**|  | 
 **month** | **float**|  | 

### Return type

[**MonthlyRecapitulationPageResponse**](../models/MonthlyRecapitulationPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

