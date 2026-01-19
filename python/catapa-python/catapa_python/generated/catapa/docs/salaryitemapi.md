# SalaryItemApi

## SalaryItemApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                  | HTTP request                       | Description           |
| ----------------------------------------------------------------------- | ---------------------------------- | --------------------- |
| [**get\_salary\_item\_by\_id**](salaryitemapi.md#get_salary_item_by_id) | **GET** /core/v1/salary-items/{id} | Get Salary Item by ID |
| [**get\_salary\_items**](salaryitemapi.md#get_salary_items)             | **GET** /core/v1/salary-items      | Get Salary Items      |

## **get\_salary\_item\_by\_id**

> SalaryItemResponse get\_salary\_item\_by\_id(id)

Get Salary Item by ID

#### Example

```python
from catapa import Catapa, SalaryItemApi, ApiException
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
api_instance = SalaryItemApi(client)
id = 'id_example' # str | 

try:
    # Get Salary Item by ID
    api_response = api_instance.get_salary_item_by_id(id)
    print("The response of SalaryItemApi->get_salary_item_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryItemApi->get_salary_item_by_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**SalaryItemResponse**](salaryitemresponse.md)

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

[\[Back to top\]](salaryitemapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_salary\_items**

> SalaryItemListResponse get\_salary\_items(page, size, include\_default\_type, query)

Get Salary Items

#### Example

```python
from catapa import Catapa, SalaryItemApi, ApiException
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
api_instance = SalaryItemApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
include_default_type = False # bool |  (optional) (default to False)
query = 'query_example' # str | ### Search Query | Supported Keys | Supported Operators | Notes         | | -------------- | ------------------- | ------------- | | code           | :                   | Like operator | | name           | :                   | Like operator |  (optional)

try:
    # Get Salary Items
    api_response = api_instance.get_salary_items(page=page, size=size, include_default_type=include_default_type, query=query)
    print("The response of SalaryItemApi->get_salary_items:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryItemApi->get_salary_items: %s\n" % e)
```

#### Parameters

| Name                       | Type     | Description      | Notes                           |
| -------------------------- | -------- | ---------------- | ------------------------------- |
| **page**                   | **int**  | Page number      | \[optional] \[default to 0]     |
| **size**                   | **int**  | Page size        | \[optional] \[default to 10]    |
| **include\_default\_type** | **bool** |                  | \[optional] \[default to False] |
| **query**                  | **str**  | ### Search Query | Supported Keys                  |

#### Return type

[**SalaryItemListResponse**](salaryitemlistresponse.md)

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

[\[Back to top\]](salaryitemapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
