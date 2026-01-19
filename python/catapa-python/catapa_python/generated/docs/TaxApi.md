# TaxApi

## TaxApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                          | HTTP request                                                 | Description                          |
| ----------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ------------------------------------ |
| [**create\_tax\_calculation**](TaxApi.md#create_tax_calculation)                                | **POST** /core/v1/tax-calculations                           | Create Tax Calculation               |
| [**download1721\_a1\_report**](TaxApi.md#download1721_a1_report)                                | **GET** /core/v1/tax-reports/1721-a1/{id}/download           | Download 1721 A1 Report              |
| [**download1721\_vi\_report**](TaxApi.md#download1721_vi_report)                                | **GET** /core/v1/pph21-reports/1721-vi/{id}/download         | Download 1721 VI Report              |
| [**download1721\_vi\_tax\_report**](TaxApi.md#download1721_vi_tax_report)                       | **GET** /core/v1/tax-reports/1721-vi/{id}/download           | Download 1721 VI Report              |
| [**download1721\_vii\_report**](TaxApi.md#download1721_vii_report)                              | **GET** /core/v1/pph21-reports/1721-vii/{id}/download        | Download 1721 VII Report             |
| [**download1721\_vii\_tax\_report**](TaxApi.md#download1721_vii_tax_report)                     | **GET** /core/v1/tax-reports/1721-vii/{id}/download          | Download 1721 VII Report             |
| [**download1721\_viii\_report**](TaxApi.md#download1721_viii_report)                            | **GET** /core/v1/tax-reports/1721-viii/{id}/download         | Download 1721 VIII Report            |
| [**get1721\_a1\_reports**](TaxApi.md#get1721_a1_reports)                                        | **GET** /core/v1/tax-reports/1721-a1                         | Get 1721 A1 Reports                  |
| [**get1721\_vi\_reports**](TaxApi.md#get1721_vi_reports)                                        | **GET** /core/v1/pph21-reports/1721-vi                       | Get 1721 VI Reports                  |
| [**get1721\_vi\_tax\_reports**](TaxApi.md#get1721_vi_tax_reports)                               | **GET** /core/v1/tax-reports/1721-vi                         | Get 1721 VI Reports                  |
| [**get1721\_vii\_reports**](TaxApi.md#get1721_vii_reports)                                      | **GET** /core/v1/pph21-reports/1721-vii                      | Get 1721 VII Reports                 |
| [**get1721\_vii\_tax\_reports**](TaxApi.md#get1721_vii_tax_reports)                             | **GET** /core/v1/tax-reports/1721-vii                        | Get 1721 VII Reports                 |
| [**get1721\_viii\_reports**](TaxApi.md#get1721_viii_reports)                                    | **GET** /core/v1/tax-reports/1721-viii                       | Get 1721 VIII Reports                |
| [**get\_detailed1721\_vi\_reports**](TaxApi.md#get_detailed1721_vi_reports)                     | **GET** /core/v1/pph21-reports/1721-vi/detail                | Get Detailed 1721 VI Reports         |
| [**get\_detailed1721\_vi\_tax\_reports**](TaxApi.md#get_detailed1721_vi_tax_reports)            | **GET** /core/v1/tax-reports/1721-vi/detail                  | Get Detailed 1721 VI Reports         |
| [**get\_kpp**](TaxApi.md#get_kpp)                                                               | **GET** /core/v1/kpps                                        | Get Kpp                              |
| [**get\_monthly\_tax\_report**](TaxApi.md#get_monthly_tax_report)                               | **GET** /core/v1/monthly-tax-reports                         | Get Monthly Tax Report               |
| [**get\_pph21\_policy**](TaxApi.md#get_pph21_policy)                                            | **GET** /core/v1/pph21-policies                              | Get Pph21 Policy                     |
| [**get\_ptkp\_categories**](TaxApi.md#get_ptkp_categories)                                      | **GET** /core/v1/ptkp-categories                             | Get Ptkp Categories                  |
| [**get\_tax\_calculations**](TaxApi.md#get_tax_calculations)                                    | **GET** /core/v1/tax-calculations                            | Get Tax Calculations                 |
| [**get\_tax\_calculations\_by\_external\_id**](TaxApi.md#get_tax_calculations_by_external_id)   | **GET** /core/v1/tax-calculations/externalId={externalId}    | Get Tax Calculations By External Id  |
| [**get\_tax\_calculations\_by\_id**](TaxApi.md#get_tax_calculations_by_id)                      | **GET** /core/v1/tax-calculations/{id}                       | Get Tax Calculations By Id           |
| [**monthly\_tax\_detail\_find\_all**](TaxApi.md#monthly_tax_detail_find_all)                    | **GET** /core/v1/monthly-tax-details                         | GET Monthly Tax Detail               |
| [**simulate\_annual\_tax**](TaxApi.md#simulate_annual_tax)                                      | **POST** /core/v1/tax-calculators                            | Simulate annual tax calculation      |
| [**simulate\_monthly\_tax**](TaxApi.md#simulate_monthly_tax)                                    | **POST** /core/v1/tax-calculators/monthly                    | Simulate monthly tax calculation     |
| [**undo\_tax\_calculation\_by\_id**](TaxApi.md#undo_tax_calculation_by_id)                      | **DELETE** /core/v1/tax-calculations/{id}                    | Undo Tax Calculation By Id           |
| [**undo\_tax\_calculations\_by\_external\_id**](TaxApi.md#undo_tax_calculations_by_external_id) | **DELETE** /core/v1/tax-calculations/externalId={externalId} | Undo Tax Calculations By External Id |

## **create\_tax\_calculation**

> TaxCalculationDetailResponse create\_tax\_calculation(tax\_calculation\_request)

Create Tax Calculation

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
tax_calculation_request = TaxCalculationRequest() # TaxCalculationRequest |  (optional)

try:
    # Create Tax Calculation
    api_response = api_instance.create_tax_calculation(tax_calculation_request=tax_calculation_request)
    print("The response of TaxApi->create_tax_calculation:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->create_tax_calculation: %s\n" % e)
```

#### Parameters

| Name                          | Type                                                  | Description | Notes       |
| ----------------------------- | ----------------------------------------------------- | ----------- | ----------- |
| **tax\_calculation\_request** | [**TaxCalculationRequest**](TaxCalculationRequest.md) |             | \[optional] |

#### Return type

[**TaxCalculationDetailResponse**](TaxCalculationDetailResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download1721\_a1\_report**

> object download1721\_a1\_report(id)

Download 1721 A1 Report

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
id = 'id_example' # str | 

try:
    # Download 1721 A1 Report
    api_response = api_instance.download1721_a1_report(id)
    print("The response of TaxApi->download1721_a1_report:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->download1721_a1_report: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download1721\_vi\_report**

> object download1721\_vi\_report(id)

Download 1721 VI Report

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
id = 'id_example' # str | 

try:
    # Download 1721 VI Report
    api_response = api_instance.download1721_vi_report(id)
    print("The response of TaxApi->download1721_vi_report:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->download1721_vi_report: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download1721\_vi\_tax\_report**

> object download1721\_vi\_tax\_report(id)

Download 1721 VI Report

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
id = 'id_example' # str | 

try:
    # Download 1721 VI Report
    api_response = api_instance.download1721_vi_tax_report(id)
    print("The response of TaxApi->download1721_vi_tax_report:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->download1721_vi_tax_report: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download1721\_vii\_report**

> object download1721\_vii\_report(id)

Download 1721 VII Report

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
id = 'id_example' # str | 

try:
    # Download 1721 VII Report
    api_response = api_instance.download1721_vii_report(id)
    print("The response of TaxApi->download1721_vii_report:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->download1721_vii_report: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download1721\_vii\_tax\_report**

> object download1721\_vii\_tax\_report(id)

Download 1721 VII Report

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
id = 'id_example' # str | 

try:
    # Download 1721 VII Report
    api_response = api_instance.download1721_vii_tax_report(id)
    print("The response of TaxApi->download1721_vii_tax_report:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->download1721_vii_tax_report: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download1721\_viii\_report**

> object download1721\_viii\_report(id)

Download 1721 VIII Report

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
id = 'id_example' # str | 

try:
    # Download 1721 VIII Report
    api_response = api_instance.download1721_viii_report(id)
    print("The response of TaxApi->download1721_viii_report:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->download1721_viii_report: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get1721\_a1\_reports**

> TaxReport1721A1ListResponse get1721\_a1\_reports()

Get 1721 A1 Reports

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get 1721 A1 Reports
    api_response = api_instance.get1721_a1_reports()
    print("The response of TaxApi->get1721_a1_reports:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get1721_a1_reports: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TaxReport1721A1ListResponse**](TaxReport1721A1ListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get1721\_vi\_reports**

> TaxReport1721VIListResponse get1721\_vi\_reports()

Get 1721 VI Reports

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get 1721 VI Reports
    api_response = api_instance.get1721_vi_reports()
    print("The response of TaxApi->get1721_vi_reports:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get1721_vi_reports: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TaxReport1721VIListResponse**](TaxReport1721VIListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get1721\_vi\_tax\_reports**

> TaxReport1721VIListResponse get1721\_vi\_tax\_reports()

Get 1721 VI Reports

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get 1721 VI Reports
    api_response = api_instance.get1721_vi_tax_reports()
    print("The response of TaxApi->get1721_vi_tax_reports:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get1721_vi_tax_reports: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TaxReport1721VIListResponse**](TaxReport1721VIListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get1721\_vii\_reports**

> TaxReport1721VIIListResponse get1721\_vii\_reports()

Get 1721 VII Reports

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get 1721 VII Reports
    api_response = api_instance.get1721_vii_reports()
    print("The response of TaxApi->get1721_vii_reports:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get1721_vii_reports: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TaxReport1721VIIListResponse**](TaxReport1721VIIListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get1721\_vii\_tax\_reports**

> TaxReport1721VIIListResponse get1721\_vii\_tax\_reports()

Get 1721 VII Reports

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get 1721 VII Reports
    api_response = api_instance.get1721_vii_tax_reports()
    print("The response of TaxApi->get1721_vii_tax_reports:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get1721_vii_tax_reports: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TaxReport1721VIIListResponse**](TaxReport1721VIIListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get1721\_viii\_reports**

> TaxReport1721VIIIListResponse get1721\_viii\_reports()

Get 1721 VIII Reports

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get 1721 VIII Reports
    api_response = api_instance.get1721_viii_reports()
    print("The response of TaxApi->get1721_viii_reports:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get1721_viii_reports: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TaxReport1721VIIIListResponse**](TaxReport1721VIIIListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_detailed1721\_vi\_reports**

> TaxReport1721VIDetailResponse get\_detailed1721\_vi\_reports()

Get Detailed 1721 VI Reports

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get Detailed 1721 VI Reports
    api_response = api_instance.get_detailed1721_vi_reports()
    print("The response of TaxApi->get_detailed1721_vi_reports:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get_detailed1721_vi_reports: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TaxReport1721VIDetailResponse**](TaxReport1721VIDetailResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_detailed1721\_vi\_tax\_reports**

> TaxReport1721VIDetailResponse get\_detailed1721\_vi\_tax\_reports()

Get Detailed 1721 VI Reports

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get Detailed 1721 VI Reports
    api_response = api_instance.get_detailed1721_vi_tax_reports()
    print("The response of TaxApi->get_detailed1721_vi_tax_reports:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get_detailed1721_vi_tax_reports: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TaxReport1721VIDetailResponse**](TaxReport1721VIDetailResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_kpp**

> KppListResponse get\_kpp()

Get Kpp

#### Search Query | Supported Keys | Supported Operators | Notes | | -------------- | ------------------- | ------------- | | name | : | Like operator | | code | : | Like operator |

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get Kpp
    api_response = api_instance.get_kpp()
    print("The response of TaxApi->get_kpp:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get_kpp: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**KppListResponse**](KppListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_monthly\_tax\_report**

> MonthlyTaxReportListResponse get\_monthly\_tax\_report()

Get Monthly Tax Report

#### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------------- | ------------------- | ---------------------------------------------------------------------------------- | | year | : \\> < | Equal operator Greater than or equal to Less than or equal to | | month | : \\> < | Equal operator Greater than or equal to Less than or equal to equal operator | | taxObject | : | Equal operator | | taxObjectIn | : | Equal operator with multiple value delimited by “;” | | pph21Method | : | Equal operator | | employeeId | : | Equal operator | | employeeIdentificationNumber | : | Like operator | | employeeName | : | Like operator | | kppId | : | Equal operator | | migrated | : | Equal operator |

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get Monthly Tax Report
    api_response = api_instance.get_monthly_tax_report()
    print("The response of TaxApi->get_monthly_tax_report:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get_monthly_tax_report: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**MonthlyTaxReportListResponse**](MonthlyTaxReportListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_pph21\_policy**

> Pph21PolicyResponse get\_pph21\_policy()

Get Pph21 Policy

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get Pph21 Policy
    api_response = api_instance.get_pph21_policy()
    print("The response of TaxApi->get_pph21_policy:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get_pph21_policy: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**Pph21PolicyResponse**](Pph21PolicyResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_ptkp\_categories**

> PtkpCategoryListResponse get\_ptkp\_categories()

Get Ptkp Categories

#### Search Query | Supported Keys | Supported Operators | Notes | | -------------- | ------------------- | ------------- | | name | : | Like operator | | code | : | Like operator |

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get Ptkp Categories
    api_response = api_instance.get_ptkp_categories()
    print("The response of TaxApi->get_ptkp_categories:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get_ptkp_categories: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**PtkpCategoryListResponse**](PtkpCategoryListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_tax\_calculations**

> TaxCalculationListResponse get\_tax\_calculations()

Get Tax Calculations

#### Search Query | Supported Keys | Supported Operators | Notes | | -------------- | ------------------- | ---------------------------------------------------------------------------------- | | idIn | : | Equal operator with multiple value delimited by “;” | | employeeIdIn | : | Equal operator with multiple value delimited by “;” | | year | : \\> < | Equal operator Greater than or equal to Less than or equal to | | month | : \\> < | Equal operator Greater than or equal to Less than or equal to equal operator | | paymentDate | : \\> < | Equal operator Greater than or equal to Less than or equal to equal operator | | taxObject | : | Equal operator | | taxObjectIn | : | Equal operator with multiple value delimited by “;” | | pph21Method | : | Equal operator | | employeeId | : | Equal operator | | employeeName | : | Like operator |

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)

try:
    # Get Tax Calculations
    api_response = api_instance.get_tax_calculations()
    print("The response of TaxApi->get_tax_calculations:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get_tax_calculations: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TaxCalculationListResponse**](TaxCalculationListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_tax\_calculations\_by\_external\_id**

> TaxCalculationDetailResponse get\_tax\_calculations\_by\_external\_id(external\_id)

Get Tax Calculations By External Id

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
external_id = 'external_id_example' # str | 

try:
    # Get Tax Calculations By External Id
    api_response = api_instance.get_tax_calculations_by_external_id(external_id)
    print("The response of TaxApi->get_tax_calculations_by_external_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get_tax_calculations_by_external_id: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **external\_id** | **str** |             |       |

#### Return type

[**TaxCalculationDetailResponse**](TaxCalculationDetailResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_tax\_calculations\_by\_id**

> TaxCalculationDetailResponse get\_tax\_calculations\_by\_id(id)

Get Tax Calculations By Id

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
id = 'id_example' # str | 

try:
    # Get Tax Calculations By Id
    api_response = api_instance.get_tax_calculations_by_id(id)
    print("The response of TaxApi->get_tax_calculations_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->get_tax_calculations_by_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**TaxCalculationDetailResponse**](TaxCalculationDetailResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **monthly\_tax\_detail\_find\_all**

> MonthlyTaxDetailListResponse monthly\_tax\_detail\_find\_all(page, size)

GET Monthly Tax Detail

#### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------------- | ------------------- | ---------------------------------------------------------------------------------- | | year | : \\> < | Equal operator Greater than or equal to Less than or equal to | | month | : \\> < | Equal operator Greater than or equal to Less than or equal to equal operator | | taxObject | : | Equal operator | | taxObjectIn | : | Equal operator with multiple value delimited by “;” | | pph21Method | : | Equal operator | | employeeId | : | Equal operator | | employeeIdentificationNumber | : | Like operator | | employeeName | : | Like operator | | kppId | : | Equal operator | | migrated | : | Equal operator |

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)

try:
    # GET Monthly Tax Detail
    api_response = api_instance.monthly_tax_detail_find_all(page=page, size=size)
    print("The response of TaxApi->monthly_tax_detail_find_all:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->monthly_tax_detail_find_all: %s\n" % e)
```

#### Parameters

| Name     | Type    | Description | Notes                        |
| -------- | ------- | ----------- | ---------------------------- |
| **page** | **int** | Page number | \[optional] \[default to 0]  |
| **size** | **int** | Page size   | \[optional] \[default to 10] |

#### Return type

[**MonthlyTaxDetailListResponse**](MonthlyTaxDetailListResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **simulate\_annual\_tax**

> AnnualTaxCalculationSimulatorResponse simulate\_annual\_tax(annual\_tax\_calculation\_simulator\_request)

Simulate annual tax calculation

Simulate annual tax calculation based on the provided scenario.\
This API only works for **PERMANENT** taxObject.

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
annual_tax_calculation_simulator_request = AnnualTaxCalculationSimulatorRequest() # AnnualTaxCalculationSimulatorRequest | 

try:
    # Simulate annual tax calculation
    api_response = api_instance.simulate_annual_tax(annual_tax_calculation_simulator_request)
    print("The response of TaxApi->simulate_annual_tax:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->simulate_annual_tax: %s\n" % e)
```

#### Parameters

| Name                                             | Type                                                                                | Description | Notes |
| ------------------------------------------------ | ----------------------------------------------------------------------------------- | ----------- | ----- |
| **annual\_tax\_calculation\_simulator\_request** | [**AnnualTaxCalculationSimulatorRequest**](AnnualTaxCalculationSimulatorRequest.md) |             |       |

#### Return type

[**AnnualTaxCalculationSimulatorResponse**](AnnualTaxCalculationSimulatorResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **simulate\_monthly\_tax**

> MonthlyTaxCalculationSimulatorResponse simulate\_monthly\_tax(monthly\_tax\_calculation\_simulator\_request)

Simulate monthly tax calculation

Simulate monthly tax calculation based on the provided scenario.

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
monthly_tax_calculation_simulator_request = MonthlyTaxCalculationSimulatorRequest() # MonthlyTaxCalculationSimulatorRequest | 

try:
    # Simulate monthly tax calculation
    api_response = api_instance.simulate_monthly_tax(monthly_tax_calculation_simulator_request)
    print("The response of TaxApi->simulate_monthly_tax:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->simulate_monthly_tax: %s\n" % e)
```

#### Parameters

| Name                                              | Type                                                                                  | Description | Notes |
| ------------------------------------------------- | ------------------------------------------------------------------------------------- | ----------- | ----- |
| **monthly\_tax\_calculation\_simulator\_request** | [**MonthlyTaxCalculationSimulatorRequest**](MonthlyTaxCalculationSimulatorRequest.md) |             |       |

#### Return type

[**MonthlyTaxCalculationSimulatorResponse**](MonthlyTaxCalculationSimulatorResponse.md)

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **undo\_tax\_calculation\_by\_id**

> object undo\_tax\_calculation\_by\_id(id)

Undo Tax Calculation By Id

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
id = 'id_example' # str | 

try:
    # Undo Tax Calculation By Id
    api_response = api_instance.undo_tax_calculation_by_id(id)
    print("The response of TaxApi->undo_tax_calculation_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->undo_tax_calculation_by_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **undo\_tax\_calculations\_by\_external\_id**

> object undo\_tax\_calculations\_by\_external\_id(external\_id)

Undo Tax Calculations By External Id

#### Example

```python
from catapa import Catapa, TaxApi, ApiException
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
api_instance = TaxApi(client)
external_id = 'external_id_example' # str | 

try:
    # Undo Tax Calculations By External Id
    api_response = api_instance.undo_tax_calculations_by_external_id(external_id)
    print("The response of TaxApi->undo_tax_calculations_by_external_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxApi->undo_tax_calculations_by_external_id: %s\n" % e)
```

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **external\_id** | **str** |             |       |

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

[\[Back to top\]](TaxApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
