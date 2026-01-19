# TransitionCalculationApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_processable_time_allowance_transition**](TransitionCalculationApi.md#get_processable_time_allowance_transition) | **GET** /core/v1/transition-calculations/time-allowances/process/processable | Get Processable Time Allowance Transition
[**get_processable_transition_calculation**](TransitionCalculationApi.md#get_processable_transition_calculation) | **GET** /core/v1/transition-calculations/process/processable/unprocessed | Get Processable Transition Calculation
[**get_processed_transition_calculation**](TransitionCalculationApi.md#get_processed_transition_calculation) | **GET** /core/v1/transition-calculations/process/processable/processed | Get Processed Transition Calculation
[**get_prorate_details_by_transition_calculation_detail_id**](TransitionCalculationApi.md#get_prorate_details_by_transition_calculation_detail_id) | **GET** /core/v1/transition-calculation-details/{id}/prorate-details | Get Prorate Details By Transition Calculation Detail Id
[**get_time_allowance_detailsby_transition_calculation_detail_id**](TransitionCalculationApi.md#get_time_allowance_detailsby_transition_calculation_detail_id) | **GET** /core/v1/transition-calculation-details/{id}/time-allowance-details | Get Time Allowance Details by Transition Calculation Detail Id
[**get_transition_calculation_count**](TransitionCalculationApi.md#get_transition_calculation_count) | **GET** /core/v1/transition-calculations/process/count | Get Transition Calculation Count
[**get_transition_calculationby_id**](TransitionCalculationApi.md#get_transition_calculationby_id) | **GET** /core/v1/transition-calculations/{id} | Get Transition Calculation by Id
[**update_transition_calculation_details_with_editable_type**](TransitionCalculationApi.md#update_transition_calculation_details_with_editable_type) | **PUT** /core/v1/transition-calculations/{id}/details | Update Transition Calculation Details With Editable Type


# **get_processable_time_allowance_transition**
> ProcessableTimeAllowanceTransitionListResponse get_processable_time_allowance_transition()

Get Processable Time Allowance Transition

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed  ### Search Query | Supported Keys               | Supported Operators | Notes                                                                       | | ---------------------------- | ------------------- | --------------------------------------------------------------------------- | | idIn                         | :                   | Equal operator with multiple values, each value separated with delimiters ; | | year                         | :                   | Like operator                                                               | | month                        | :                   | Like operator                                                               | | organizationId               | :                   | Like operator                                                               | | jobTitleId                   | :                   | Like operator                                                               | | locationId                   | :                   | Like operator                                                               | | employeeId                   | :                   | Like operator                                                               | | employeeName                 | :                   | Like operator                                                               | | employeeIdentificationNumber | :                   | Like operator                                                               | | startDate                    | :<br>><br><          | Equal<br>Greater than or equal to<br>Less than or equal to                  | | endDate                      | :<br>><br><          | Equal<br>Greater than or equal to<br>Less than or equal to                  | 

### Example


```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)

try:
    # Get Processable Time Allowance Transition
    api_response = api_instance.get_processable_time_allowance_transition()
    print("The response of TransitionCalculationApi->get_processable_time_allowance_transition:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_processable_time_allowance_transition: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**ProcessableTimeAllowanceTransitionListResponse**](ProcessableTimeAllowanceTransitionListResponse.md)

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


# **get_processable_transition_calculation**
> UnprocessedTransitionCalculationListResponse get_processable_transition_calculation()

Get Processable Transition Calculation

⚠️ **This endpoint is deprecated.**  Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed  --- ### Search Query | Supported Keys               | Supported Operators | Notes                                                                       | | ---------------------------- | ------------------- | --------------------------------------------------------------------------- | | idIn                         | :                   | Equal operator with multiple values, each value separated with delimiters ; | | year                         | :                   | Like operator                                                               | | month                        | :                   | Like operator                                                               | | organizationId               | :                   | Like operator                                                               | | jobTitleId                   | :                   | Like operator                                                               | | locationId                   | :                   | Like operator                                                               | | employeeId                   | :                   | Like operator                                                               | | employeeName                 | :                   | Like operator                                                               | | employeeIdentificationNumber | :                   | Like operator                                                               | | startDate                    | :<br>><br><          | Equal<br>Greater than or equal to<br>Less than or equal to                  | | endDate                      | :<br>><br><          | Equal<br>Greater than or equal to<br>Less than or equal to                  | 

### Example


```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)

try:
    # Get Processable Transition Calculation
    api_response = api_instance.get_processable_transition_calculation()
    print("The response of TransitionCalculationApi->get_processable_transition_calculation:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_processable_transition_calculation: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**UnprocessedTransitionCalculationListResponse**](UnprocessedTransitionCalculationListResponse.md)

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


# **get_processed_transition_calculation**
> ProcessedTransitionCalculationListResponse get_processed_transition_calculation()

Get Processed Transition Calculation

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed  --- ### Search Query | Supported Keys               | Supported Operators | Notes                                                                       | | ---------------------------- | ------------------- | --------------------------------------------------------------------------- | | idIn                         | :                   | Equal operator with multiple values, each value separated with delimiters ; | | year                         | :                   | Like operator                                                               | | month                        | :                   | Like operator                                                               | | organizationId               | :                   | Like operator                                                               | | jobTitleId                   | :                   | Like operator                                                               | | locationId                   | :                   | Like operator                                                               | | employeeId                   | :                   | Like operator                                                               | | employeeName                 | :                   | Like operator                                                               | | employeeIdentificationNumber | :                   | Like operator                                                               | | startDate                    | :<br>><br><          | Equal<br>Greater than or equal to<br>Less than or equal to                  | | endDate                      | :<br>><br><          | Equal<br>Greater than or equal to<br>Less than or equal to                  | 

### Example


```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)

try:
    # Get Processed Transition Calculation
    api_response = api_instance.get_processed_transition_calculation()
    print("The response of TransitionCalculationApi->get_processed_transition_calculation:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_processed_transition_calculation: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**ProcessedTransitionCalculationListResponse**](ProcessedTransitionCalculationListResponse.md)

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


# **get_prorate_details_by_transition_calculation_detail_id**
> List[ProrateDetailResponse] get_prorate_details_by_transition_calculation_detail_id(id)

Get Prorate Details By Transition Calculation Detail Id

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed 

### Example


```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)
id = 'id_example' # str | 

try:
    # Get Prorate Details By Transition Calculation Detail Id
    api_response = api_instance.get_prorate_details_by_transition_calculation_detail_id(id)
    print("The response of TransitionCalculationApi->get_prorate_details_by_transition_calculation_detail_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_prorate_details_by_transition_calculation_detail_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**List[ProrateDetailResponse]**](ProrateDetailResponse.md)

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


# **get_time_allowance_detailsby_transition_calculation_detail_id**
> List[TransitionTimeAllowanceDetailResponse] get_time_allowance_detailsby_transition_calculation_detail_id(id)

Get Time Allowance Details by Transition Calculation Detail Id

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed 

### Example


```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)
id = 'id_example' # str | 

try:
    # Get Time Allowance Details by Transition Calculation Detail Id
    api_response = api_instance.get_time_allowance_detailsby_transition_calculation_detail_id(id)
    print("The response of TransitionCalculationApi->get_time_allowance_detailsby_transition_calculation_detail_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_time_allowance_detailsby_transition_calculation_detail_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**List[TransitionTimeAllowanceDetailResponse]**](TransitionTimeAllowanceDetailResponse.md)

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


# **get_transition_calculation_count**
> TransitionCalculationCountResponse get_transition_calculation_count()

Get Transition Calculation Count

⚠️ **This endpoint is deprecated.**  Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed  --- ### Search Query | Supported Keys               | Supported Operators | Notes                                                                       | | ---------------------------- | ------------------- | --------------------------------------------------------------------------- | | idIn                         | :                   | Equal operator with multiple values, each value separated with delimiters ; | | year                         | :                   | Like operator                                                               | | month                        | :                   | Like operator                                                               | | organizationId               | :                   | Like operator                                                               | | jobTitleId                   | :                   | Like operator                                                               | | locationId                   | :                   | Like operator                                                               | | employeeId                   | :                   | Like operator                                                               | | employeeName                 | :                   | Like operator                                                               | | employeeIdentificationNumber | :                   | Like operator                                                               | | startDate                    | :<br>><br><          | Equal<br>Greater than or equal to<br>Less than or equal to                  | | endDate                      | :<br>><br><          | Equal<br>Greater than or equal to<br>Less than or equal to                  | 

### Example


```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)

try:
    # Get Transition Calculation Count
    api_response = api_instance.get_transition_calculation_count()
    print("The response of TransitionCalculationApi->get_transition_calculation_count:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_transition_calculation_count: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**TransitionCalculationCountResponse**](TransitionCalculationCountResponse.md)

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


# **get_transition_calculationby_id**
> TransitionCalculationResponse get_transition_calculationby_id(id)

Get Transition Calculation by Id

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed 

### Example


```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)
id = 'id_example' # str | 

try:
    # Get Transition Calculation by Id
    api_response = api_instance.get_transition_calculationby_id(id)
    print("The response of TransitionCalculationApi->get_transition_calculationby_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_transition_calculationby_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**TransitionCalculationResponse**](TransitionCalculationResponse.md)

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


# **update_transition_calculation_details_with_editable_type**
> update_transition_calculation_details_with_editable_type(id, transition_calculation_details_request)

Update Transition Calculation Details With Editable Type

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed 

### Example


```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)
id = 'id_example' # str | 
transition_calculation_details_request = TransitionCalculationDetailsRequest() # TransitionCalculationDetailsRequest |  (optional)

try:
    # Update Transition Calculation Details With Editable Type
    api_instance.update_transition_calculation_details_with_editable_type(id, transition_calculation_details_request=transition_calculation_details_request)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->update_transition_calculation_details_with_editable_type: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **transition_calculation_details_request** | [**TransitionCalculationDetailsRequest**](TransitionCalculationDetailsRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

