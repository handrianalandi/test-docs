# TerminationApi

## TerminationApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                 | HTTP request                                                   | Description                          |
| ------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------- | ------------------------------------ |
| [**create\_termination\_entry**](TerminationApi.md#create_termination_entry)                           | **POST** /core/v1/employees/{employeeId}/termination-entries   | Create Termination Entry             |
| [**create\_termination\_reason**](TerminationApi.md#create_termination_reason)                         | **POST** /core/v1/termination-reasons                          | Create Termination Reason            |
| [**get\_termination\_bpjs\_manpower\_reason**](TerminationApi.md#get_termination_bpjs_manpower_reason) | **GET** /core/v1/termination-bpjs-manpower-reasons             | Get Termination BPJS Manpower Reason |
| [**get\_termination\_entry**](TerminationApi.md#get_termination_entry)                                 | **GET** /core/v1/employees/{employeeId}/termination-entries    | Get Termination Entry                |
| [**get\_termination\_reason**](TerminationApi.md#get_termination_reason)                               | **GET** /core/v1/termination-reasons                           | Get Termination Reason               |
| [**get\_termination\_reason\_category**](TerminationApi.md#get_termination_reason_category)            | **GET** /core/v1/termination-reason-categories                 | Get Termination Reason Category      |
| [**get\_termination\_tax\_reason**](TerminationApi.md#get_termination_tax_reason)                      | **GET** /core/v1/termination-tax-reasons                       | Get Termination Tax Reason           |
| [**undo\_termination\_entry**](TerminationApi.md#undo_termination_entry)                               | **DELETE** /core/v1/employees/{employeeId}/termination-entries | Undo Termination Entry               |
| [**update\_termination\_reason**](TerminationApi.md#update_termination_reason)                         | **PUT** /core/v1/termination-reasons/{id}                      | Update Termination Reason            |

## **create\_termination\_entry**

> TerminationEntryResponse create\_termination\_entry(employee\_id, termination\_entry\_request)

Create Termination Entry

#### Example

```python
from catapa import Catapa, TerminationApi, ApiException
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
api_instance = TerminationApi(client)
employee_id = 'employee_id_example' # str | 
termination_entry_request = TerminationEntryRequest() # TerminationEntryRequest |  (optional)

try:
    # Create Termination Entry
    api_response = api_instance.create_termination_entry(employee_id, termination_entry_request=termination_entry_request)
    print("The response of TerminationApi->create_termination_entry:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TerminationApi->create_termination_entry: %s\n" % e)
```

#### Parameters

| Name                            | Type                                                      | Description | Notes       |
| ------------------------------- | --------------------------------------------------------- | ----------- | ----------- |
| **employee\_id**                | **str**                                                   |             |             |
| **termination\_entry\_request** | [**TerminationEntryRequest**](TerminationEntryRequest.md) |             | \[optional] |

#### Return type

[**TerminationEntryResponse**](TerminationEntryResponse.md)

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

[\[Back to top\]](TerminationApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **create\_termination\_reason**

> TerminationReasonDetailResponse create\_termination\_reason(termination\_reason\_request)

Create Termination Reason

#### Example

```python
from catapa import Catapa, TerminationApi, ApiException
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
api_instance = TerminationApi(client)
termination_reason_request = TerminationReasonRequest() # TerminationReasonRequest |  (optional)

try:
    # Create Termination Reason
    api_response = api_instance.create_termination_reason(termination_reason_request=termination_reason_request)
    print("The response of TerminationApi->create_termination_reason:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TerminationApi->create_termination_reason: %s\n" % e)
```

#### Parameters

| Name                             | Type                                                        | Description | Notes       |
| -------------------------------- | ----------------------------------------------------------- | ----------- | ----------- |
| **termination\_reason\_request** | [**TerminationReasonRequest**](TerminationReasonRequest.md) |             | \[optional] |

#### Return type

[**TerminationReasonDetailResponse**](TerminationReasonDetailResponse.md)

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

[\[Back to top\]](TerminationApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_termination\_bpjs\_manpower\_reason**

> TerminationBPJSManpowerReasonListResponse get\_termination\_bpjs\_manpower\_reason()

Get Termination BPJS Manpower Reason

#### Search Query | Supported Keys | Supported Operators | Notes | |-------------------------|---------------------|----------------------------| | name | `:` | Like operator |

#### Example

```python
from catapa import Catapa, TerminationApi, ApiException
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
api_instance = TerminationApi(client)

try:
    # Get Termination BPJS Manpower Reason
    api_response = api_instance.get_termination_bpjs_manpower_reason()
    print("The response of TerminationApi->get_termination_bpjs_manpower_reason:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TerminationApi->get_termination_bpjs_manpower_reason: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TerminationBPJSManpowerReasonListResponse**](TerminationBPJSManpowerReasonListResponse.md)

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

[\[Back to top\]](TerminationApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_termination\_entry**

> TerminationEntryResponse get\_termination\_entry(employee\_id)

Get Termination Entry

#### Example

```python
from catapa import Catapa, TerminationApi, ApiException
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
api_instance = TerminationApi(client)
employee_id = 'employee_id_example' # str | 

try:
    # Get Termination Entry
    api_response = api_instance.get_termination_entry(employee_id)
    print("The response of TerminationApi->get_termination_entry:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TerminationApi->get_termination_entry: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **employee\_id** | **str** |             |       |

#### Return type

[**TerminationEntryResponse**](TerminationEntryResponse.md)

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

[\[Back to top\]](TerminationApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_termination\_reason**

> TerminationReasonListResponse get\_termination\_reason()

Get Termination Reason

#### Search Query | Supported Keys | Supported Operators | Notes | |-------------------------|---------------------|----------------------------| | name | `:` | Like operator |

#### Example

```python
from catapa import Catapa, TerminationApi, ApiException
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
api_instance = TerminationApi(client)

try:
    # Get Termination Reason
    api_response = api_instance.get_termination_reason()
    print("The response of TerminationApi->get_termination_reason:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TerminationApi->get_termination_reason: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TerminationReasonListResponse**](TerminationReasonListResponse.md)

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

[\[Back to top\]](TerminationApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_termination\_reason\_category**

> TerminationReasonCategoryListResponse get\_termination\_reason\_category()

Get Termination Reason Category

#### Search Query | Supported Keys | Supported Operators | Notes | |-------------------------|---------------------|----------------------------| | name | `:` | Like operator |

#### Example

```python
from catapa import Catapa, TerminationApi, ApiException
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
api_instance = TerminationApi(client)

try:
    # Get Termination Reason Category
    api_response = api_instance.get_termination_reason_category()
    print("The response of TerminationApi->get_termination_reason_category:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TerminationApi->get_termination_reason_category: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TerminationReasonCategoryListResponse**](TerminationReasonCategoryListResponse.md)

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

[\[Back to top\]](TerminationApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_termination\_tax\_reason**

> TerminationTaxReasonListResponse get\_termination\_tax\_reason()

Get Termination Tax Reason

#### Search Query | Supported Keys | Supported Operators | Notes | |-------------------------|---------------------|----------------------------| | name | `:` | Like operator | | taxAnnualized | `:` | Equal operator |

#### Example

```python
from catapa import Catapa, TerminationApi, ApiException
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
api_instance = TerminationApi(client)

try:
    # Get Termination Tax Reason
    api_response = api_instance.get_termination_tax_reason()
    print("The response of TerminationApi->get_termination_tax_reason:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TerminationApi->get_termination_tax_reason: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TerminationTaxReasonListResponse**](TerminationTaxReasonListResponse.md)

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

[\[Back to top\]](TerminationApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **undo\_termination\_entry**

> object undo\_termination\_entry(employee\_id)

Undo Termination Entry

#### Example

```python
from catapa import Catapa, TerminationApi, ApiException
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
api_instance = TerminationApi(client)
employee_id = 'employee_id_example' # str | 

try:
    # Undo Termination Entry
    api_response = api_instance.undo_termination_entry(employee_id)
    print("The response of TerminationApi->undo_termination_entry:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TerminationApi->undo_termination_entry: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **employee\_id** | **str** |             |       |

#### Return type

**object**

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

[\[Back to top\]](TerminationApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_termination\_reason**

> TerminationReasonDetailResponse update\_termination\_reason(id, termination\_reason\_request)

Update Termination Reason

#### Example

```python
from catapa import Catapa, TerminationApi, ApiException
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
api_instance = TerminationApi(client)
id = 'id_example' # str | 
termination_reason_request = TerminationReasonRequest() # TerminationReasonRequest |  (optional)

try:
    # Update Termination Reason
    api_response = api_instance.update_termination_reason(id, termination_reason_request=termination_reason_request)
    print("The response of TerminationApi->update_termination_reason:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TerminationApi->update_termination_reason: %s\n" % e)
```

#### Parameters

| Name                             | Type                                                        | Description | Notes       |
| -------------------------------- | ----------------------------------------------------------- | ----------- | ----------- |
| **id**                           | **str**                                                     |             |             |
| **termination\_reason\_request** | [**TerminationReasonRequest**](TerminationReasonRequest.md) |             | \[optional] |

#### Return type

[**TerminationReasonDetailResponse**](TerminationReasonDetailResponse.md)

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

[\[Back to top\]](TerminationApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
