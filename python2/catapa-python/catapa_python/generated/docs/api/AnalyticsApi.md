# AnalyticsApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_analytics_chart**](AnalyticsApi.md#create_analytics_chart) | **POST** /core/v1/analytics/charts | Create Analytics Chart
[**get_analytics_chart**](AnalyticsApi.md#get_analytics_chart) | **GET** /core/v1/analytics/charts | Get Analytics Chart Data
[**get_analytics_data_by_chart_id_and_current_user**](AnalyticsApi.md#get_analytics_data_by_chart_id_and_current_user) | **GET** /core/v1/users/me/analytics/charts/{id}/data | Get Analytics Data by Chart ID and Current User


# **create_analytics_chart**
> AnalyticsChartResponse create_analytics_chart(analytics_chart_request)

Create Analytics Chart


### Example


```python
from catapa import Catapa, AnalyticsApi, ApiException
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
api_instance = AnalyticsApi(client)
analytics_chart_request = AnalyticsChartRequest() # AnalyticsChartRequest |  (optional)

try:
    # Create Analytics Chart
    api_response = api_instance.create_analytics_chart(analytics_chart_request=analytics_chart_request)
    print("The response of AnalyticsApi->create_analytics_chart:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AnalyticsApi->create_analytics_chart: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **analytics_chart_request** | [**AnalyticsChartRequest**](AnalyticsChartRequest.md)|  | [optional] 

### Return type

[**AnalyticsChartResponse**](AnalyticsChartResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_analytics_chart**
> AnalyticsChartListResponse get_analytics_chart()

Get Analytics Chart Data

### Search Query
| Supported Keys | Supported Operators | Notes         |
|----------------|---------------------|---------------|
| title          | :                   | Like operator |



### Example


```python
from catapa import Catapa, AnalyticsApi, ApiException
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
api_instance = AnalyticsApi(client)

try:
    # Get Analytics Chart Data
    api_response = api_instance.get_analytics_chart()
    print("The response of AnalyticsApi->get_analytics_chart:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AnalyticsApi->get_analytics_chart: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**AnalyticsChartListResponse**](AnalyticsChartListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_analytics_data_by_chart_id_and_current_user**
> AnalyticsChartDataResponse get_analytics_data_by_chart_id_and_current_user(tenant, id)

Get Analytics Data by Chart ID and Current User

Get Analytics Data by Chart ID and Current User


### Example


```python
from catapa import Catapa, AnalyticsApi, ApiException
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
api_instance = AnalyticsApi(client)
tenant = 'tenant_example' # str | 
id = 'id_example' # str | 

try:
    # Get Analytics Data by Chart ID and Current User
    api_response = api_instance.get_analytics_data_by_chart_id_and_current_user(tenant, id)
    print("The response of AnalyticsApi->get_analytics_data_by_chart_id_and_current_user:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AnalyticsApi->get_analytics_data_by_chart_id_and_current_user: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant** | **str**|  | 
 **id** | **str**|  | 

### Return type

[**AnalyticsChartDataResponse**](AnalyticsChartDataResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

