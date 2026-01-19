# EmployeeDetailApi

## EmployeeDetailApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                         | HTTP request                                             | Description                     |
| ---------------------------------------------------------------------------------------------- | -------------------------------------------------------- | ------------------------------- |
| [**get\_employee\_detail**](EmployeeDetailApi.md#get_employee_detail)                          | **GET** /core/v1/employees/{employeeId}/employee-details | Get Employee Detail             |
| [**get\_historical\_employee\_details**](EmployeeDetailApi.md#get_historical_employee_details) | **GET** /core/v1/employee-details                        | Get Historical Employee Details |
| [**update\_employee\_detail**](EmployeeDetailApi.md#update_employee_detail)                    | **PUT** /core/v1/employees/{employeeId}/employee-details | Update Employee Detail          |

## **get\_employee\_detail**

> EmployeeDetailResponse get\_employee\_detail(employee\_id)

Get Employee Detail

The `id` field in the response refers to the **employee's ID**, **not the employee detail's actual ID**.

#### Example

```python
from catapa import Catapa, EmployeeDetailApi, ApiException
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
api_instance = EmployeeDetailApi(client)
employee_id = 'employee_id_example' # str | 

try:
    # Get Employee Detail
    api_response = api_instance.get_employee_detail(employee_id)
    print("The response of EmployeeDetailApi->get_employee_detail:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeDetailApi->get_employee_detail: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **employee\_id** | **str** |             |       |

#### Return type

[**EmployeeDetailResponse**](EmployeeDetailResponse.md)

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

[\[Back to top\]](EmployeeDetailApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_historical\_employee\_details**

> EmployeeDetailListResponse get\_historical\_employee\_details(page, size, query)

Get Historical Employee Details

#### Example

```python
from catapa import Catapa, EmployeeDetailApi, ApiException
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
api_instance = EmployeeDetailApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | employee.id        | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | effectiveDate      | `<`                 | Less than or equal to<br/><br/>Use `yyyy-MM-dd` format, e.g. `effectiveDate<2025-01-31  ` |  (optional)

try:
    # Get Historical Employee Details
    api_response = api_instance.get_historical_employee_details(page=page, size=size, query=query)
    print("The response of EmployeeDetailApi->get_historical_employee_details:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeDetailApi->get_historical_employee_details: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**EmployeeDetailListResponse**](EmployeeDetailListResponse.md)

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

[\[Back to top\]](EmployeeDetailApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_employee\_detail**

> EmployeeDetailResponse update\_employee\_detail(employee\_id, employee\_detail\_request)

Update Employee Detail

The `id` field in the response refers to the **employee's ID**, **not the employee detail's actual ID**.

#### Example

```python
from catapa import Catapa, EmployeeDetailApi, ApiException
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
api_instance = EmployeeDetailApi(client)
employee_id = 'employee_id_example' # str | 
employee_detail_request = EmployeeDetailRequest() # EmployeeDetailRequest |  (optional)

try:
    # Update Employee Detail
    api_response = api_instance.update_employee_detail(employee_id, employee_detail_request=employee_detail_request)
    print("The response of EmployeeDetailApi->update_employee_detail:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeDetailApi->update_employee_detail: %s\n" % e)
```

#### Parameters

| Name                          | Type                                                  | Description | Notes       |
| ----------------------------- | ----------------------------------------------------- | ----------- | ----------- |
| **employee\_id**              | **str**                                               |             |             |
| **employee\_detail\_request** | [**EmployeeDetailRequest**](EmployeeDetailRequest.md) |             | \[optional] |

#### Return type

[**EmployeeDetailResponse**](EmployeeDetailResponse.md)

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

[\[Back to top\]](EmployeeDetailApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
