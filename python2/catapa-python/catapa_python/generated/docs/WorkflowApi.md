# WorkflowApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_workflow_reason**](WorkflowApi.md#create_workflow_reason) | **POST** /core/v1/workflow-reasons | Create Workflow Reason
[**create_workflow_reason_category**](WorkflowApi.md#create_workflow_reason_category) | **POST** /core/v1/workflow-reason-categories | Create Workflow Reason Category
[**get_workflow_activity**](WorkflowApi.md#get_workflow_activity) | **GET** /core/v1/workflow-activities | Get Workflow Activities
[**get_workflow_reason**](WorkflowApi.md#get_workflow_reason) | **GET** /core/v1/workflow-reasons | Get Workflow Reasons
[**get_workflow_reason_category**](WorkflowApi.md#get_workflow_reason_category) | **GET** /core/v1/workflow-reason-categories | Get Workflow Reason Categories
[**update_workflow_reason**](WorkflowApi.md#update_workflow_reason) | **PUT** /core/v1/workflow-reasons/{id} | Update Workflow Reason
[**update_workflow_reason_categories**](WorkflowApi.md#update_workflow_reason_categories) | **PUT** /core/v1/workflow-reason-categories/{id} | Update Workflow Reason Category


# **create_workflow_reason**
> WorkflowReasonResponse create_workflow_reason(workflow_reason_request)

Create Workflow Reason


### Example


```python
from catapa import Catapa, WorkflowApi, ApiException
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
api_instance = WorkflowApi(client)
workflow_reason_request = WorkflowReasonRequest() # WorkflowReasonRequest |  (optional)

try:
    # Create Workflow Reason
    api_response = api_instance.create_workflow_reason(workflow_reason_request=workflow_reason_request)
    print("The response of WorkflowApi->create_workflow_reason:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WorkflowApi->create_workflow_reason: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_reason_request** | [**WorkflowReasonRequest**](WorkflowReasonRequest.md)|  | [optional] 

### Return type

[**WorkflowReasonResponse**](WorkflowReasonResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_workflow_reason_category**
> WorkflowReasonCategoryResponse create_workflow_reason_category(workflow_reason_category_request)

Create Workflow Reason Category


### Example


```python
from catapa import Catapa, WorkflowApi, ApiException
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
api_instance = WorkflowApi(client)
workflow_reason_category_request = WorkflowReasonCategoryRequest() # WorkflowReasonCategoryRequest |  (optional)

try:
    # Create Workflow Reason Category
    api_response = api_instance.create_workflow_reason_category(workflow_reason_category_request=workflow_reason_category_request)
    print("The response of WorkflowApi->create_workflow_reason_category:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WorkflowApi->create_workflow_reason_category: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflow_reason_category_request** | [**WorkflowReasonCategoryRequest**](WorkflowReasonCategoryRequest.md)|  | [optional] 

### Return type

[**WorkflowReasonCategoryResponse**](WorkflowReasonCategoryResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_workflow_activity**
> WorkflowActivityListResponse get_workflow_activity()

Get Workflow Activities

### Search Query
| Supported Keys          | Supported Operators | Notes                                            |
|-------------------------|---------------------|--------------------------------------------------|
| id                      | `:`                 | Equal operator                                   |
| effectiveDate           | ><br><              |Greater than or equal to<br>Less than or equal to |
| employee.id             | `:`                 | Equal operator                                   |



### Example


```python
from catapa import Catapa, WorkflowApi, ApiException
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
api_instance = WorkflowApi(client)

try:
    # Get Workflow Activities
    api_response = api_instance.get_workflow_activity()
    print("The response of WorkflowApi->get_workflow_activity:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WorkflowApi->get_workflow_activity: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**WorkflowActivityListResponse**](WorkflowActivityListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_workflow_reason**
> WorkflowReasonListResponse get_workflow_reason()

Get Workflow Reasons

### Search Query
| Supported Keys          | Supported Operators | Notes                      |
|-------------------------|---------------------|----------------------------|
| code                    | `:`                 | Like operator              |
| name                    | `:`                 | Like operator              |
| category.id                    | `:`                 | Equal operator              |



### Example


```python
from catapa import Catapa, WorkflowApi, ApiException
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
api_instance = WorkflowApi(client)

try:
    # Get Workflow Reasons
    api_response = api_instance.get_workflow_reason()
    print("The response of WorkflowApi->get_workflow_reason:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WorkflowApi->get_workflow_reason: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**WorkflowReasonListResponse**](WorkflowReasonListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_workflow_reason_category**
> WorkflowReasonCategoryListResponse get_workflow_reason_category()

Get Workflow Reason Categories

### Search Query
| Supported Keys          | Supported Operators | Notes                      |
|-------------------------|---------------------|----------------------------|
| code                    | `:`                 | Like operator              |
| name                    | `:`                 | Like operator              |



### Example


```python
from catapa import Catapa, WorkflowApi, ApiException
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
api_instance = WorkflowApi(client)

try:
    # Get Workflow Reason Categories
    api_response = api_instance.get_workflow_reason_category()
    print("The response of WorkflowApi->get_workflow_reason_category:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WorkflowApi->get_workflow_reason_category: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**WorkflowReasonCategoryListResponse**](WorkflowReasonCategoryListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_workflow_reason**
> WorkflowReasonResponse update_workflow_reason(id, workflow_reason_request)

Update Workflow Reason


### Example


```python
from catapa import Catapa, WorkflowApi, ApiException
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
api_instance = WorkflowApi(client)
id = 'id_example' # str | 
workflow_reason_request = WorkflowReasonRequest() # WorkflowReasonRequest |  (optional)

try:
    # Update Workflow Reason
    api_response = api_instance.update_workflow_reason(id, workflow_reason_request=workflow_reason_request)
    print("The response of WorkflowApi->update_workflow_reason:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WorkflowApi->update_workflow_reason: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **workflow_reason_request** | [**WorkflowReasonRequest**](WorkflowReasonRequest.md)|  | [optional] 

### Return type

[**WorkflowReasonResponse**](WorkflowReasonResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_workflow_reason_categories**
> WorkflowReasonCategoryResponse update_workflow_reason_categories(id, workflow_reason_category_request)

Update Workflow Reason Category


### Example


```python
from catapa import Catapa, WorkflowApi, ApiException
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
api_instance = WorkflowApi(client)
id = 'id_example' # str | 
workflow_reason_category_request = WorkflowReasonCategoryRequest() # WorkflowReasonCategoryRequest |  (optional)

try:
    # Update Workflow Reason Category
    api_response = api_instance.update_workflow_reason_categories(id, workflow_reason_category_request=workflow_reason_category_request)
    print("The response of WorkflowApi->update_workflow_reason_categories:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling WorkflowApi->update_workflow_reason_categories: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **workflow_reason_category_request** | [**WorkflowReasonCategoryRequest**](WorkflowReasonCategoryRequest.md)|  | [optional] 

### Return type

[**WorkflowReasonCategoryResponse**](WorkflowReasonCategoryResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

