# PayrollProcessSnapshotApi

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_payroll_process_snapshots**](PayrollProcessSnapshotApi.md#find_payroll_process_snapshots) | **GET** /core/v1/payroll-process-snapshots | Find all payroll process snapshots


# **find_payroll_process_snapshots**
> PayrollProcessSnapshotPageResponse find_payroll_process_snapshots(page, size, query)

Find all payroll process snapshots

Retrieves all payroll process snapshots


### Example


```python
from catapa import Catapa, PayrollProcessSnapshotApi, ApiException
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
api_instance = PayrollProcessSnapshotApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'query_example' # str | ### Search query   | Supported Keys | Supported Operators | Notes                                             | |----------------|---------------------|---------------------------------------------------| | effectiveDate  | `<` `>`             | Greater than or equal to<br>Less than or equal to | | process        | `:`                 | Equal to                                          | | employeeId     | `:`                 | Equal to                                          |  (optional)

try:
    # Find all payroll process snapshots
    api_response = api_instance.find_payroll_process_snapshots(page=page, size=size, query=query)
    print("The response of PayrollProcessSnapshotApi->find_payroll_process_snapshots:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PayrollProcessSnapshotApi->find_payroll_process_snapshots: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [default to 0]
 **size** | **int**| Page size | [default to 10]
 **query** | **str**| ### Search query   | Supported Keys | Supported Operators | Notes                                             | |----------------|---------------------|---------------------------------------------------| | effectiveDate  | &#x60;&lt;&#x60; &#x60;&gt;&#x60;             | Greater than or equal to&lt;br&gt;Less than or equal to | | process        | &#x60;:&#x60;                 | Equal to                                          | | employeeId     | &#x60;:&#x60;                 | Equal to                                          |  | 

### Return type

[**PayrollProcessSnapshotPageResponse**](../models/PayrollProcessSnapshotPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Page of PayrollProcessSnapshotResponse |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

