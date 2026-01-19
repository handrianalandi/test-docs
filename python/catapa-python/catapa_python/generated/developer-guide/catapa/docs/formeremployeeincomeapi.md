# FormerEmployeeIncomeApi

## FormerEmployeeIncomeApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                                                                                             | HTTP request                                                                                               | Description                                                         |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| [**get\_former\_employee\_income\_by\_id**](formeremployeeincomeapi.md#get_former_employee_income_by_id)                                                                           | **GET** /core/v1/former-employee-incomes/{id}                                                              | Get Former Employee Income By Id                                    |
| [**get\_former\_employee\_income\_employee**](formeremployeeincomeapi.md#get_former_employee_income_employee)                                                                      | **GET** /core/v1/former-employee-income-employees                                                          | Get Former Employee Income Employee                                 |
| [**get\_former\_employee\_income\_employee\_by\_former\_employee\_income\_id**](formeremployeeincomeapi.md#get_former_employee_income_employee_by_former_employee_income_id)       | **GET** /core/v1/former-employee-incomes/{formerEmployeeIncomeId}/former-employee-income-employees         | Get Former Employee Income Employee By Former Employee Income Id    |
| [**get\_former\_employee\_incomes**](formeremployeeincomeapi.md#get_former_employee_incomes)                                                                                       | **GET** /core/v1/former-employee-incomes                                                                   | Get Former Employee Incomes                                         |
| [**update\_former\_employee\_income\_employee\_by\_former\_employee\_income\_id**](formeremployeeincomeapi.md#update_former_employee_income_employee_by_former_employee_income_id) | **PUT** /core/v1/former-employee-incomes/{formerEmployeeIncomeId}/former-employee-income-employees/amounts | Update Former Employee Income Employee By Former Employee Income Id |

## **get\_former\_employee\_income\_by\_id**

> FormerEmployeeIncomeResponse get\_former\_employee\_income\_by\_id(id)

Get Former Employee Income By Id

#### Example

```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)
id = 'id_example' # str | 

try:
    # Get Former Employee Income By Id
    api_response = api_instance.get_former_employee_income_by_id(id)
    print("The response of FormerEmployeeIncomeApi->get_former_employee_income_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->get_former_employee_income_by_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**FormerEmployeeIncomeResponse**](formeremployeeincomeresponse.md)

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

[\[Back to top\]](formeremployeeincomeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_former\_employee\_income\_employee**

> FormerEmployeeIncomeEmployeeListResponse get\_former\_employee\_income\_employee()

Get Former Employee Income Employee

#### Search Query | Supported Keys | Supported Operators |Notes | | -------------- | ------------------- |--------------------------------------------------------------------------------------------| | paymentDate | : \\> < | Equal operator Greater than or equal to operator Less than or equal to equal operator| | paid | : | Equal operator |

#### Example

```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)

try:
    # Get Former Employee Income Employee
    api_response = api_instance.get_former_employee_income_employee()
    print("The response of FormerEmployeeIncomeApi->get_former_employee_income_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->get_former_employee_income_employee: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**FormerEmployeeIncomeEmployeeListResponse**](formeremployeeincomeemployeelistresponse.md)

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

[\[Back to top\]](formeremployeeincomeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_former\_employee\_income\_employee\_by\_former\_employee\_income\_id**

> FormerEmployeeIncomeEmployeeListResponse get\_former\_employee\_income\_employee\_by\_former\_employee\_income\_id(former\_employee\_income\_id)

Get Former Employee Income Employee By Former Employee Income Id

#### Search Query | Supported Keys | Supported Operators | Notes | | -------------- | ------------------- | ------------------------------------------------------------------------------------------- | | paymentDate | : \\> < | Equal operator Greater than or equal to operator Less than or equal to equal operator | | paid | : | Equal operator |

#### Example

```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)
former_employee_income_id = 'former_employee_income_id_example' # str | 

try:
    # Get Former Employee Income Employee By Former Employee Income Id
    api_response = api_instance.get_former_employee_income_employee_by_former_employee_income_id(former_employee_income_id)
    print("The response of FormerEmployeeIncomeApi->get_former_employee_income_employee_by_former_employee_income_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->get_former_employee_income_employee_by_former_employee_income_id: %s\n" % e)
```

#### Parameters

| Name                             | Type    | Description | Notes |
| -------------------------------- | ------- | ----------- | ----- |
| **former\_employee\_income\_id** | **str** |             |       |

#### Return type

[**FormerEmployeeIncomeEmployeeListResponse**](formeremployeeincomeemployeelistresponse.md)

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

[\[Back to top\]](formeremployeeincomeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_former\_employee\_incomes**

> FormerEmployeeIncomeListResponse get\_former\_employee\_incomes()

Get Former Employee Incomes

#### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------- | ------------------- | --------------------------------------------------------------------------------------------| | itemName | : | Like operator  | | itemType | : | Equal operator | | referenceDate | : \\> < | Equal operator Greater than or equal to operator Less than or equal to equal operator | | pph21Method | : | Equal operator | | minimumLastWorkingDate | : \\> < | Equal operator Greater than or equal to operator Less than or equal to equal operator | | proportionalMethod | : | Equal operator |

#### Example

```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)

try:
    # Get Former Employee Incomes
    api_response = api_instance.get_former_employee_incomes()
    print("The response of FormerEmployeeIncomeApi->get_former_employee_incomes:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->get_former_employee_incomes: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**FormerEmployeeIncomeListResponse**](formeremployeeincomelistresponse.md)

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

[\[Back to top\]](formeremployeeincomeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_former\_employee\_income\_employee\_by\_former\_employee\_income\_id**

> object update\_former\_employee\_income\_employee\_by\_former\_employee\_income\_id(former\_employee\_income\_id, former\_employee\_income\_employee\_amount\_update\_request)

Update Former Employee Income Employee By Former Employee Income Id

#### Example

```python
from catapa import Catapa, FormerEmployeeIncomeApi, ApiException
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
api_instance = FormerEmployeeIncomeApi(client)
former_employee_income_id = 'former_employee_income_id_example' # str | 
former_employee_income_employee_amount_update_request = List[FormerEmployeeIncomeEmployeeAmountUpdateRequest]() # List[FormerEmployeeIncomeEmployeeAmountUpdateRequest] |  (optional)

try:
    # Update Former Employee Income Employee By Former Employee Income Id
    api_response = api_instance.update_former_employee_income_employee_by_former_employee_income_id(former_employee_income_id, former_employee_income_employee_amount_update_request=former_employee_income_employee_amount_update_request)
    print("The response of FormerEmployeeIncomeApi->update_former_employee_income_employee_by_former_employee_income_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling FormerEmployeeIncomeApi->update_former_employee_income_employee_by_former_employee_income_id: %s\n" % e)
```

#### Parameters

| Name                                                            | Type                                                                                                              | Description | Notes       |
| --------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **former\_employee\_income\_id**                                | **str**                                                                                                           |             |             |
| **former\_employee\_income\_employee\_amount\_update\_request** | [**List\[FormerEmployeeIncomeEmployeeAmountUpdateRequest\]**](formeremployeeincomeemployeeamountupdaterequest.md) |             | \[optional] |

#### Return type

**object**

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

[\[Back to top\]](formeremployeeincomeapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
