# CompanyBankAccountApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_company_bank_accounts**](CompanyBankAccountApi.md#get_company_bank_accounts) | **GET** /core/v1/company-bank-accounts | Get Company Bank Accounts


# **get_company_bank_accounts**
> CompanyBankAccountListResponse get_company_bank_accounts(page, size, query)

Get Company Bank Accounts

### Example


```python
from catapa import Catapa, CompanyBankAccountApi, ApiException
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
api_instance = CompanyBankAccountApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:eb919ed1-c3c1-4334-a626-b9178b8a98ae' # str | ### Search query   | Supported Keys         | Supported Operators | Notes                                                         | |------------------------|---------------------|---------------------------------------------------------------| | id                     | `:`                 | Equal operator with multiple values. Each value should separated with delimiters `;` |                                                |  (optional)

try:
    # Get Company Bank Accounts
    api_response = api_instance.get_company_bank_accounts(page=page, size=size, query=query)
    print("The response of CompanyBankAccountApi->get_company_bank_accounts:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CompanyBankAccountApi->get_company_bank_accounts: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search query   | Supported Keys         | Supported Operators | Notes                                                         | |------------------------|---------------------|---------------------------------------------------------------| | id                     | &#x60;:&#x60;                 | Equal operator with multiple values. Each value should separated with delimiters &#x60;;&#x60; |                                                |  | [optional] 

### Return type

[**CompanyBankAccountListResponse**](CompanyBankAccountListResponse.md)

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

