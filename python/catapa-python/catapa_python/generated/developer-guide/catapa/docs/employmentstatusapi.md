# EmploymentStatusApi

## EmploymentStatusApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                      | HTTP request                                            | Description                          |
| ----------------------------------------------------------------------------------------------------------- | ------------------------------------------------------- | ------------------------------------ |
| [**get\_employment\_status\_by\_employee**](employmentstatusapi.md#get_employment_status_by_employee)       | **GET** /core/v1/employees/{employeeId}/employment-data | Get Employment Status by Employee    |
| [**get\_employment\_status\_histories**](employmentstatusapi.md#get_employment_status_histories)            | **GET** /core/v1/employment-status-histories            | Get Employment Status Histories      |
| [**get\_employment\_statuses**](employmentstatusapi.md#get_employment_statuses)                             | **GET** /core/v1/employment-statuses                    | Get Employment Statuses              |
| [**update\_employment\_status\_by\_employee**](employmentstatusapi.md#update_employment_status_by_employee) | **PUT** /core/v1/employees/{employeeId}/employment-data | Update Employment Status by Employee |

## **get\_employment\_status\_by\_employee**

> EmploymentDataResponse get\_employment\_status\_by\_employee(employee\_id, query)

Get Employment Status by Employee

⚠️ **This endpoint is deprecated.** Please use [Get Employment Statuses](https://api-docs.catapa.com/#tag/employment-status/operation/getEmploymentStatuses) instead.

#### Example

```python
from catapa import Catapa, EmploymentStatusApi, ApiException
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
api_instance = EmploymentStatusApi(client)
employee_id = 'employee_id_example' # str | 
query = 'effectiveDate>2023-09-20' # str | ### Search query | Supported Keys | Supported Operators | Notes                                                                                                                                | |----------------|---------------------|--------------------------------------------------------------------------------------------------------------------------------------| | effectiveDate  | `>`<br/>`<`         | Greater than or equal operator<br/>Less than or equal operator<br/><br/>Use the `YYYY-MM-DD` format, e.g. `effectiveDate>2023-09-20` |  (optional)

try:
    # Get Employment Status by Employee
    api_response = api_instance.get_employment_status_by_employee(employee_id, query=query)
    print("The response of EmploymentStatusApi->get_employment_status_by_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmploymentStatusApi->get_employment_status_by_employee: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description      | Notes          |
| ---------------- | ------- | ---------------- | -------------- |
| **employee\_id** | **str** |                  |                |
| **query**        | **str** | ### Search query | Supported Keys |

#### Return type

[**EmploymentDataResponse**](employmentdataresponse.md)

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

[\[Back to top\]](employmentstatusapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_employment\_status\_histories**

> EmploymentStatusHistoryListResponse get\_employment\_status\_histories(page, size, query)

Get Employment Status Histories

#### Example

```python
from catapa import Catapa, EmploymentStatusApi, ApiException
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
api_instance = EmploymentStatusApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | employee.id        | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | effectiveDate      | `<`                 | Less than or equal to<br/><br/>Use `yyyy-MM-dd` format, e.g. `effectiveDate<2025-01-31  ` |  (optional)

try:
    # Get Employment Status Histories
    api_response = api_instance.get_employment_status_histories(page=page, size=size, query=query)
    print("The response of EmploymentStatusApi->get_employment_status_histories:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmploymentStatusApi->get_employment_status_histories: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**EmploymentStatusHistoryListResponse**](employmentstatushistorylistresponse.md)

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

[\[Back to top\]](employmentstatusapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_employment\_statuses**

> EmploymentStatusListResponse get\_employment\_statuses(page, size, query)

Get Employment Statuses

#### Example

```python
from catapa import Catapa, EmploymentStatusApi, ApiException
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
api_instance = EmploymentStatusApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | employee.id        | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |  (optional)

try:
    # Get Employment Statuses
    api_response = api_instance.get_employment_statuses(page=page, size=size, query=query)
    print("The response of EmploymentStatusApi->get_employment_statuses:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmploymentStatusApi->get_employment_statuses: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**EmploymentStatusListResponse**](employmentstatuslistresponse.md)

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

[\[Back to top\]](employmentstatusapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_employment\_status\_by\_employee**

> EmploymentDataResponse update\_employment\_status\_by\_employee(employee\_id, employment\_data\_request)

Update Employment Status by Employee

#### Generate Employment Status Number The default value for the `generateEmploymentStatusNumber` field in the request body is set to `false`. If a request is sent with the value of `true`, it will first check the existing employee policy. If the employee policy is set to manual, it will accept the employment status number in the request. If the employee policy is set to automatic, it will generate a new employment status number based on the format in the employee policy.

#### Example

```python
from catapa import Catapa, EmploymentStatusApi, ApiException
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
api_instance = EmploymentStatusApi(client)
employee_id = 'employee_id_example' # str | 
employment_data_request = EmploymentDataRequest() # EmploymentDataRequest |  (optional)

try:
    # Update Employment Status by Employee
    api_response = api_instance.update_employment_status_by_employee(employee_id, employment_data_request=employment_data_request)
    print("The response of EmploymentStatusApi->update_employment_status_by_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmploymentStatusApi->update_employment_status_by_employee: %s\n" % e)
```

#### Parameters

| Name                          | Type                                                  | Description | Notes       |
| ----------------------------- | ----------------------------------------------------- | ----------- | ----------- |
| **employee\_id**              | **str**                                               |             |             |
| **employment\_data\_request** | [**EmploymentDataRequest**](employmentdatarequest.md) |             | \[optional] |

#### Return type

[**EmploymentDataResponse**](employmentdataresponse.md)

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

[\[Back to top\]](employmentstatusapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
