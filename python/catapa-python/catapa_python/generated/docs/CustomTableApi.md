# CustomTableApi

## CustomTableApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                       | HTTP request                             | Description                   |
| ---------------------------------------------------------------------------- | ---------------------------------------- | ----------------------------- |
| [**find\_all\_custom\_tables**](CustomTableApi.md#find_all_custom_tables)    | **GET** /core/v1/custom-tables           | Retrieve all custom tables    |
| [**find\_custom\_table\_by\_id**](CustomTableApi.md#find_custom_table_by_id) | **GET** /core/v1/custom-tables/{tableId} | Find Custom Table by Table ID |

## **find\_all\_custom\_tables**

> CustomTableListResponse find\_all\_custom\_tables(page, size, query)

Retrieve all custom tables

#### Example

```python
from catapa import Catapa, CustomTableApi, ApiException
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
api_instance = CustomTableApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:a31aa166-70be-4303-81e4-5ada93b5213a' # str | ### Search Query | Supported Keys      | Supported Operators | Notes                                                                                     | |---------------------|---------------------|-------------------------------------------------------------------------------------------| | id                  | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | tableName           | `:`                 | Like operator                                                                             | | displayName         | `:`                 | Like operator                                                                             | | menuLocation        | `:`                 | Like operator                                                                             | | historicalType      | `:`                 | Like operator                                                                             | | parentEntity        | `:`                 | Like operator                                                                             | | parentEntityIsNull  | `:`                 | Equal operator<br/>Boolean                                                                | | parentReferenceField| `:`                 | Like operator                                                                             |  (optional)

try:
    # Retrieve all custom tables
    api_response = api_instance.find_all_custom_tables(page=page, size=size, query=query)
    print("The response of CustomTableApi->find_all_custom_tables:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CustomTableApi->find_all_custom_tables: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**CustomTableListResponse**](CustomTableListResponse.md)

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

[\[Back to top\]](CustomTableApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **find\_custom\_table\_by\_id**

> CustomTableResponse find\_custom\_table\_by\_id(table\_id)

Find Custom Table by Table ID

#### Example

```python
from catapa import Catapa, CustomTableApi, ApiException
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
api_instance = CustomTableApi(client)
table_id = 'table_id_example' # str | 

try:
    # Find Custom Table by Table ID
    api_response = api_instance.find_custom_table_by_id(table_id)
    print("The response of CustomTableApi->find_custom_table_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CustomTableApi->find_custom_table_by_id: %s\n" % e)
```

#### Parameters

| Name          | Type    | Description | Notes |
| ------------- | ------- | ----------- | ----- |
| **table\_id** | **str** |             |       |

#### Return type

[**CustomTableResponse**](CustomTableResponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description            | Response headers |
| ----------- | ---------------------- | ---------------- |
| **200**     | Successful operation   | -                |
| **400**     | Bad Request            | -                |
| **404**     | Custom table not found | -                |

[\[Back to top\]](CustomTableApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
