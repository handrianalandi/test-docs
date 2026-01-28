# SeveranceApi

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_severance_plan**](SeveranceApi.md#create_severance_plan) | **POST** /core/v1/termination-entries/{id}/severance-plans | Create Severance Plan
[**delete_severance_plans_by_id**](SeveranceApi.md#delete_severance_plans_by_id) | **DELETE** /core/v1/severance-plans/{id} | Delete Severance Plans By Id
[**download_severance_slip**](SeveranceApi.md#download_severance_slip) | **GET** /core/v1/employees/{id}/payslip/severance | Download Severance Slip
[**get_severance_payment_plan**](SeveranceApi.md#get_severance_payment_plan) | **GET** /core/v1/severance-payment-plans | Get Severance Payment Plan
[**get_severance_payment_plan_by_id**](SeveranceApi.md#get_severance_payment_plan_by_id) | **GET** /core/v1/severance-payment-plans/{id} | Get Severance Payment Plan By Id
[**get_severance_plans**](SeveranceApi.md#get_severance_plans) | **GET** /core/v1/severance-plans | Get Severance Plans
[**get_severance_plans_by_id**](SeveranceApi.md#get_severance_plans_by_id) | **GET** /core/v1/severance-plans/{id} | Get Severance Plans By Id


# **create_severance_plan**
> SeverancePlanResponseWithDetail create_severance_plan(id, severance_plan_request)

Create Severance Plan


### Example


```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 
severance_plan_request = SeverancePlanRequest() # SeverancePlanRequest |  (optional)

try:
    # Create Severance Plan
    api_response = api_instance.create_severance_plan(id, severance_plan_request=severance_plan_request)
    print("The response of SeveranceApi->create_severance_plan:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->create_severance_plan: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **severance_plan_request** | [**SeverancePlanRequest**](../models/SeverancePlanRequest.md)|  | 

### Return type

[**SeverancePlanResponseWithDetail**](../models/SeverancePlanResponseWithDetail.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **delete_severance_plans_by_id**
> object delete_severance_plans_by_id(id)

Delete Severance Plans By Id


### Example


```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 

try:
    # Delete Severance Plans By Id
    api_response = api_instance.delete_severance_plans_by_id(id)
    print("The response of SeveranceApi->delete_severance_plans_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->delete_severance_plans_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **download_severance_slip**
> object download_severance_slip(id)

Download Severance Slip


### Example


```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 

try:
    # Download Severance Slip
    api_response = api_instance.download_severance_slip(id)
    print("The response of SeveranceApi->download_severance_slip:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->download_severance_slip: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_severance_payment_plan**
> SeverancePaymentPlanPageResponse get_severance_payment_plan()

Get Severance Payment Plan

### Search Query
| Supported Keys | Supported Operators | Notes                                                                                       |
| -------------- | ------------------- | ------------------------------------------------------------------------------------------- |
| paymentDate    | :<br>\><br><        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to operator       |
| plannedDate    | :<br>\><br><        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |
| paymentMethod  | :                   | Equal operator                                                                              |
| paymentOption  | :                   | Equal operator                                                                              |
| paid           | :                   | Equal operator                                                                              |



### Example


```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)

try:
    # Get Severance Payment Plan
    api_response = api_instance.get_severance_payment_plan()
    print("The response of SeveranceApi->get_severance_payment_plan:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->get_severance_payment_plan: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**SeverancePaymentPlanPageResponse**](../models/SeverancePaymentPlanPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_severance_payment_plan_by_id**
> SeverancePaymentPlanResponse get_severance_payment_plan_by_id(id)

Get Severance Payment Plan By Id


### Example


```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 

try:
    # Get Severance Payment Plan By Id
    api_response = api_instance.get_severance_payment_plan_by_id(id)
    print("The response of SeveranceApi->get_severance_payment_plan_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->get_severance_payment_plan_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**SeverancePaymentPlanResponse**](../models/SeverancePaymentPlanResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_severance_plans**
> SeverancePlanPageResponse get_severance_plans()

Get Severance Plans

### Search Query
| Supported Keys               | Supported Operators | Notes                 |
| ---------------------------- | ------------------- | --------------------- |
| employeeIdentificationNumber | :                   | Like operator<br><br> |
| employeeName                 | :                   | Like operator         |
| paymentMethod                | :                   | Equal operator        |
| paymentOption                | :                   | Equal operator        |



### Example


```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)

try:
    # Get Severance Plans
    api_response = api_instance.get_severance_plans()
    print("The response of SeveranceApi->get_severance_plans:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->get_severance_plans: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**SeverancePlanPageResponse**](../models/SeverancePlanPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_severance_plans_by_id**
> SeverancePlanResponseWithDetail get_severance_plans_by_id(id)

Get Severance Plans By Id


### Example


```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 

try:
    # Get Severance Plans By Id
    api_response = api_instance.get_severance_plans_by_id(id)
    print("The response of SeveranceApi->get_severance_plans_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->get_severance_plans_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**SeverancePlanResponseWithDetail**](../models/SeverancePlanResponseWithDetail.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

