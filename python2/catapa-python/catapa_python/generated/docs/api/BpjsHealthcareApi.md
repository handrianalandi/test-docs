# BpjsHealthcareApi

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_bpjs_healthcare_payment_details_report**](BpjsHealthcareApi.md#download_bpjs_healthcare_payment_details_report) | **GET** /core/v1/bpjs-healthcare-reports/payment-details | Download BPJS Healthcare Payment Details Report
[**download_e_dabu_advance_member_report**](BpjsHealthcareApi.md#download_e_dabu_advance_member_report) | **GET** /core/v1/bpjs-healthcare-reports/edabu-advance-members | Download E-Dabu Advance Member Report
[**download_e_dabu_employee_identity_card_member_check_report**](BpjsHealthcareApi.md#download_e_dabu_employee_identity_card_member_check_report) | **GET** /core/v1/bpjs-healthcare-reports/edabu-employee-identity-card-number-check | Download E-Dabu Employee Identity Card Member Check Report
[**download_e_dabu_new_member_report**](BpjsHealthcareApi.md#download_e_dabu_new_member_report) | **GET** /core/v1/bpjs-healthcare-reports/edabu-new-members | Download E-Dabu New Member Report
[**download_e_dabu_wage_update_report**](BpjsHealthcareApi.md#download_e_dabu_wage_update_report) | **GET** /core/v1/bpjs-healthcare-reports/edabu-wage-update | Download E-Dabu Wage Update Report
[**get_bpjs_healthcare_premium_summaries**](BpjsHealthcareApi.md#get_bpjs_healthcare_premium_summaries) | **GET** /core/v1/bpjs-healthcare-premiums/summaries | Get BPJS Healthcare Premium Summaries
[**get_bpjs_healthcare_premium_summary_details**](BpjsHealthcareApi.md#get_bpjs_healthcare_premium_summary_details) | **GET** /core/v1/bpjs-healthcare-premiums/summaries/{id}/details | Get BPJS Healthcare Premium Summary Details
[**get_bpjs_healthcare_providers**](BpjsHealthcareApi.md#get_bpjs_healthcare_providers) | **GET** /core/v1/bpjs-healthcare-providers | Get BPJS Healthcare Providers
[**get_bpjs_healthcare_templates**](BpjsHealthcareApi.md#get_bpjs_healthcare_templates) | **GET** /core/v1/bpjs-healthcare-templates | Get BPJS Healthcare Templates


# **download_bpjs_healthcare_payment_details_report**
> download_bpjs_healthcare_payment_details_report()

Download BPJS Healthcare Payment Details Report

### Search Query
| Request Parameter Name   | Description                                 |
| ------------------------ | --------------------------------------------|
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id                                 |



### Example


```python
from catapa import Catapa, BpjsHealthcareApi, ApiException
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
api_instance = BpjsHealthcareApi(client)

try:
    # Download BPJS Healthcare Payment Details Report
    api_instance.download_bpjs_healthcare_payment_details_report()
except ApiException as e:
    print("Exception when calling BpjsHealthcareApi->download_bpjs_healthcare_payment_details_report: %s\n" % e)
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


# **download_e_dabu_advance_member_report**
> download_e_dabu_advance_member_report()

Download E-Dabu Advance Member Report

### Search Query
| Request Parameter Name   | Description                                 |
| ------------------------ | ------------------------------------------- |
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id                                 |



### Example


```python
from catapa import Catapa, BpjsHealthcareApi, ApiException
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
api_instance = BpjsHealthcareApi(client)

try:
    # Download E-Dabu Advance Member Report
    api_instance.download_e_dabu_advance_member_report()
except ApiException as e:
    print("Exception when calling BpjsHealthcareApi->download_e_dabu_advance_member_report: %s\n" % e)
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


# **download_e_dabu_employee_identity_card_member_check_report**
> download_e_dabu_employee_identity_card_member_check_report()

Download E-Dabu Employee Identity Card Member Check Report

### Search Query
| Request Parameter Name   | Description                                 |
| ------------------------ | ------------------------------------------- |
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id                                 |



### Example


```python
from catapa import Catapa, BpjsHealthcareApi, ApiException
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
api_instance = BpjsHealthcareApi(client)

try:
    # Download E-Dabu Employee Identity Card Member Check Report
    api_instance.download_e_dabu_employee_identity_card_member_check_report()
except ApiException as e:
    print("Exception when calling BpjsHealthcareApi->download_e_dabu_employee_identity_card_member_check_report: %s\n" % e)
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


# **download_e_dabu_new_member_report**
> download_e_dabu_new_member_report()

Download E-Dabu New Member Report

### Search Query
| Request Parameter Name   | Description                                 |
| ------------------------ | ------------------------------------------- |
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id                                 |



### Example


```python
from catapa import Catapa, BpjsHealthcareApi, ApiException
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
api_instance = BpjsHealthcareApi(client)

try:
    # Download E-Dabu New Member Report
    api_instance.download_e_dabu_new_member_report()
except ApiException as e:
    print("Exception when calling BpjsHealthcareApi->download_e_dabu_new_member_report: %s\n" % e)
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


# **download_e_dabu_wage_update_report**
> download_e_dabu_wage_update_report()

Download E-Dabu Wage Update Report

### Search Query
| Request Parameter Name   | Description                                 |
| ------------------------ | ------------------------------------------- |
| month                    | Month of the report<br>Value: 1-12.         |
| year                     | Year of the report<br>Value: YYYY, eg: 2021 |
| bpjsHealthcareProviderId | Provider Id. UUID4                          |
| paygroupId               | Paygroup id from payroll. UUID4             |



### Example


```python
from catapa import Catapa, BpjsHealthcareApi, ApiException
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
api_instance = BpjsHealthcareApi(client)

try:
    # Download E-Dabu Wage Update Report
    api_instance.download_e_dabu_wage_update_report()
except ApiException as e:
    print("Exception when calling BpjsHealthcareApi->download_e_dabu_wage_update_report: %s\n" % e)
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


# **get_bpjs_healthcare_premium_summaries**
> BpjsHealthcarePremiumSummaryPageResponse get_bpjs_healthcare_premium_summaries()

Get BPJS Healthcare Premium Summaries

### Search Query
| Supported Keys       | Supported Operators | Notes         |
|----------------------|---------------------|---------------|
| employeeName         | :                   | Like Operator |
| identificationNumber | :                   | Like Operator |
| cutoffEndDate        | :<br>><br><         | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |



### Example


```python
from catapa import Catapa, BpjsHealthcareApi, ApiException
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
api_instance = BpjsHealthcareApi(client)

try:
    # Get BPJS Healthcare Premium Summaries
    api_response = api_instance.get_bpjs_healthcare_premium_summaries()
    print("The response of BpjsHealthcareApi->get_bpjs_healthcare_premium_summaries:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BpjsHealthcareApi->get_bpjs_healthcare_premium_summaries: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**BpjsHealthcarePremiumSummaryPageResponse**](../models/BpjsHealthcarePremiumSummaryPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_bpjs_healthcare_premium_summary_details**
> BpjsHealthcarePremiumDetailsResponse get_bpjs_healthcare_premium_summary_details(id)

Get BPJS Healthcare Premium Summary Details


### Example


```python
from catapa import Catapa, BpjsHealthcareApi, ApiException
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
api_instance = BpjsHealthcareApi(client)
id = 'id_example' # str | 

try:
    # Get BPJS Healthcare Premium Summary Details
    api_response = api_instance.get_bpjs_healthcare_premium_summary_details(id)
    print("The response of BpjsHealthcareApi->get_bpjs_healthcare_premium_summary_details:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BpjsHealthcareApi->get_bpjs_healthcare_premium_summary_details: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**BpjsHealthcarePremiumDetailsResponse**](../models/BpjsHealthcarePremiumDetailsResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_bpjs_healthcare_providers**
> BpjsHealthcareProviderPageResponse get_bpjs_healthcare_providers()

Get BPJS Healthcare Providers

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
from catapa import Catapa, BpjsHealthcareApi, ApiException
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
api_instance = BpjsHealthcareApi(client)

try:
    # Get BPJS Healthcare Providers
    api_response = api_instance.get_bpjs_healthcare_providers()
    print("The response of BpjsHealthcareApi->get_bpjs_healthcare_providers:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BpjsHealthcareApi->get_bpjs_healthcare_providers: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**BpjsHealthcareProviderPageResponse**](../models/BpjsHealthcareProviderPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_bpjs_healthcare_templates**
> BpjsHealthcareTemplatePageResponse get_bpjs_healthcare_templates()

Get BPJS Healthcare Templates

### Search Query
| Supported Keys | Supported Operators |Notes                                                                                     |
| -------------- | ------------------- |------------------------------------------------------------------------------------------|
| code           | :                   | Like Operator                                                                            |
| name           | :                   | Like Operator                                                                            |
| salaryType     | :                   | Equal Operator<br>Enum, available values:<br>\[BY\_PRORATED\_SALARY, BY\_SALARY\_DECREE\]|
| linkToPayroll  | :                   | Equal Operator.<br>Boolean                                                               |



### Example


```python
from catapa import Catapa, BpjsHealthcareApi, ApiException
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
api_instance = BpjsHealthcareApi(client)

try:
    # Get BPJS Healthcare Templates
    api_response = api_instance.get_bpjs_healthcare_templates()
    print("The response of BpjsHealthcareApi->get_bpjs_healthcare_templates:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BpjsHealthcareApi->get_bpjs_healthcare_templates: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**BpjsHealthcareTemplatePageResponse**](../models/BpjsHealthcareTemplatePageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

