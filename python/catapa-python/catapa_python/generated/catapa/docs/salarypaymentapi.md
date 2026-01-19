# SalaryPaymentApi

## SalaryPaymentApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                       | HTTP request                                                   | Description                            |
| ------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------- | -------------------------------------- |
| [**get\_payment\_item\_groups**](salarypaymentapi.md#get_payment_item_groups)                                | **GET** /core/v1/salary-payments/{id}/payment-item-groups      | Get Payment Item Groups                |
| [**get\_processed\_salary\_payment\_summaries**](salarypaymentapi.md#get_processed_salary_payment_summaries) | **GET** /core/v1/salary-payment-summaries                      | Get Processed Salary Payment Summaries |
| [**get\_processed\_salary\_payments**](salarypaymentapi.md#get_processed_salary_payments)                    | **GET** /core/v1/salary-payments/process/processable/processed | Get Processed Salary Payments          |
| [**get\_salary\_payments**](salarypaymentapi.md#get_salary_payments)                                         | **GET** /core/v1/salary-payments                               | Get Salary Payments                    |
| [**get\_salary\_payments\_date**](salarypaymentapi.md#get_salary_payments_date)                              | **GET** /core/v1/salary-payments/dates                         | Get Salary Payments Date               |

## **get\_payment\_item\_groups**

> PaymentItemGroupListResponse get\_payment\_item\_groups(id)

Get Payment Item Groups

#### Example

```python
from catapa import Catapa, SalaryPaymentApi, ApiException
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
api_instance = SalaryPaymentApi(client)
id = 'id_example' # str | 

try:
    # Get Payment Item Groups
    api_response = api_instance.get_payment_item_groups(id)
    print("The response of SalaryPaymentApi->get_payment_item_groups:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryPaymentApi->get_payment_item_groups: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**PaymentItemGroupListResponse**](paymentitemgrouplistresponse.md)

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

[\[Back to top\]](salarypaymentapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_processed\_salary\_payment\_summaries**

> SalaryPaymentSummaryListResponse get\_processed\_salary\_payment\_summaries()

Get Processed Salary Payment Summaries

#### Search Query | Supported Keys | Supported Operators | Notes | | -------------------------- | ------------------- | ---------------------------------------------------------- | | exported | : | Like operator | | bankId | : | Like operator | | companyBankAccountId | : | Like operator | | bankName | : | Like operator | | year | : > < | Equal Greater than or equal to Less than or equal to | | month | : > < | Equal Greater than or equal to Less than or equal to | | numberOfProcessedEmployees | : > < | Equal Greater than or equal to Less than or equal to | | paymentDate | : > < | Equal Greater than or equal to Less than or equal to |

#### Example

```python
from catapa import Catapa, SalaryPaymentApi, ApiException
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
api_instance = SalaryPaymentApi(client)

try:
    # Get Processed Salary Payment Summaries
    api_response = api_instance.get_processed_salary_payment_summaries()
    print("The response of SalaryPaymentApi->get_processed_salary_payment_summaries:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryPaymentApi->get_processed_salary_payment_summaries: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**SalaryPaymentSummaryListResponse**](salarypaymentsummarylistresponse.md)

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

[\[Back to top\]](salarypaymentapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_processed\_salary\_payments**

> ProcessedSalaryPaymentListResponse get\_processed\_salary\_payments()

Get Processed Salary Payments

#### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------- | ------------------- | ------------- | | year | : | Like operator | | month | : | Like operator | | salaryPaymentProcess | : | Like operator | | salaryPaymentSummaryId | : | Like operator |

#### Example

```python
from catapa import Catapa, SalaryPaymentApi, ApiException
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
api_instance = SalaryPaymentApi(client)

try:
    # Get Processed Salary Payments
    api_response = api_instance.get_processed_salary_payments()
    print("The response of SalaryPaymentApi->get_processed_salary_payments:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryPaymentApi->get_processed_salary_payments: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**ProcessedSalaryPaymentListResponse**](processedsalarypaymentlistresponse.md)

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

[\[Back to top\]](salarypaymentapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_salary\_payments**

> SalaryPaymentListResponse get\_salary\_payments()

Get Salary Payments

#### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------------- | -------------------------- | ---------------------------------------------------------------------------- | | process | `:` | Equal operator | | salaryPaymentSummary.id | `:` | Like operator | | paymentDate | `:` `>` `<` | Equal operator Greater than or equal to Less than or equal to | | employee.id | `:` | Equal operator |

#### Example

```python
from catapa import Catapa, SalaryPaymentApi, ApiException
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
api_instance = SalaryPaymentApi(client)

try:
    # Get Salary Payments
    api_response = api_instance.get_salary_payments()
    print("The response of SalaryPaymentApi->get_salary_payments:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryPaymentApi->get_salary_payments: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**SalaryPaymentListResponse**](salarypaymentlistresponse.md)

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

[\[Back to top\]](salarypaymentapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_salary\_payments\_date**

> List\[str] get\_salary\_payments\_date(year, month)

Get Salary Payments Date

#### Example

```python
from catapa import Catapa, SalaryPaymentApi, ApiException
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
api_instance = SalaryPaymentApi(client)
year = 3.4 # float |  (optional)
month = 3.4 # float |  (optional)

try:
    # Get Salary Payments Date
    api_response = api_instance.get_salary_payments_date(year=year, month=month)
    print("The response of SalaryPaymentApi->get_salary_payments_date:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SalaryPaymentApi->get_salary_payments_date: %s\n" % e)
```

#### Parameters

| Name      | Type      | Description | Notes       |
| --------- | --------- | ----------- | ----------- |
| **year**  | **float** |             | \[optional] |
| **month** | **float** |             | \[optional] |

#### Return type

**List\[str]**

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

[\[Back to top\]](salarypaymentapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
