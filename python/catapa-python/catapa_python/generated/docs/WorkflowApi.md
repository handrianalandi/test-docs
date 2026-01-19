# WorkflowApi

## WorkflowApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                       | HTTP request                                     | Description                     |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------ | ------------------------------- |
| [**create\_workflow\_reason**](WorkflowApi.md#create_workflow_reason)                        | **POST** /core/v1/workflow-reasons               | Create Workflow Reason          |
| [**create\_workflow\_reason\_category**](WorkflowApi.md#create_workflow_reason_category)     | **POST** /core/v1/workflow-reason-categories     | Create Workflow Reason Category |
| [**get\_workflow\_activity**](WorkflowApi.md#get_workflow_activity)                          | **GET** /core/v1/workflow-activities             | Get Workflow Activities         |
| [**get\_workflow\_reason**](WorkflowApi.md#get_workflow_reason)                              | **GET** /core/v1/workflow-reasons                | Get Workflow Reasons            |
| [**get\_workflow\_reason\_category**](WorkflowApi.md#get_workflow_reason_category)           | **GET** /core/v1/workflow-reason-categories      | Get Workflow Reason Categories  |
| [**update\_workflow\_reason**](WorkflowApi.md#update_workflow_reason)                        | **PUT** /core/v1/workflow-reasons/{id}           | Update Workflow Reason          |
| [**update\_workflow\_reason\_categories**](WorkflowApi.md#update_workflow_reason_categories) | **PUT** /core/v1/workflow-reason-categories/{id} | Update Workflow Reason Category |

## **create\_workflow\_reason**

> WorkflowReasonResponse create\_workflow\_reason(workflow\_reason\_request)

Create Workflow Reason

#### Example

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

#### Parameters

| Name                          | Type                                                  | Description | Notes       |
| ----------------------------- | ----------------------------------------------------- | ----------- | ----------- |
| **workflow\_reason\_request** | [**WorkflowReasonRequest**](WorkflowReasonRequest.md) |             | \[optional] |

#### Return type

[**WorkflowReasonResponse**](WorkflowReasonResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **201**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](WorkflowApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **create\_workflow\_reason\_category**

> WorkflowReasonCategoryResponse create\_workflow\_reason\_category(workflow\_reason\_category\_request)

Create Workflow Reason Category

#### Example

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

#### Parameters

| Name                                    | Type                                                                  | Description | Notes       |
| --------------------------------------- | --------------------------------------------------------------------- | ----------- | ----------- |
| **workflow\_reason\_category\_request** | [**WorkflowReasonCategoryRequest**](WorkflowReasonCategoryRequest.md) |             | \[optional] |

#### Return type

[**WorkflowReasonCategoryResponse**](WorkflowReasonCategoryResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **201**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](WorkflowApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_workflow\_activity**

> WorkflowActivityListResponse get\_workflow\_activity()

Get Workflow Activities

#### Search Query | Supported Keys | Supported Operators | Notes | |-------------------------|---------------------|--------------------------------------------------| | id | `:` | Equal operator | | effectiveDate | > < |Greater than or equal to Less than or equal to | | employee.id | `:` | Equal operator |

#### Example

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

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**WorkflowActivityListResponse**](WorkflowActivityListResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](WorkflowApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_workflow\_reason**

> WorkflowReasonListResponse get\_workflow\_reason()

Get Workflow Reasons

#### Search Query | Supported Keys | Supported Operators | Notes | |-------------------------|---------------------|----------------------------| | code | `:` | Like operator | | name | `:` | Like operator | | category.id | `:` | Equal operator |

#### Example

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

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**WorkflowReasonListResponse**](WorkflowReasonListResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](WorkflowApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_workflow\_reason\_category**

> WorkflowReasonCategoryListResponse get\_workflow\_reason\_category()

Get Workflow Reason Categories

#### Search Query | Supported Keys | Supported Operators | Notes | |-------------------------|---------------------|----------------------------| | code | `:` | Like operator | | name | `:` | Like operator |

#### Example

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

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**WorkflowReasonCategoryListResponse**](WorkflowReasonCategoryListResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](WorkflowApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_workflow\_reason**

> WorkflowReasonResponse update\_workflow\_reason(id, workflow\_reason\_request)

Update Workflow Reason

#### Example

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

#### Parameters

| Name                          | Type                                                  | Description | Notes       |
| ----------------------------- | ----------------------------------------------------- | ----------- | ----------- |
| **id**                        | **str**                                               |             |             |
| **workflow\_reason\_request** | [**WorkflowReasonRequest**](WorkflowReasonRequest.md) |             | \[optional] |

#### Return type

[**WorkflowReasonResponse**](WorkflowReasonResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](WorkflowApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_workflow\_reason\_categories**

> WorkflowReasonCategoryResponse update\_workflow\_reason\_categories(id, workflow\_reason\_category\_request)

Update Workflow Reason Category

#### Example

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

#### Parameters

| Name                                    | Type                                                                  | Description | Notes       |
| --------------------------------------- | --------------------------------------------------------------------- | ----------- | ----------- |
| **id**                                  | **str**                                                               |             |             |
| **workflow\_reason\_category\_request** | [**WorkflowReasonCategoryRequest**](WorkflowReasonCategoryRequest.md) |             | \[optional] |

#### Return type

[**WorkflowReasonCategoryResponse**](WorkflowReasonCategoryResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](WorkflowApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
