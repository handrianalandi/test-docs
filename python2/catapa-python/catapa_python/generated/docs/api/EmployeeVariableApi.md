# EmployeeVariableApi

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_employee_variable**](EmployeeVariableApi.md#create_employee_variable) | **POST** /core/v1/employee-variables | Create Employee Variable
[**create_employee_variable_metadata**](EmployeeVariableApi.md#create_employee_variable_metadata) | **POST** /core/v1/employee-variable-metadata | Create Employee Variable Metadata
[**create_or_update_employee_variables**](EmployeeVariableApi.md#create_or_update_employee_variables) | **PUT** /core/v1/employee-variables | Create or Update Employee Variables
[**delete_all_aperiodic_employee_variables**](EmployeeVariableApi.md#delete_all_aperiodic_employee_variables) | **DELETE** /core/v1/employee-variables/aperiodic/all | Delete All Aperiodic Employee Variables
[**delete_employee_variable_metadata**](EmployeeVariableApi.md#delete_employee_variable_metadata) | **DELETE** /core/v1/employee-variable-metadata | Delete Employee Variable Metadata
[**delete_employee_variables**](EmployeeVariableApi.md#delete_employee_variables) | **DELETE** /core/v1/employee-variables | Delete Employee Variables
[**get_aperiodic_employee_variables**](EmployeeVariableApi.md#get_aperiodic_employee_variables) | **GET** /core/v1/employee-variables/aperiodic | Get Aperiodic Employee Variables
[**get_employee_variable_by_id**](EmployeeVariableApi.md#get_employee_variable_by_id) | **GET** /core/v1/employee-variables/{id} | Get Employee Variable By Id
[**get_employee_variable_metadata**](EmployeeVariableApi.md#get_employee_variable_metadata) | **GET** /core/v1/employee-variable-metadata | Get Employee Variable Metadata
[**get_employee_variable_metadata_by_id**](EmployeeVariableApi.md#get_employee_variable_metadata_by_id) | **GET** /core/v1/employee-variable-metadata/{id} | Get Employee Variable Metadata By Id
[**get_employee_variables**](EmployeeVariableApi.md#get_employee_variables) | **GET** /core/v1/employee-variables | Get Employee Variables
[**get_periodic_employee_variables**](EmployeeVariableApi.md#get_periodic_employee_variables) | **GET** /core/v1/employee-variables/periodic | Get Periodic Employee Variables
[**update_employee_variable_by_id**](EmployeeVariableApi.md#update_employee_variable_by_id) | **PUT** /core/v1/employee-variables/{id} | Update Employee Variable By Id
[**update_employee_variable_metadata**](EmployeeVariableApi.md#update_employee_variable_metadata) | **PUT** /core/v1/employee-variable-metadata/{id} | Update Employee Variable Metadata


# **create_employee_variable**
> EmployeeVariableResponse create_employee_variable(employee_variable_request)

Create Employee Variable


### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)
employee_variable_request = EmployeeVariableRequest() # EmployeeVariableRequest |  (optional)

try:
    # Create Employee Variable
    api_response = api_instance.create_employee_variable(employee_variable_request=employee_variable_request)
    print("The response of EmployeeVariableApi->create_employee_variable:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->create_employee_variable: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_variable_request** | [**EmployeeVariableRequest**](../models/EmployeeVariableRequest.md)|  | 

### Return type

[**EmployeeVariableResponse**](../models/EmployeeVariableResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **create_employee_variable_metadata**
> EmployeeVariableMetadataResponse create_employee_variable_metadata(employee_variable_metadata_request)

Create Employee Variable Metadata


### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)
employee_variable_metadata_request = EmployeeVariableMetadataRequest() # EmployeeVariableMetadataRequest |  (optional)

try:
    # Create Employee Variable Metadata
    api_response = api_instance.create_employee_variable_metadata(employee_variable_metadata_request=employee_variable_metadata_request)
    print("The response of EmployeeVariableApi->create_employee_variable_metadata:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->create_employee_variable_metadata: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_variable_metadata_request** | [**EmployeeVariableMetadataRequest**](../models/EmployeeVariableMetadataRequest.md)|  | 

### Return type

[**EmployeeVariableMetadataResponse**](../models/EmployeeVariableMetadataResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | CREATED |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **create_or_update_employee_variables**
> List[EmployeeVariableResponse] create_or_update_employee_variables(employee_variable_request)

Create or Update Employee Variables


### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)
employee_variable_request = List[EmployeeVariableRequest]() # List[EmployeeVariableRequest] |  (optional)

try:
    # Create or Update Employee Variables
    api_response = api_instance.create_or_update_employee_variables(employee_variable_request=employee_variable_request)
    print("The response of EmployeeVariableApi->create_or_update_employee_variables:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->create_or_update_employee_variables: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_variable_request** | [**List[EmployeeVariableRequest]**](../models/EmployeeVariableRequest.md)|  | 

### Return type

[**List[EmployeeVariableResponse]**](../models/EmployeeVariableResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **delete_all_aperiodic_employee_variables**
> CountResponse delete_all_aperiodic_employee_variables()

Delete All Aperiodic Employee Variables

### Search Query
| Supported Keys                | Supported Operators | Notes |
| ----------------------------- | ------------------- | ----- |
| employeeId                    | :                   | Equal |
| employee.identificationNumber | :                   | Like  |
| employee.name                 | :                   | Like  |
| employee.active               | :                   | Equal |
| name                          | :                   | Like  |
| metadata.id                   | :                   | Equal |
| date                          | :<br>><br><         | Equal<br>Greater than or equal to<br>Less than or equal to |



### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)

try:
    # Delete All Aperiodic Employee Variables
    api_response = api_instance.delete_all_aperiodic_employee_variables()
    print("The response of EmployeeVariableApi->delete_all_aperiodic_employee_variables:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->delete_all_aperiodic_employee_variables: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**CountResponse**](../models/CountResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **delete_employee_variable_metadata**
> BulkOperationResponse delete_employee_variable_metadata()

Delete Employee Variable Metadata

This endpoint deletes employee variable metadata.
This endpoint expects a JSON array in the request body,  where each item is an object containing an `id` field representing the employee variable metadata to delete. The array must contain between 1 and 50 items.
    
**Request body schema:** ```json [
  {
    "id": "string"
  }
] ```
**Example payload**: ```json [
  { "id": "673d457f-1975-434c-81a4-067f79345554" },
  { "id": "730e2120-96e6-4426-8bbd-c1945ce561f7" }
] ```



### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)

try:
    # Delete Employee Variable Metadata
    api_response = api_instance.delete_employee_variable_metadata()
    print("The response of EmployeeVariableApi->delete_employee_variable_metadata:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->delete_employee_variable_metadata: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**BulkOperationResponse**](../models/BulkOperationResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **delete_employee_variables**
> BulkOperationResponse delete_employee_variables()

Delete Employee Variables

This endpoint expects a JSON array in the request body,  where each item is an object containing an `id` field representing the employee variable to delete. The array must contain between 1 and 50 items.
**Request body schema:** ```json [
  { "id": "string" }
] ```
**Example payload**: ```json [
  { "id": "673d457f-1975-434c-81a4-067f79345554" },
  { "id": "730e2120-96e6-4426-8bbd-c1945ce561f7" }
] ```



### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)

try:
    # Delete Employee Variables
    api_response = api_instance.delete_employee_variables()
    print("The response of EmployeeVariableApi->delete_employee_variables:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->delete_employee_variables: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**BulkOperationResponse**](../models/BulkOperationResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_aperiodic_employee_variables**
> EmployeeVariablePageResponse get_aperiodic_employee_variables()

Get Aperiodic Employee Variables


### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)

try:
    # Get Aperiodic Employee Variables
    api_response = api_instance.get_aperiodic_employee_variables()
    print("The response of EmployeeVariableApi->get_aperiodic_employee_variables:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->get_aperiodic_employee_variables: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**EmployeeVariablePageResponse**](../models/EmployeeVariablePageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employee_variable_by_id**
> EmployeeVariableResponse get_employee_variable_by_id(id)

Get Employee Variable By Id


### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)
id = 'id_example' # str | 

try:
    # Get Employee Variable By Id
    api_response = api_instance.get_employee_variable_by_id(id)
    print("The response of EmployeeVariableApi->get_employee_variable_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->get_employee_variable_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**EmployeeVariableResponse**](../models/EmployeeVariableResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employee_variable_metadata**
> EmployeeVariableMetadataPageResponse get_employee_variable_metadata()

Get Employee Variable Metadata

### Search Query
| Supported Keys | Supported Operators | Notes |
| -------------- | ------------------- | ----- |
| name           | :                   | Equal |
| type           | :                   | Equal |
| periodic       | :                   | Equal |
| description    | :                   | Like  |



### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)

try:
    # Get Employee Variable Metadata
    api_response = api_instance.get_employee_variable_metadata()
    print("The response of EmployeeVariableApi->get_employee_variable_metadata:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->get_employee_variable_metadata: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**EmployeeVariableMetadataPageResponse**](../models/EmployeeVariableMetadataPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employee_variable_metadata_by_id**
> EmployeeVariableMetadataResponse get_employee_variable_metadata_by_id(id)

Get Employee Variable Metadata By Id


### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)
id = 'id_example' # str | 

try:
    # Get Employee Variable Metadata By Id
    api_response = api_instance.get_employee_variable_metadata_by_id(id)
    print("The response of EmployeeVariableApi->get_employee_variable_metadata_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->get_employee_variable_metadata_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**EmployeeVariableMetadataResponse**](../models/EmployeeVariableMetadataResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employee_variables**
> EmployeeVariablePageResponse get_employee_variables()

Get Employee Variables

### Search Query
| Supported Keys                | Supported Operators | Notes |
| ----------------------------- | ------------------- | ----- |
| employeeId                    | :                   | Equal |
| employee.identificationNumber | :                   | Like  |
| employee.name                 | :                   | Like  |
| employee.active               | :                   | Equal |
| name                          | :                   | Like  |
| metadata.id                   | :                   | Equal |
| date                          | :<br>><br><         | Equal<br>Greater than or equal to<br>Less than or equal to |



### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)

try:
    # Get Employee Variables
    api_response = api_instance.get_employee_variables()
    print("The response of EmployeeVariableApi->get_employee_variables:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->get_employee_variables: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**EmployeeVariablePageResponse**](../models/EmployeeVariablePageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_periodic_employee_variables**
> EmployeeVariablePageResponse get_periodic_employee_variables()

Get Periodic Employee Variables


### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)

try:
    # Get Periodic Employee Variables
    api_response = api_instance.get_periodic_employee_variables()
    print("The response of EmployeeVariableApi->get_periodic_employee_variables:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->get_periodic_employee_variables: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**EmployeeVariablePageResponse**](../models/EmployeeVariablePageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_employee_variable_by_id**
> EmployeeVariableResponse update_employee_variable_by_id(id, employee_variable_request)

Update Employee Variable By Id


### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)
id = 'id_example' # str | 
employee_variable_request = EmployeeVariableRequest() # EmployeeVariableRequest |  (optional)

try:
    # Update Employee Variable By Id
    api_response = api_instance.update_employee_variable_by_id(id, employee_variable_request=employee_variable_request)
    print("The response of EmployeeVariableApi->update_employee_variable_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->update_employee_variable_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **employee_variable_request** | [**EmployeeVariableRequest**](../models/EmployeeVariableRequest.md)|  | 

### Return type

[**EmployeeVariableResponse**](../models/EmployeeVariableResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_employee_variable_metadata**
> EmployeeVariableMetadataResponse update_employee_variable_metadata(id, employee_variable_metadata_request)

Update Employee Variable Metadata


### Example


```python
from catapa import Catapa, EmployeeVariableApi, ApiException
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
api_instance = EmployeeVariableApi(client)
id = 'id_example' # str | 
employee_variable_metadata_request = EmployeeVariableMetadataRequest() # EmployeeVariableMetadataRequest |  (optional)

try:
    # Update Employee Variable Metadata
    api_response = api_instance.update_employee_variable_metadata(id, employee_variable_metadata_request=employee_variable_metadata_request)
    print("The response of EmployeeVariableApi->update_employee_variable_metadata:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeVariableApi->update_employee_variable_metadata: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **employee_variable_metadata_request** | [**EmployeeVariableMetadataRequest**](../models/EmployeeVariableMetadataRequest.md)|  | 

### Return type

[**EmployeeVariableMetadataResponse**](../models/EmployeeVariableMetadataResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

