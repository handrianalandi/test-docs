# BpjsManpowerApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_bpjs_manpower_payment_details_report**](BpjsManpowerApi.md#download_bpjs_manpower_payment_details_report) | **GET** /core/v1/bpjs-manpower-reports/payment-details | Download BPJS Manpower Payment Details Report
[**download_pension_debt_report**](BpjsManpowerApi.md#download_pension_debt_report) | **GET** /core/v1/bpjs-manpower-reports/pension-debt-report | Download Pension Debt Report
[**download_sipp_advance_member_report**](BpjsManpowerApi.md#download_sipp_advance_member_report) | **GET** /core/v1/bpjs-manpower-reports/sipp-advance-members | Download SIPP Advance Member Report
[**download_sipp_new_member_report**](BpjsManpowerApi.md#download_sipp_new_member_report) | **GET** /core/v1/bpjs-manpower-reports/sipp-new-members | Download SIPP New Member Report
[**download_sipp_terminated_member_report**](BpjsManpowerApi.md#download_sipp_terminated_member_report) | **GET** /core/v1/bpjs-manpower-reports/sipp-terminated-member | Download SIPP Terminated Member Report
[**download_sipp_wage_update_report**](BpjsManpowerApi.md#download_sipp_wage_update_report) | **GET** /core/v1/bpjs-manpower-reports/sipp-wage-update | Download SIPP Wage Update Report
[**get_bpjs_manpower_premium_summaries**](BpjsManpowerApi.md#get_bpjs_manpower_premium_summaries) | **GET** /core/v1/bpjs-manpower-premiums/summaries | Get BPJS Manpower Premium Summaries
[**get_bpjs_manpower_premium_summary_details**](BpjsManpowerApi.md#get_bpjs_manpower_premium_summary_details) | **GET** /core/v1/bpjs-manpower-premiums/summaries/{id}/details | Get BPJS Manpower Premium Summary Details
[**get_bpjs_manpower_providers**](BpjsManpowerApi.md#get_bpjs_manpower_providers) | **GET** /core/v1/bpjs-manpower-providers | Get BPJS Manpower Providers
[**get_bpjs_manpower_templates**](BpjsManpowerApi.md#get_bpjs_manpower_templates) | **GET** /core/v1/bpjs-manpower-templates | Get BPJS Manpower Templates


# **download_bpjs_manpower_payment_details_report**
> download_bpjs_manpower_payment_details_report()

Download BPJS Manpower Payment Details Report

### Search Query
| Request Parameter Name | Description                                      |
| ---------------------- | ------------------------------------------------ |
| month                  | Month of the report<br>Value: 1-12.              |
| year                   | Year of the report<br>Value: YYYY, example: 2021 |
| bpjsManpowerProviderId | Provider Id                                      |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - File download response |  * Content-Disposition -  <br>  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **download_pension_debt_report**
> download_pension_debt_report()

Download Pension Debt Report

To comply with [PP No. 49 Tahun
2020](https://peraturan.bpk.go.id/Home/Details/144869/pp-no-49-tahun-2020#:~:text=PP%20No.%2049%20Tahun%202020,19\)%20%5BJDIH%20BPK%20RI%5D&text=LN.2020%2FNo.199,go.id%20%3A%2020%20hlm.)
for “Jaminan Pensiun”

### Search Query
| Request Parameter Name | Description        |
| ---------------------- | ------------------ |
| bpjsManpowerProviderId | Provider Id. UUID4 |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - File download response |  * Content-Disposition -  <br>  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **download_sipp_advance_member_report**
> download_sipp_advance_member_report()

Download SIPP Advance Member Report

### Search Query
| Request Parameter Name | Description                                        |
| ---------------------- | ------------------------------------------------   |
| month                  | Month of the report<br>Value: 1-12.                |
| year                   | Year of the report<br>Value: YYYY, example: 2021   |
| bpjsManpowerProviderId | Provider Id                                        |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - File download response |  * Content-Disposition -  <br>  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **download_sipp_new_member_report**
> download_sipp_new_member_report()

Download SIPP New Member Report

### Search Query
| Request Parameter Name | Description                                        |
| ---------------------- | ------------------------------------------------   |
| month                  | Month of the report<br>Value: 1-12.                |
| year                   | Year of the report<br>Value: YYYY, example: 2021   |
| bpjsManpowerProviderId | Provider Id                                        |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - File download response |  * Content-Disposition -  <br>  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **download_sipp_terminated_member_report**
> download_sipp_terminated_member_report()

Download SIPP Terminated Member Report

### Search Query
| Request Parameter Name | Description                                        |
| ---------------------- | ------------------------------------------------   |
| month                  | Month of the report<br>Value: 1-12.                |
| year                   | Year of the report<br>Value: YYYY, example: 2021   |
| bpjsManpowerProviderId | Provider Id                                        |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - File download response |  * Content-Disposition -  <br>  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **download_sipp_wage_update_report**
> download_sipp_wage_update_report()

Download SIPP Wage Update Report

### Search Query
| Request Parameter Name | Description                                        |
| ---------------------- | ------------------------------------------------   |
| month                  | Month of the report<br>Value: 1-12.                |
| year                   | Year of the report<br>Value: YYYY, example: 2021   |
| bpjsManpowerProviderId | Provider Id. UUID4                                 |
| paygroupId             | Provider Id from payroll. UUID4                    |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - File download response |  * Content-Disposition -  <br>  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_bpjs_manpower_premium_summaries**
> BpjsManpowerPremiumSummaryListResponse get_bpjs_manpower_premium_summaries()

Get BPJS Manpower Premium Summaries

### Search Query
| Supported Keys       | Supported Operators | Notes         |
|----------------------|---------------------|---------------|
| employeeName         | :                   | Like Operator |
| identificationNumber | :                   | Like Operator |
| cutoffEndDate        | :<br>><br><         | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**BpjsManpowerPremiumSummaryListResponse**](../models/BpjsManpowerPremiumSummaryListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_bpjs_manpower_premium_summary_details**
> BpjsManpowerPremiumDetailsResponse get_bpjs_manpower_premium_summary_details(id)

Get BPJS Manpower Premium Summary Details


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**BpjsManpowerPremiumDetailsResponse**](../models/BpjsManpowerPremiumDetailsResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_bpjs_manpower_providers**
> BpjsManpowerProviderListResponse get_bpjs_manpower_providers()

Get BPJS Manpower Providers

### Search Query
| Supported Keys          | Supported Operators | Notes         |
| ----------------------- | ------------------- | ------------- |
| name                    | :                   | Like Operator |
| code                    | :                   | Like Operator |
| address                 | :                   | Like Operator |
| registrationNumber      | :                   | Like Operator |
| reportSignatoryName     | :                   | Like Operator |
| reportSignatoryJobTitle | :                   | Like Operator |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**BpjsManpowerProviderListResponse**](../models/BpjsManpowerProviderListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_bpjs_manpower_templates**
> BpjsManpowerTemplateListResponse get_bpjs_manpower_templates()

Get BPJS Manpower Templates

### Search Query
| Supported Keys | Supported Operators |Notes                                                                                     |
| -------------- | ------------------- |------------------------------------------------------------------------------------------|
| code           | :                   | Like Operator                                                                            |
| name           | :                   | Like Operator                                                                            |
| salaryType     | :                   | Equal Operator<br>Enum, available values:<br>\[BY\_PRORATED\_SALARY, BY\_SALARY\_DECREE\]|
| linkToPayroll  | :                   | Equal Operator.<br>Boolean                                                               |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**BpjsManpowerTemplateListResponse**](../models/BpjsManpowerTemplateListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

