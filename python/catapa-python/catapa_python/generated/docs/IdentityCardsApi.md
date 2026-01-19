# IdentityCardsApi

## IdentityCardsApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                      | HTTP request                                                                                | Description                    |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------ |
| [**create\_employee\_identity\_cards**](IdentityCardsApi.md#create_employee_identity_cards) | **POST** /core/v1/employees/{employeeId}/employee-identity-cards                            | Create Employee Identity Cards |
| [**delete\_employee\_identity\_cards**](IdentityCardsApi.md#delete_employee_identity_cards) | **DELETE** /core/v1/employees/{employeeId}/employee-identity-cards/{employeeIdentityCardId} | Delete Employee Identity Cards |
| [**get\_employee\_identity\_cards**](IdentityCardsApi.md#get_employee_identity_cards)       | **GET** /core/v1/employees/{employeeId}/employee-identity-cards                             | Get Employee Identity Cards    |
| [**update\_employee\_identity\_cards**](IdentityCardsApi.md#update_employee_identity_cards) | **PUT** /core/v1/employees/{employeeId}/employee-identity-cards/{employeeIdentityCardId}    | Update Employee Identity Cards |

## **create\_employee\_identity\_cards**

> EmployeeIdentityCardResponse create\_employee\_identity\_cards(employee\_id, employee\_identity\_card\_request)

Create Employee Identity Cards

#### Example

```python
from catapa import Catapa, IdentityCardsApi, ApiException
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
api_instance = IdentityCardsApi(client)
employee_id = 'employee_id_example' # str | 
employee_identity_card_request = EmployeeIdentityCardRequest() # EmployeeIdentityCardRequest |  (optional)

try:
    # Create Employee Identity Cards
    api_response = api_instance.create_employee_identity_cards(employee_id, employee_identity_card_request=employee_identity_card_request)
    print("The response of IdentityCardsApi->create_employee_identity_cards:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IdentityCardsApi->create_employee_identity_cards: %s\n" % e)
```

#### Parameters

| Name                                  | Type                                                              | Description | Notes       |
| ------------------------------------- | ----------------------------------------------------------------- | ----------- | ----------- |
| **employee\_id**                      | **str**                                                           |             |             |
| **employee\_identity\_card\_request** | [**EmployeeIdentityCardRequest**](EmployeeIdentityCardRequest.md) |             | \[optional] |

#### Return type

[**EmployeeIdentityCardResponse**](EmployeeIdentityCardResponse.md)

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

[\[Back to top\]](IdentityCardsApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **delete\_employee\_identity\_cards**

> object delete\_employee\_identity\_cards(employee\_id, employee\_identity\_card\_id)

Delete Employee Identity Cards

#### Example

```python
from catapa import Catapa, IdentityCardsApi, ApiException
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
api_instance = IdentityCardsApi(client)
employee_id = 'employee_id_example' # str | 
employee_identity_card_id = 'employee_identity_card_id_example' # str | 

try:
    # Delete Employee Identity Cards
    api_response = api_instance.delete_employee_identity_cards(employee_id, employee_identity_card_id)
    print("The response of IdentityCardsApi->delete_employee_identity_cards:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IdentityCardsApi->delete_employee_identity_cards: %s\n" % e)
```

#### Parameters

| Name                             | Type    | Description | Notes |
| -------------------------------- | ------- | ----------- | ----- |
| **employee\_id**                 | **str** |             |       |
| **employee\_identity\_card\_id** | **str** |             |       |

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

[\[Back to top\]](IdentityCardsApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_employee\_identity\_cards**

> EmployeeIdentityCardListResponse get\_employee\_identity\_cards(employee\_id, query)

Get Employee Identity Cards

#### Example

```python
from catapa import Catapa, IdentityCardsApi, ApiException
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
api_instance = IdentityCardsApi(client)
employee_id = 'employee_id_example' # str | 
query = 'effectiveDate<2025-01-31' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | effectiveDate      | `<`                 | Less than or equal to<br/><br/>Use `yyyy-MM-dd` format, e.g. `effectiveDate<2025-01-31  ` |  (optional)

try:
    # Get Employee Identity Cards
    api_response = api_instance.get_employee_identity_cards(employee_id, query=query)
    print("The response of IdentityCardsApi->get_employee_identity_cards:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IdentityCardsApi->get_employee_identity_cards: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description      | Notes          |
| ---------------- | ------- | ---------------- | -------------- |
| **employee\_id** | **str** |                  |                |
| **query**        | **str** | ### Search Query | Supported Keys |

#### Return type

[**EmployeeIdentityCardListResponse**](EmployeeIdentityCardListResponse.md)

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

[\[Back to top\]](IdentityCardsApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_employee\_identity\_cards**

> EmployeeIdentityCardResponse update\_employee\_identity\_cards(employee\_id, employee\_identity\_card\_id, employee\_identity\_card\_request)

Update Employee Identity Cards

#### Example

```python
from catapa import Catapa, IdentityCardsApi, ApiException
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
api_instance = IdentityCardsApi(client)
employee_id = 'employee_id_example' # str | 
employee_identity_card_id = 'employee_identity_card_id_example' # str | 
employee_identity_card_request = EmployeeIdentityCardRequest() # EmployeeIdentityCardRequest |  (optional)

try:
    # Update Employee Identity Cards
    api_response = api_instance.update_employee_identity_cards(employee_id, employee_identity_card_id, employee_identity_card_request=employee_identity_card_request)
    print("The response of IdentityCardsApi->update_employee_identity_cards:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IdentityCardsApi->update_employee_identity_cards: %s\n" % e)
```

#### Parameters

| Name                                  | Type                                                              | Description | Notes       |
| ------------------------------------- | ----------------------------------------------------------------- | ----------- | ----------- |
| **employee\_id**                      | **str**                                                           |             |             |
| **employee\_identity\_card\_id**      | **str**                                                           |             |             |
| **employee\_identity\_card\_request** | [**EmployeeIdentityCardRequest**](EmployeeIdentityCardRequest.md) |             | \[optional] |

#### Return type

[**EmployeeIdentityCardResponse**](EmployeeIdentityCardResponse.md)

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

[\[Back to top\]](IdentityCardsApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
