# BpjsManpowerApi

## BpjsManpowerApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                                     | HTTP request                                                   | Description                                   |
| -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- | --------------------------------------------- |
| [**download\_bpjs\_manpower\_payment\_details\_report**](BpjsManpowerApi.md#download_bpjs_manpower_payment_details_report) | **GET** /core/v1/bpjs-manpower-reports/payment-details         | Download BPJS Manpower Payment Details Report |
| [**download\_pension\_debt\_report**](BpjsManpowerApi.md#download_pension_debt_report)                                     | **GET** /core/v1/bpjs-manpower-reports/pension-debt-report     | Download Pension Debt Report                  |
| [**download\_sipp\_advance\_member\_report**](BpjsManpowerApi.md#download_sipp_advance_member_report)                      | **GET** /core/v1/bpjs-manpower-reports/sipp-advance-members    | Download SIPP Advance Member Report           |
| [**download\_sipp\_new\_member\_report**](BpjsManpowerApi.md#download_sipp_new_member_report)                              | **GET** /core/v1/bpjs-manpower-reports/sipp-new-members        | Download SIPP New Member Report               |
| [**download\_sipp\_terminated\_member\_report**](BpjsManpowerApi.md#download_sipp_terminated_member_report)                | **GET** /core/v1/bpjs-manpower-reports/sipp-terminated-member  | Download SIPP Terminated Member Report        |
| [**download\_sipp\_wage\_update\_report**](BpjsManpowerApi.md#download_sipp_wage_update_report)                            | **GET** /core/v1/bpjs-manpower-reports/sipp-wage-update        | Download SIPP Wage Update Report              |
| [**get\_bpjs\_manpower\_premium\_summaries**](BpjsManpowerApi.md#get_bpjs_manpower_premium_summaries)                      | **GET** /core/v1/bpjs-manpower-premiums/summaries              | Get BPJS Manpower Premium Summaries           |
| [**get\_bpjs\_manpower\_premium\_summary\_details**](BpjsManpowerApi.md#get_bpjs_manpower_premium_summary_details)         | **GET** /core/v1/bpjs-manpower-premiums/summaries/{id}/details | Get BPJS Manpower Premium Summary Details     |
| [**get\_bpjs\_manpower\_providers**](BpjsManpowerApi.md#get_bpjs_manpower_providers)                                       | **GET** /core/v1/bpjs-manpower-providers                       | Get BPJS Manpower Providers                   |
| [**get\_bpjs\_manpower\_templates**](BpjsManpowerApi.md#get_bpjs_manpower_templates)                                       | **GET** /core/v1/bpjs-manpower-templates                       | Get BPJS Manpower Templates                   |

## **download\_bpjs\_manpower\_payment\_details\_report**

> download\_bpjs\_manpower\_payment\_details\_report()

Download BPJS Manpower Payment Details Report

#### Search Query | Request Parameter Name | Description | | ---------------------- | ------------------------------------------------ | | month | Month of the report Value: 1-12. | | year | Year of the report Value: YYYY, example: 2021 | | bpjsManpowerProviderId | Provider Id |

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)

try:
    # Download BPJS Manpower Payment Details Report
    api_instance.download_bpjs_manpower_payment_details_report()
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->download_bpjs_manpower_payment_details_report: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

void (empty response body)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: Not defined

#### HTTP response details

| Status code | Description                 | Response headers                   |
| ----------- | --------------------------- | ---------------------------------- |
| **200**     | OK - File download response | <p>* Content-Disposition -<br></p> |
| **400**     | Bad Request                 | -                                  |

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download\_pension\_debt\_report**

> download\_pension\_debt\_report()

Download Pension Debt Report

To comply with [PP No. 49 Tahun 2020](https://peraturan.bpk.go.id/Home/Details/144869/pp-no-49-tahun-2020)%20%5BJDIH%20BPK%20RI%5D\&text=LN.2020%2FNo.199,go.id%20%3A%2020%20hlm.) for “Jaminan Pensiun” ### Search Query | Request Parameter Name | Description | | ---------------------- | ------------------ | | bpjsManpowerProviderId | Provider Id. UUID4 |

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)

try:
    # Download Pension Debt Report
    api_instance.download_pension_debt_report()
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->download_pension_debt_report: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

void (empty response body)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: Not defined

#### HTTP response details

| Status code | Description                 | Response headers                   |
| ----------- | --------------------------- | ---------------------------------- |
| **200**     | OK - File download response | <p>* Content-Disposition -<br></p> |
| **400**     | Bad Request                 | -                                  |

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download\_sipp\_advance\_member\_report**

> download\_sipp\_advance\_member\_report()

Download SIPP Advance Member Report

#### Search Query | Request Parameter Name | Description | | ---------------------- | ------------------------------------------------ | | month | Month of the report Value: 1-12. | | year | Year of the report Value: YYYY, example: 2021 | | bpjsManpowerProviderId | Provider Id |

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)

try:
    # Download SIPP Advance Member Report
    api_instance.download_sipp_advance_member_report()
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->download_sipp_advance_member_report: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

void (empty response body)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: Not defined

#### HTTP response details

| Status code | Description                 | Response headers                   |
| ----------- | --------------------------- | ---------------------------------- |
| **200**     | OK - File download response | <p>* Content-Disposition -<br></p> |
| **400**     | Bad Request                 | -                                  |

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download\_sipp\_new\_member\_report**

> download\_sipp\_new\_member\_report()

Download SIPP New Member Report

#### Search Query | Request Parameter Name | Description | | ---------------------- | ------------------------------------------------ | | month | Month of the report Value: 1-12. | | year | Year of the report Value: YYYY, example: 2021 | | bpjsManpowerProviderId | Provider Id |

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)

try:
    # Download SIPP New Member Report
    api_instance.download_sipp_new_member_report()
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->download_sipp_new_member_report: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

void (empty response body)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: Not defined

#### HTTP response details

| Status code | Description                 | Response headers                   |
| ----------- | --------------------------- | ---------------------------------- |
| **200**     | OK - File download response | <p>* Content-Disposition -<br></p> |
| **400**     | Bad Request                 | -                                  |

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download\_sipp\_terminated\_member\_report**

> download\_sipp\_terminated\_member\_report()

Download SIPP Terminated Member Report

#### Search Query | Request Parameter Name | Description | | ---------------------- | ------------------------------------------------ | | month | Month of the report Value: 1-12. | | year | Year of the report Value: YYYY, example: 2021 | | bpjsManpowerProviderId | Provider Id |

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)

try:
    # Download SIPP Terminated Member Report
    api_instance.download_sipp_terminated_member_report()
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->download_sipp_terminated_member_report: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

void (empty response body)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: Not defined

#### HTTP response details

| Status code | Description                 | Response headers                   |
| ----------- | --------------------------- | ---------------------------------- |
| **200**     | OK - File download response | <p>* Content-Disposition -<br></p> |
| **400**     | Bad Request                 | -                                  |

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download\_sipp\_wage\_update\_report**

> download\_sipp\_wage\_update\_report()

Download SIPP Wage Update Report

#### Search Query | Request Parameter Name | Description | | ---------------------- | ------------------------------------------------ | | month | Month of the report Value: 1-12. | | year | Year of the report Value: YYYY, example: 2021 | | bpjsManpowerProviderId | Provider Id. UUID4 | | paygroupId | Provider Id from payroll. UUID4 |

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)

try:
    # Download SIPP Wage Update Report
    api_instance.download_sipp_wage_update_report()
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->download_sipp_wage_update_report: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

void (empty response body)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: Not defined

#### HTTP response details

| Status code | Description                 | Response headers                   |
| ----------- | --------------------------- | ---------------------------------- |
| **200**     | OK - File download response | <p>* Content-Disposition -<br></p> |
| **400**     | Bad Request                 | -                                  |

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_bpjs\_manpower\_premium\_summaries**

> BpjsManpowerPremiumSummaryListResponse get\_bpjs\_manpower\_premium\_summaries()

Get BPJS Manpower Premium Summaries

#### Search Query | Supported Keys | Supported Operators | Notes | |----------------------|---------------------|---------------| | employeeName | : | Like Operator | | identificationNumber | : | Like Operator | | cutoffEndDate | : > < | Equal operator Greater than or equal to operator Less than or equal to equal operator |

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)

try:
    # Get BPJS Manpower Premium Summaries
    api_response = api_instance.get_bpjs_manpower_premium_summaries()
    print("The response of BpjsManpowerApi->get_bpjs_manpower_premium_summaries:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->get_bpjs_manpower_premium_summaries: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**BpjsManpowerPremiumSummaryListResponse**](BpjsManpowerPremiumSummaryListResponse.md)

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

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_bpjs\_manpower\_premium\_summary\_details**

> BpjsManpowerPremiumDetailsResponse get\_bpjs\_manpower\_premium\_summary\_details(id)

Get BPJS Manpower Premium Summary Details

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)
id = 'id_example' # str | 

try:
    # Get BPJS Manpower Premium Summary Details
    api_response = api_instance.get_bpjs_manpower_premium_summary_details(id)
    print("The response of BpjsManpowerApi->get_bpjs_manpower_premium_summary_details:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->get_bpjs_manpower_premium_summary_details: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**BpjsManpowerPremiumDetailsResponse**](BpjsManpowerPremiumDetailsResponse.md)

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

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_bpjs\_manpower\_providers**

> BpjsManpowerProviderListResponse get\_bpjs\_manpower\_providers()

Get BPJS Manpower Providers

#### Search Query | Supported Keys | Supported Operators | Notes | | ----------------------- | ------------------- | ------------- | | name | : | Like Operator | | code | : | Like Operator | | address | : | Like Operator | | registrationNumber | : | Like Operator | | reportSignatoryName | : | Like Operator | | reportSignatoryJobTitle | : | Like Operator |

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)

try:
    # Get BPJS Manpower Providers
    api_response = api_instance.get_bpjs_manpower_providers()
    print("The response of BpjsManpowerApi->get_bpjs_manpower_providers:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->get_bpjs_manpower_providers: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**BpjsManpowerProviderListResponse**](BpjsManpowerProviderListResponse.md)

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

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_bpjs\_manpower\_templates**

> BpjsManpowerTemplateListResponse get\_bpjs\_manpower\_templates()

Get BPJS Manpower Templates

#### Search Query | Supported Keys | Supported Operators |Notes | | -------------- | ------------------- |------------------------------------------------------------------------------------------| | code | : | Like Operator | | name | : | Like Operator | | salaryType | : | Equal Operator Enum, available values: \\\[BY\\\_PRORATED\\\_SALARY, BY\\\_SALARY\\\_DECREE\\]| | linkToPayroll | : | Equal Operator. Boolean |

#### Example

```python
from catapa import Catapa, BpjsManpowerApi, ApiException
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
api_instance = BpjsManpowerApi(client)

try:
    # Get BPJS Manpower Templates
    api_response = api_instance.get_bpjs_manpower_templates()
    print("The response of BpjsManpowerApi->get_bpjs_manpower_templates:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BpjsManpowerApi->get_bpjs_manpower_templates: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**BpjsManpowerTemplateListResponse**](BpjsManpowerTemplateListResponse.md)

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

[\[Back to top\]](BpjsManpowerApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
