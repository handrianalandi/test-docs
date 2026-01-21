# EditableSalaryPreprocessApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**preprocess_editable_salary**](EditableSalaryPreprocessApi.md#preprocess_editable_salary) | **POST** /core/v1/editable-salary-preprocess | Preprocess editable salary


# **preprocess_editable_salary**
> EditableSalaryPreprocessResponse preprocess_editable_salary(editable_salary_preprocess_request)

Preprocess editable salary

Preprocess salary editor data for up to 50 items.


### Example


```python
from catapa import Catapa, EditableSalaryPreprocessApi, ApiException
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
api_instance = EditableSalaryPreprocessApi(client)
editable_salary_preprocess_request = List[EditableSalaryPreprocessRequest]() # List[EditableSalaryPreprocessRequest] | 

try:
    # Preprocess editable salary
    api_response = api_instance.preprocess_editable_salary(editable_salary_preprocess_request)
    print("The response of EditableSalaryPreprocessApi->preprocess_editable_salary:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EditableSalaryPreprocessApi->preprocess_editable_salary: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **editable_salary_preprocess_request** | [**List[EditableSalaryPreprocessRequest]**](../models/EditableSalaryPreprocessRequest.md)|  | 

### Return type

[**EditableSalaryPreprocessResponse**](../models/EditableSalaryPreprocessResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Batch response for editable salary preprocess |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

