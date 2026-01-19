# UserApi

## UserApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                | HTTP request           | Description        |
| ----------------------------------------------------- | ---------------------- | ------------------ |
| [**find\_all\_users**](UserApi.md#find_all_users)     | **GET** /core/v1/users | Retrieve all users |
| [**get\_current\_user**](UserApi.md#get_current_user) | **GET** /v1/users/me   | Get Current User   |

## **find\_all\_users**

> UserListResponse find\_all\_users(page, size, query)

Retrieve all users

#### Example

```python
from catapa import Catapa, UserApi, ApiException
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
api_instance = UserApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'usernameIn:pros;senior;gamer' # str | ### Search Query | Supported Keys           | Supported Operators | Notes                                                                                     | |--------------------------|---------------------|-------------------------------------------------------------------------------------------| | usernameIn                 | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter  |                                         |  (optional)

try:
    # Retrieve all users
    api_response = api_instance.find_all_users(page=page, size=size, query=query)
    print("The response of UserApi->find_all_users:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UserApi->find_all_users: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**UserListResponse**](UserListResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Successful operation | -                |
| **400**     | Bad Request          | -                |

[\[Back to top\]](UserApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_current\_user**

> UserAndRoleResponse get\_current\_user()

Get Current User

#### Example

```python
from catapa import Catapa, UserApi, ApiException
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
api_instance = UserApi(client)

try:
    # Get Current User
    api_response = api_instance.get_current_user()
    print("The response of UserApi->get_current_user:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling UserApi->get_current_user: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**UserAndRoleResponse**](UserAndRoleResponse.md)

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

[\[Back to top\]](UserApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
