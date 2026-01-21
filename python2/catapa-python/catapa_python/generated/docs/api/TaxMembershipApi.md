# TaxMembershipApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tax_membership**](TaxMembershipApi.md#get_tax_membership) | **GET** /core/v1/employees/{employeeId}/tax-memberships | Get Tax Membership
[**update_tax_membership**](TaxMembershipApi.md#update_tax_membership) | **PUT** /core/v1/employees/{employeeId}/tax-memberships | Update Tax Membership
[**update_tax_membership_tax_subject**](TaxMembershipApi.md#update_tax_membership_tax_subject) | **PUT** /core/v1/employees/{employeeId}/tax-memberships/tax-subjects | Update Tax Membership Tax Subject


# **get_tax_membership**
> TaxMembershipResponse get_tax_membership(employee_id)

Get Tax Membership

Retrieve the current tax membership information for a specific employee


### Example


```python
from catapa import Catapa, TaxMembershipApi, ApiException
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
api_instance = TaxMembershipApi(client)
employee_id = 'employee_id_example' # str | Unique identifier for the employee

try:
    # Get Tax Membership
    api_response = api_instance.get_tax_membership(employee_id)
    print("The response of TaxMembershipApi->get_tax_membership:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxMembershipApi->get_tax_membership: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**| Unique identifier for the employee | 

### Return type

[**TaxMembershipResponse**](TaxMembershipResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tax membership retrieved successfully |  -  |
**400** | Bad Request - Invalid request parameters |  -  |
**404** | Employee not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_tax_membership**
> TaxMembershipResponse update_tax_membership(employee_id, tax_membership_response)

Update Tax Membership

Update the tax membership information for a specific employee


### Example


```python
from catapa import Catapa, TaxMembershipApi, ApiException
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
api_instance = TaxMembershipApi(client)
employee_id = 'employee_id_example' # str | Unique identifier for the employee
tax_membership_response = TaxMembershipResponse() # TaxMembershipResponse |  (optional)

try:
    # Update Tax Membership
    api_response = api_instance.update_tax_membership(employee_id, tax_membership_response=tax_membership_response)
    print("The response of TaxMembershipApi->update_tax_membership:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxMembershipApi->update_tax_membership: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**| Unique identifier for the employee | 
 **tax_membership_response** | [**TaxMembershipResponse**](TaxMembershipResponse.md)|  | [optional] 

### Return type

[**TaxMembershipResponse**](TaxMembershipResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tax membership updated successfully |  -  |
**400** | Bad Request - Invalid request data |  -  |
**404** | Employee not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_tax_membership_tax_subject**
> TaxMembershipResponse update_tax_membership_tax_subject(employee_id, tax_membership_tax_subject_request)

Update Tax Membership Tax Subject

Update tax subject information for an employee's tax membership


### Example


```python
from catapa import Catapa, TaxMembershipApi, ApiException
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
api_instance = TaxMembershipApi(client)
employee_id = 'employee_id_example' # str | Unique identifier for the employee
tax_membership_tax_subject_request = TaxMembershipTaxSubjectRequest() # TaxMembershipTaxSubjectRequest | Tax subject information to update

try:
    # Update Tax Membership Tax Subject
    api_response = api_instance.update_tax_membership_tax_subject(employee_id, tax_membership_tax_subject_request)
    print("The response of TaxMembershipApi->update_tax_membership_tax_subject:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TaxMembershipApi->update_tax_membership_tax_subject: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**| Unique identifier for the employee | 
 **tax_membership_tax_subject_request** | [**TaxMembershipTaxSubjectRequest**](TaxMembershipTaxSubjectRequest.md)| Tax subject information to update | 

### Return type

[**TaxMembershipResponse**](TaxMembershipResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Tax membership tax subject updated successfully |  -  |
**400** | Bad Request - Invalid input data |  -  |
**404** | Employee not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

