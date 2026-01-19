# TaxApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tax_calculation**](TaxApi.md#create_tax_calculation) | **POST** /core/v1/tax-calculations | Create Tax Calculation
[**download1721_a1_report**](TaxApi.md#download1721_a1_report) | **GET** /core/v1/tax-reports/1721-a1/{id}/download | Download 1721 A1 Report
[**download1721_vi_report**](TaxApi.md#download1721_vi_report) | **GET** /core/v1/pph21-reports/1721-vi/{id}/download | Download 1721 VI Report
[**download1721_vi_tax_report**](TaxApi.md#download1721_vi_tax_report) | **GET** /core/v1/tax-reports/1721-vi/{id}/download | Download 1721 VI Report
[**download1721_vii_report**](TaxApi.md#download1721_vii_report) | **GET** /core/v1/pph21-reports/1721-vii/{id}/download | Download 1721 VII Report
[**download1721_vii_tax_report**](TaxApi.md#download1721_vii_tax_report) | **GET** /core/v1/tax-reports/1721-vii/{id}/download | Download 1721 VII Report
[**download1721_viii_report**](TaxApi.md#download1721_viii_report) | **GET** /core/v1/tax-reports/1721-viii/{id}/download | Download 1721 VIII Report
[**get1721_a1_reports**](TaxApi.md#get1721_a1_reports) | **GET** /core/v1/tax-reports/1721-a1 | Get 1721 A1 Reports
[**get1721_vi_reports**](TaxApi.md#get1721_vi_reports) | **GET** /core/v1/pph21-reports/1721-vi | Get 1721 VI Reports
[**get1721_vi_tax_reports**](TaxApi.md#get1721_vi_tax_reports) | **GET** /core/v1/tax-reports/1721-vi | Get 1721 VI Reports
[**get1721_vii_reports**](TaxApi.md#get1721_vii_reports) | **GET** /core/v1/pph21-reports/1721-vii | Get 1721 VII Reports
[**get1721_vii_tax_reports**](TaxApi.md#get1721_vii_tax_reports) | **GET** /core/v1/tax-reports/1721-vii | Get 1721 VII Reports
[**get1721_viii_reports**](TaxApi.md#get1721_viii_reports) | **GET** /core/v1/tax-reports/1721-viii | Get 1721 VIII Reports
[**get_detailed1721_vi_reports**](TaxApi.md#get_detailed1721_vi_reports) | **GET** /core/v1/pph21-reports/1721-vi/detail | Get Detailed 1721 VI Reports
[**get_detailed1721_vi_tax_reports**](TaxApi.md#get_detailed1721_vi_tax_reports) | **GET** /core/v1/tax-reports/1721-vi/detail | Get Detailed 1721 VI Reports
[**get_kpp**](TaxApi.md#get_kpp) | **GET** /core/v1/kpps | Get Kpp
[**get_monthly_tax_report**](TaxApi.md#get_monthly_tax_report) | **GET** /core/v1/monthly-tax-reports | Get Monthly Tax Report
[**get_pph21_policy**](TaxApi.md#get_pph21_policy) | **GET** /core/v1/pph21-policies | Get Pph21 Policy
[**get_ptkp_categories**](TaxApi.md#get_ptkp_categories) | **GET** /core/v1/ptkp-categories | Get Ptkp Categories
[**get_tax_calculations**](TaxApi.md#get_tax_calculations) | **GET** /core/v1/tax-calculations | Get Tax Calculations
[**get_tax_calculations_by_external_id**](TaxApi.md#get_tax_calculations_by_external_id) | **GET** /core/v1/tax-calculations/externalId&#x3D;{externalId} | Get Tax Calculations By External Id
[**get_tax_calculations_by_id**](TaxApi.md#get_tax_calculations_by_id) | **GET** /core/v1/tax-calculations/{id} | Get Tax Calculations By Id
[**monthly_tax_detail_find_all**](TaxApi.md#monthly_tax_detail_find_all) | **GET** /core/v1/monthly-tax-details | GET Monthly Tax Detail
[**simulate_annual_tax**](TaxApi.md#simulate_annual_tax) | **POST** /core/v1/tax-calculators | Simulate annual tax calculation
[**simulate_monthly_tax**](TaxApi.md#simulate_monthly_tax) | **POST** /core/v1/tax-calculators/monthly | Simulate monthly tax calculation
[**undo_tax_calculation_by_id**](TaxApi.md#undo_tax_calculation_by_id) | **DELETE** /core/v1/tax-calculations/{id} | Undo Tax Calculation By Id
[**undo_tax_calculations_by_external_id**](TaxApi.md#undo_tax_calculations_by_external_id) | **DELETE** /core/v1/tax-calculations/externalId&#x3D;{externalId} | Undo Tax Calculations By External Id


# **create_tax_calculation**
> TaxCalculationDetailResponse create_tax_calculation(tax_calculation_request)

Create Tax Calculation

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_calculation_request** | [**TaxCalculationRequest**](TaxCalculationRequest.md)|  | [optional] 

### Return type

[**TaxCalculationDetailResponse**](TaxCalculationDetailResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **download1721_a1_report**
> object download1721_a1_report(id)

Download 1721 A1 Report

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **download1721_vi_report**
> object download1721_vi_report(id)

Download 1721 VI Report

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **download1721_vi_tax_report**
> object download1721_vi_tax_report(id)

Download 1721 VI Report

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **download1721_vii_report**
> object download1721_vii_report(id)

Download 1721 VII Report

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **download1721_vii_tax_report**
> object download1721_vii_tax_report(id)

Download 1721 VII Report

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **download1721_viii_report**
> object download1721_viii_report(id)

Download 1721 VIII Report

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get1721_a1_reports**
> TaxReport1721A1ListResponse get1721_a1_reports()

Get 1721 A1 Reports

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**TaxReport1721A1ListResponse**](TaxReport1721A1ListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get1721_vi_reports**
> TaxReport1721VIListResponse get1721_vi_reports()

Get 1721 VI Reports

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**TaxReport1721VIListResponse**](TaxReport1721VIListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get1721_vi_tax_reports**
> TaxReport1721VIListResponse get1721_vi_tax_reports()

Get 1721 VI Reports

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**TaxReport1721VIListResponse**](TaxReport1721VIListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get1721_vii_reports**
> TaxReport1721VIIListResponse get1721_vii_reports()

Get 1721 VII Reports

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**TaxReport1721VIIListResponse**](TaxReport1721VIIListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get1721_vii_tax_reports**
> TaxReport1721VIIListResponse get1721_vii_tax_reports()

Get 1721 VII Reports

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**TaxReport1721VIIListResponse**](TaxReport1721VIIListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get1721_viii_reports**
> TaxReport1721VIIIListResponse get1721_viii_reports()

Get 1721 VIII Reports

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**TaxReport1721VIIIListResponse**](TaxReport1721VIIIListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_detailed1721_vi_reports**
> TaxReport1721VIDetailResponse get_detailed1721_vi_reports()

Get Detailed 1721 VI Reports

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**TaxReport1721VIDetailResponse**](TaxReport1721VIDetailResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_detailed1721_vi_tax_reports**
> TaxReport1721VIDetailResponse get_detailed1721_vi_tax_reports()

Get Detailed 1721 VI Reports

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**TaxReport1721VIDetailResponse**](TaxReport1721VIDetailResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_kpp**
> KppListResponse get_kpp()

Get Kpp

### Search Query | Supported Keys | Supported Operators | Notes         | | -------------- | ------------------- | ------------- | | name           | :                   | Like operator | | code           | :                   | Like operator | 

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**KppListResponse**](KppListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_monthly_tax_report**
> MonthlyTaxReportListResponse get_monthly_tax_report()

Get Monthly Tax Report

### Search Query | Supported Keys               | Supported Operators | Notes                                                                              | | ---------------------------- | ------------------- | ---------------------------------------------------------------------------------- | | year                         | :<br>\\><br><        | Equal operator<br>Greater than or equal to<br>Less than or equal to                | | month                        | :<br>\\><br><        | Equal operator<br>Greater than or equal to<br>Less than or equal to equal operator | | taxObject                    | :                   | Equal operator                                                                     | | taxObjectIn                  | :                   | Equal operator with multiple value delimited by “;”                                | | pph21Method                  | :                   | Equal operator                                                                     | | employeeId                   | :                   | Equal operator                                                                     | | employeeIdentificationNumber | :                   | Like operator                                                                      | | employeeName                 | :                   | Like operator                                                                      | | kppId                        | :                   | Equal operator                                                                     | | migrated                     | :                   | Equal operator                                                                     | 

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**MonthlyTaxReportListResponse**](MonthlyTaxReportListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_pph21_policy**
> Pph21PolicyResponse get_pph21_policy()

Get Pph21 Policy

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**Pph21PolicyResponse**](Pph21PolicyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_ptkp_categories**
> PtkpCategoryListResponse get_ptkp_categories()

Get Ptkp Categories

### Search Query | Supported Keys | Supported Operators | Notes         | | -------------- | ------------------- | ------------- | | name           | :                   | Like operator | | code           | :                   | Like operator | 

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**PtkpCategoryListResponse**](PtkpCategoryListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_tax_calculations**
> TaxCalculationListResponse get_tax_calculations()

Get Tax Calculations

### Search Query | Supported Keys | Supported Operators | Notes                                                                              | | -------------- | ------------------- | ---------------------------------------------------------------------------------- | | idIn           | :                   | Equal operator with multiple value delimited by “;”                                | | employeeIdIn   | :                   | Equal operator with multiple value delimited by “;”                                | | year           | :<br>\\><br><        | Equal operator<br>Greater than or equal to<br>Less than or equal to                | | month          | :<br>\\><br><        | Equal operator<br>Greater than or equal to<br>Less than or equal to equal operator | | paymentDate    | :<br>\\><br><        | Equal operator<br>Greater than or equal to<br>Less than or equal to equal operator | | taxObject      | :                   | Equal operator                                                                     | | taxObjectIn    | :                   | Equal operator with multiple value delimited by “;”                                | | pph21Method    | :                   | Equal operator                                                                     | | employeeId     | :                   | Equal operator                                                                     | | employeeName   | :                   | Like operator                                                                      | 

### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**TaxCalculationListResponse**](TaxCalculationListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_tax_calculations_by_external_id**
> TaxCalculationDetailResponse get_tax_calculations_by_external_id(external_id)

Get Tax Calculations By External Id

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_id** | **str**|  | 

### Return type

[**TaxCalculationDetailResponse**](TaxCalculationDetailResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_tax_calculations_by_id**
> TaxCalculationDetailResponse get_tax_calculations_by_id(id)

Get Tax Calculations By Id

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**TaxCalculationDetailResponse**](TaxCalculationDetailResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **monthly_tax_detail_find_all**
> MonthlyTaxDetailListResponse monthly_tax_detail_find_all(page, size)

GET Monthly Tax Detail

### Search Query | Supported Keys               | Supported Operators | Notes                                                                              | | ---------------------------- | ------------------- | ---------------------------------------------------------------------------------- | | year                         | :<br>\\><br><        | Equal operator<br>Greater than or equal to<br>Less than or equal to                | | month                        | :<br>\\><br><        | Equal operator<br>Greater than or equal to<br>Less than or equal to equal operator | | taxObject                    | :                   | Equal operator                                                                     | | taxObjectIn                  | :                   | Equal operator with multiple value delimited by “;”                                | | pph21Method                  | :                   | Equal operator                                                                     | | employeeId                   | :                   | Equal operator                                                                     | | employeeIdentificationNumber | :                   | Like operator                                                                      | | employeeName                 | :                   | Like operator                                                                      | | kppId                        | :                   | Equal operator                                                                     | | migrated                     | :                   | Equal operator                                                                     | 

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]

### Return type

[**MonthlyTaxDetailListResponse**](MonthlyTaxDetailListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **simulate_annual_tax**
> AnnualTaxCalculationSimulatorResponse simulate_annual_tax(annual_tax_calculation_simulator_request)

Simulate annual tax calculation

Simulate annual tax calculation based on the provided scenario. <br>This API only works for <strong>PERMANENT</strong> taxObject. 

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **annual_tax_calculation_simulator_request** | [**AnnualTaxCalculationSimulatorRequest**](AnnualTaxCalculationSimulatorRequest.md)|  | 

### Return type

[**AnnualTaxCalculationSimulatorResponse**](AnnualTaxCalculationSimulatorResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **simulate_monthly_tax**
> MonthlyTaxCalculationSimulatorResponse simulate_monthly_tax(monthly_tax_calculation_simulator_request)

Simulate monthly tax calculation

Simulate monthly tax calculation based on the provided scenario. 

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **monthly_tax_calculation_simulator_request** | [**MonthlyTaxCalculationSimulatorRequest**](MonthlyTaxCalculationSimulatorRequest.md)|  | 

### Return type

[**MonthlyTaxCalculationSimulatorResponse**](MonthlyTaxCalculationSimulatorResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **undo_tax_calculation_by_id**
> object undo_tax_calculation_by_id(id)

Undo Tax Calculation By Id

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **undo_tax_calculations_by_external_id**
> object undo_tax_calculations_by_external_id(external_id)

Undo Tax Calculations By External Id

### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_id** | **str**|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

