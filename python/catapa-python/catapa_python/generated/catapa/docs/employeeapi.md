# EmployeeApi

## EmployeeApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                           | HTTP request                                      | Description                              |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------- | ---------------------------------------- |
| [**add\_employee**](employeeapi.md#add_employee)                                                 | **POST** /core/v1/employees                       | Add Employee                             |
| [**delete\_employee**](employeeapi.md#delete_employee)                                           | **DELETE** /core/v1/employees                     | Delete Employee                          |
| [**get\_additional\_assignment\_approvals**](employeeapi.md#get_additional_assignment_approvals) | **GET** /core/v1/additional-assignments/approvals | List All Additional Assignment Approvals |
| [**get\_employee\_hiring\_data**](employeeapi.md#get_employee_hiring_data)                       | **GET** /core/v1/employees/{id}/hiring-data       | Get Employee Hiring Data                 |
| [**list\_all\_employees**](employeeapi.md#list_all_employees)                                    | **GET** /core/v1/employees                        | List All Employees                       |
| [**update\_employee\_hiring\_data**](employeeapi.md#update_employee_hiring_data)                 | **PUT** /core/v1/employees/{id}/hiring-data       | Update Employee Hiring Data              |
| [**update\_manager**](employeeapi.md#update_manager)                                             | **PUT** /core/v1/employees/{employeeId}/manager   | Update Manager                           |

## **add\_employee**

> EmployeeCreateResponse add\_employee(employee\_request)

Add Employee

#### Example

```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
employee_request = EmployeeRequest() # EmployeeRequest |  (optional)

try:
    # Add Employee
    api_response = api_instance.add_employee(employee_request=employee_request)
    print("The response of EmployeeApi->add_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->add_employee: %s\n" % e)
```

#### Parameters

| Name                  | Type                                      | Description | Notes       |
| --------------------- | ----------------------------------------- | ----------- | ----------- |
| **employee\_request** | [**EmployeeRequest**](employeerequest.md) |             | \[optional] |

#### Return type

[**EmployeeCreateResponse**](employeecreateresponse.md)

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

[\[Back to top\]](employeeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **delete\_employee**

> BulkOperationResponse delete\_employee()

Delete Employee

This endpoint expects a JSON array in the request body, where each item is an object containing an `id` field representing the employee to delete. The array must contain between 1 and 50 items. **Request body schema:** `json [ { \"id\": \"string\" } ]` **Example payload:** `json [ { \"id\": \"7eb20b1e-577b-45c0-adf4-c76ae17cdeae\" } ]`

#### Example

```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)

try:
    # Delete Employee
    api_response = api_instance.delete_employee()
    print("The response of EmployeeApi->delete_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->delete_employee: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**BulkOperationResponse**](bulkoperationresponse.md)

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

[\[Back to top\]](employeeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_additional\_assignment\_approvals**

> AdditionalAssignmentApprovalListResponse get\_additional\_assignment\_approvals(page, size, query)

List All Additional Assignment Approvals

#### Example

```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:f47ac10b-58cc-4372-a567-0e02b2c3d479' # str | ### Search Query | Supported Keys          | Supported Operators | Notes                                                                                | |-------------------------|---------------------|--------------------------------------------------------------------------------------| | id                      | `:`                 | Equal operator                                                                       | | employee.id             | `:`                 | Equal operator                                                                       | | employee.name           | `:`                 | Like operator                                                                        | | approvalStatus          | `:`                 | Equal operator                                                                       | | additionalAssignment.id | `:`                 | Equal operator with multiple values. Each value should separated with delimiters `;` |  (optional)

try:
    # List All Additional Assignment Approvals
    api_response = api_instance.get_additional_assignment_approvals(page=page, size=size, query=query)
    print("The response of EmployeeApi->get_additional_assignment_approvals:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->get_additional_assignment_approvals: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**AdditionalAssignmentApprovalListResponse**](additionalassignmentapprovallistresponse.md)

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

[\[Back to top\]](employeeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_employee\_hiring\_data**

> EmployeeHiringDataSimpleResponse get\_employee\_hiring\_data(id)

Get Employee Hiring Data

#### Example

```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
id = 'id_example' # str | 

try:
    # Get Employee Hiring Data
    api_response = api_instance.get_employee_hiring_data(id)
    print("The response of EmployeeApi->get_employee_hiring_data:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->get_employee_hiring_data: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**EmployeeHiringDataSimpleResponse**](employeehiringdatasimpleresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | ok          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](employeeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **list\_all\_employees**

> EmployeeListResponse list\_all\_employees(page, size, query)

List All Employees

#### Example

```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'identificationNumberIn:E001' # str | ### Search query   | Supported Keys                    | Supported Operators | Notes                                                                                                                                                 | |-----------------------------------|---------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------| | id                                | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter                                                             | | active                            | `:`                 | Equal operator                                                                                                                                        | | createdDate                       | `>`<br/>`<`         | Greater than or equal operator<br/>Less than or equal operator<br/><br/>Use unix timestamp in milliseconds, e.g. `createdDate>1675827618944`          | | employmentStatus.organization.id  | `:`                 | Equal operator                                                                                                                                        | | identificationNumber              | `:`                 | Like operator                                                                                                                                         | | identificationNumberIn            | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter                                                             | | name                              | `:`                 | Like operator                                                                                                                                         | | startDate                         | `:`<br/>`>`<br/>`<` | Equal operator<br/>Greater than or equal operator<br/>Less than or equal operator<br/><br/>Use `yyyy-MM-dd` format, e.g. `startDate>2023-05-31`       | | lastWorkingDate                   | `>`<br/>`<`         | Greater than or equal operator<br/>Less than or equal operator<br/><br/>Use `yyyy-MM-dd` format, e.g. `lastWorkingDate>2023-05-31`                    |  (optional)

try:
    # List All Employees
    api_response = api_instance.list_all_employees(page=page, size=size, query=query)
    print("The response of EmployeeApi->list_all_employees:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->list_all_employees: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search query | Supported Keys               |

#### Return type

[**EmployeeListResponse**](employeelistresponse.md)

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

[\[Back to top\]](employeeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_employee\_hiring\_data**

> EmployeeHiringDataResponse update\_employee\_hiring\_data(id, employee\_hiring\_data\_request)

Update Employee Hiring Data

#### Example

```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
id = 'id_example' # str | 
employee_hiring_data_request = EmployeeHiringDataRequest() # EmployeeHiringDataRequest |  (optional)

try:
    # Update Employee Hiring Data
    api_response = api_instance.update_employee_hiring_data(id, employee_hiring_data_request=employee_hiring_data_request)
    print("The response of EmployeeApi->update_employee_hiring_data:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->update_employee_hiring_data: %s\n" % e)
```

#### Parameters

| Name                                | Type                                                          | Description | Notes       |
| ----------------------------------- | ------------------------------------------------------------- | ----------- | ----------- |
| **id**                              | **str**                                                       |             |             |
| **employee\_hiring\_data\_request** | [**EmployeeHiringDataRequest**](employeehiringdatarequest.md) |             | \[optional] |

#### Return type

[**EmployeeHiringDataResponse**](employeehiringdataresponse.md)

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

[\[Back to top\]](employeeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_manager**

> EmployeeFullResponse update\_manager(employee\_id, manager\_request)

Update Manager

#### Example

```python
from catapa import Catapa, EmployeeApi, ApiException
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
api_instance = EmployeeApi(client)
employee_id = 'employee_id_example' # str | 
manager_request = ManagerRequest() # ManagerRequest |  (optional)

try:
    # Update Manager
    api_response = api_instance.update_manager(employee_id, manager_request=manager_request)
    print("The response of EmployeeApi->update_manager:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeApi->update_manager: %s\n" % e)
```

#### Parameters

| Name                 | Type                                    | Description | Notes       |
| -------------------- | --------------------------------------- | ----------- | ----------- |
| **employee\_id**     | **str**                                 |             |             |
| **manager\_request** | [**ManagerRequest**](managerrequest.md) |             | \[optional] |

#### Return type

[**EmployeeFullResponse**](employeefullresponse.md)

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

[\[Back to top\]](employeeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
