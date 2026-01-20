# TaxMembershipHistoryApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tax_membership_history**](TaxMembershipHistoryApi.md#get_tax_membership_history) | **GET** /core/v1/employees/{employeeId}/tax-membership-histories | Get Tax Membership History
[**get_tax_membership_history_by_id**](TaxMembershipHistoryApi.md#get_tax_membership_history_by_id) | **GET** /core/v1/tax-membership-histories/{id} | Get Tax Membership History by ID
[**update_tax_membership_history_tax_subject**](TaxMembershipHistoryApi.md#update_tax_membership_history_tax_subject) | **PUT** /core/v1/tax-membership-histories/{id}/tax-subjects | Update Tax Membership History Tax Subject


# **get_tax_membership_history**
> TaxMembershipHistoryResponse get_tax_membership_history(employee_id, year, month)

Get Tax Membership History

Retrieve tax membership history for a specific employee for a given year and month


### Example


```python
from catapa import Catapa, TaxMembershipHistoryApi, ApiException
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
api_instance = TaxMembershipHistoryApi(client)
employee_id = 'employee_id_example' # str | Unique identifier for the employee
year = 56 # int | Year for which to retrieve tax membership history
month = 12 # int | Month for which to retrieve tax membership history (defaults to December) (optional) (default to 12)

try:
    # Get Tax Membership History
    api_response = api_instance.get_tax_membership_history(employee_id, year, month=month)
    print("The response of TaxMembershipHistoryApi->get_tax_membership_history:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxMembershipHistoryApi->get_tax_membership_history: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**| Unique identifier for the employee | 
 **year** | **int**| Year for which to retrieve tax membership history | 
 **month** | **int**| Month for which to retrieve tax membership history (defaults to December) | [optional] [default to 12]

### Return type

[**TaxMembershipHistoryResponse**](TaxMembershipHistoryResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tax membership history retrieved successfully |  -  |
**400** | Bad Request - Invalid request parameters |  -  |
**404** | Employee or tax membership history not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_tax_membership_history_by_id**
> TaxMembershipHistoryResponse get_tax_membership_history_by_id(id)

Get Tax Membership History by ID

Retrieve a specific tax membership history record by its unique identifier


### Example


```python
from catapa import Catapa, TaxMembershipHistoryApi, ApiException
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
api_instance = TaxMembershipHistoryApi(client)
id = 'id_example' # str | Unique identifier for the tax membership history record

try:
    # Get Tax Membership History by ID
    api_response = api_instance.get_tax_membership_history_by_id(id)
    print("The response of TaxMembershipHistoryApi->get_tax_membership_history_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxMembershipHistoryApi->get_tax_membership_history_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Unique identifier for the tax membership history record | 

### Return type

[**TaxMembershipHistoryResponse**](TaxMembershipHistoryResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tax membership history retrieved successfully |  -  |
**400** | Bad Request - Invalid ID format |  -  |
**404** | Tax membership history not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_tax_membership_history_tax_subject**
> TaxMembershipHistoryResponse update_tax_membership_history_tax_subject(id, tax_membership_tax_subject_request)

Update Tax Membership History Tax Subject

Update tax subject information for a specific tax membership history record


### Example


```python
from catapa import Catapa, TaxMembershipHistoryApi, ApiException
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
api_instance = TaxMembershipHistoryApi(client)
id = 'id_example' # str | Unique identifier for the tax membership history record
tax_membership_tax_subject_request = TaxMembershipTaxSubjectRequest() # TaxMembershipTaxSubjectRequest | Tax subject information to update for the history record

try:
    # Update Tax Membership History Tax Subject
    api_response = api_instance.update_tax_membership_history_tax_subject(id, tax_membership_tax_subject_request)
    print("The response of TaxMembershipHistoryApi->update_tax_membership_history_tax_subject:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxMembershipHistoryApi->update_tax_membership_history_tax_subject: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Unique identifier for the tax membership history record | 
 **tax_membership_tax_subject_request** | [**TaxMembershipTaxSubjectRequest**](TaxMembershipTaxSubjectRequest.md)| Tax subject information to update for the history record | 

### Return type

[**TaxMembershipHistoryResponse**](TaxMembershipHistoryResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tax membership history tax subject updated successfully |  -  |
**400** | Bad Request - Invalid input data |  -  |
**404** | Tax membership history not found |  -  |
**422** | Unprocessable Entity - Business logic validation failed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

