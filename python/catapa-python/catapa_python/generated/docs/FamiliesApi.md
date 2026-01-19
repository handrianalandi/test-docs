# FamiliesApi

## FamiliesApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                 | HTTP request                                                            | Description               |
| ------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- | ------------------------- |
| [**approve\_family\_by\_employee**](FamiliesApi.md#approve_family_by_employee)                         | **PUT** /core/v1/families/approvals/approve                             | Approve Families          |
| [**create\_family\_by\_employee**](FamiliesApi.md#create_family_by_employee)                           | **POST** /core/v1/employees/{employeeId}/families/approvals             | Create Family By Employee |
| [**delete\_family\_by\_employee**](FamiliesApi.md#delete_family_by_employee)                           | **DELETE** /core/v1/employees/{employeeId}/families/{familyId}          | Delete Family             |
| [**get\_family\_by\_employee**](FamiliesApi.md#get_family_by_employee)                                 | **GET** /core/v1/employees/{employeeId}/families/approvals              | List All Families         |
| [**get\_historical\_families**](FamiliesApi.md#get_historical_families)                                | **GET** /core/v1/families                                               | Get Historical Families   |
| [**get\_job\_experiences\_by\_employeeand\_id**](FamiliesApi.md#get_job_experiences_by_employeeand_id) | **GET** /core/v1/employees/{employeeId}/families/approvals/{approvalId} | Get Family                |
| [**reject\_familiesby\_employee**](FamiliesApi.md#reject_familiesby_employee)                          | **PUT** /core/v1/families/approvals/reject                              | Reject Families           |
| [**update\_family\_by\_employee**](FamiliesApi.md#update_family_by_employee)                           | **PUT** /core/v1/employees/{employeeId}/families/approvals/{approvalId} | Update Family By Employee |

## **approve\_family\_by\_employee**

> BulkOperationResponse approve\_family\_by\_employee(id\_request)

Approve Families

#### Example

```python
from catapa import Catapa, FamiliesApi, ApiException
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
api_instance = FamiliesApi(client)
id_request = List[IdRequest]() # List[IdRequest] |  (optional)

try:
    # Approve Families
    api_response = api_instance.approve_family_by_employee(id_request=id_request)
    print("The response of FamiliesApi->approve_family_by_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FamiliesApi->approve_family_by_employee: %s\n" % e)
```

#### Parameters

| Name            | Type                                  | Description | Notes       |
| --------------- | ------------------------------------- | ----------- | ----------- |
| **id\_request** | [**List\[IdRequest\]**](IdRequest.md) |             | \[optional] |

#### Return type

[**BulkOperationResponse**](BulkOperationResponse.md)

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

[\[Back to top\]](FamiliesApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **create\_family\_by\_employee**

> FamilyApprovalListItemWithApprovalStatusResponse create\_family\_by\_employee(employee\_id, family\_approval\_request)

Create Family By Employee

#### Example

```python
from catapa import Catapa, FamiliesApi, ApiException
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
api_instance = FamiliesApi(client)
employee_id = 'employee_id_example' # str | 
family_approval_request = FamilyApprovalRequest() # FamilyApprovalRequest |  (optional)

try:
    # Create Family By Employee
    api_response = api_instance.create_family_by_employee(employee_id, family_approval_request=family_approval_request)
    print("The response of FamiliesApi->create_family_by_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FamiliesApi->create_family_by_employee: %s\n" % e)
```

#### Parameters

| Name                          | Type                                                  | Description | Notes       |
| ----------------------------- | ----------------------------------------------------- | ----------- | ----------- |
| **employee\_id**              | **str**                                               |             |             |
| **family\_approval\_request** | [**FamilyApprovalRequest**](FamilyApprovalRequest.md) |             | \[optional] |

#### Return type

[**FamilyApprovalListItemWithApprovalStatusResponse**](FamilyApprovalListItemWithApprovalStatusResponse.md)

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

[\[Back to top\]](FamiliesApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **delete\_family\_by\_employee**

> delete\_family\_by\_employee(employee\_id, family\_id)

Delete Family

#### Example

```python
from catapa import Catapa, FamiliesApi, ApiException
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
api_instance = FamiliesApi(client)
employee_id = 'employee_id_example' # str | 
family_id = 'family_id_example' # str | 

try:
    # Delete Family
    api_instance.delete_family_by_employee(employee_id, family_id)
except ApiException as e:
    print("Exception when calling FamiliesApi->delete_family_by_employee: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **employee\_id** | **str** |             |       |
| **family\_id**   | **str** |             |       |

#### Return type

void (empty response body)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **404**     | Not Found   | -                |

[\[Back to top\]](FamiliesApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_family\_by\_employee**

> FamilyApprovalListResponse get\_family\_by\_employee(employee\_id)

List All Families

#### Example

```python
from catapa import Catapa, FamiliesApi, ApiException
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
api_instance = FamiliesApi(client)
employee_id = 'employee_id_example' # str | 

try:
    # List All Families
    api_response = api_instance.get_family_by_employee(employee_id)
    print("The response of FamiliesApi->get_family_by_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FamiliesApi->get_family_by_employee: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **employee\_id** | **str** |             |       |

#### Return type

[**FamilyApprovalListResponse**](FamilyApprovalListResponse.md)

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

[\[Back to top\]](FamiliesApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_historical\_families**

> FamilyHistoricalListResponse get\_historical\_families(page, size, query)

Get Historical Families

#### Example

```python
from catapa import Catapa, FamiliesApi, ApiException
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
api_instance = FamiliesApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | employee.id        | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |  (optional)

try:
    # Get Historical Families
    api_response = api_instance.get_historical_families(page=page, size=size, query=query)
    print("The response of FamiliesApi->get_historical_families:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FamiliesApi->get_historical_families: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**FamilyHistoricalListResponse**](FamilyHistoricalListResponse.md)

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

[\[Back to top\]](FamiliesApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_job\_experiences\_by\_employeeand\_id**

> FamilyApprovalListItemWithApprovalStatusResponse get\_job\_experiences\_by\_employeeand\_id(tenant, employee\_id, approval\_id)

Get Family

#### Example

```python
from catapa import Catapa, FamiliesApi, ApiException
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
api_instance = FamiliesApi(client)
tenant = 'tenant_example' # str | 
employee_id = 'employee_id_example' # str | 
approval_id = 'approval_id_example' # str | 

try:
    # Get Family
    api_response = api_instance.get_job_experiences_by_employeeand_id(tenant, employee_id, approval_id)
    print("The response of FamiliesApi->get_job_experiences_by_employeeand_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FamiliesApi->get_job_experiences_by_employeeand_id: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **tenant**       | **str** |             |       |
| **employee\_id** | **str** |             |       |
| **approval\_id** | **str** |             |       |

#### Return type

[**FamilyApprovalListItemWithApprovalStatusResponse**](FamilyApprovalListItemWithApprovalStatusResponse.md)

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

[\[Back to top\]](FamiliesApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **reject\_familiesby\_employee**

> BulkOperationResponse reject\_familiesby\_employee(reject\_approval\_request)

Reject Families

#### Example

```python
from catapa import Catapa, FamiliesApi, ApiException
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
api_instance = FamiliesApi(client)
reject_approval_request = List[RejectApprovalRequest]() # List[RejectApprovalRequest] |  (optional)

try:
    # Reject Families
    api_response = api_instance.reject_familiesby_employee(reject_approval_request=reject_approval_request)
    print("The response of FamiliesApi->reject_familiesby_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FamiliesApi->reject_familiesby_employee: %s\n" % e)
```

#### Parameters

| Name                          | Type                                                          | Description | Notes       |
| ----------------------------- | ------------------------------------------------------------- | ----------- | ----------- |
| **reject\_approval\_request** | [**List\[RejectApprovalRequest\]**](RejectApprovalRequest.md) |             | \[optional] |

#### Return type

[**BulkOperationResponse**](BulkOperationResponse.md)

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

[\[Back to top\]](FamiliesApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_family\_by\_employee**

> FamilyApprovalListItemWithApprovalStatusResponse update\_family\_by\_employee(tenant, employee\_id, approval\_id, family\_approval\_request)

Update Family By Employee

#### Example

```python
from catapa import Catapa, FamiliesApi, ApiException
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
api_instance = FamiliesApi(client)
tenant = 'tenant_example' # str | 
employee_id = 'employee_id_example' # str | 
approval_id = 'approval_id_example' # str | 
family_approval_request = FamilyApprovalRequest() # FamilyApprovalRequest |  (optional)

try:
    # Update Family By Employee
    api_response = api_instance.update_family_by_employee(tenant, employee_id, approval_id, family_approval_request=family_approval_request)
    print("The response of FamiliesApi->update_family_by_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FamiliesApi->update_family_by_employee: %s\n" % e)
```

#### Parameters

| Name                          | Type                                                  | Description | Notes       |
| ----------------------------- | ----------------------------------------------------- | ----------- | ----------- |
| **tenant**                    | **str**                                               |             |             |
| **employee\_id**              | **str**                                               |             |             |
| **approval\_id**              | **str**                                               |             |             |
| **family\_approval\_request** | [**FamilyApprovalRequest**](FamilyApprovalRequest.md) |             | \[optional] |

#### Return type

[**FamilyApprovalListItemWithApprovalStatusResponse**](FamilyApprovalListItemWithApprovalStatusResponse.md)

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

[\[Back to top\]](FamiliesApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
