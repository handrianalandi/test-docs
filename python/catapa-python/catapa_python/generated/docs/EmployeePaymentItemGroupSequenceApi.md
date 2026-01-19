# EmployeePaymentItemGroupSequenceApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_last_sequence_employee**](EmployeePaymentItemGroupSequenceApi.md#get_last_sequence_employee) | **GET** /core/v1/employees/{employeeId}/payment-item-groups/last-sequence | Get Last Payment Item Group Sequence
[**get_payment_item_group_sequences**](EmployeePaymentItemGroupSequenceApi.md#get_payment_item_group_sequences) | **GET** /core/v1/employees/{employeeId}/payment-item-groups/sequences | Get Payment Item Group Sequences


# **get_last_sequence_employee**
> PaymentItemGroupLastSequenceResponse get_last_sequence_employee(employee_id)

Get Last Payment Item Group Sequence

### Example


```python
from catapa import Catapa, EmployeePaymentItemGroupSequenceApi, ApiException
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
api_instance = EmployeePaymentItemGroupSequenceApi(client)
employee_id = 'employee_id_example' # str | 

try:
    # Get Last Payment Item Group Sequence
    api_response = api_instance.get_last_sequence_employee(employee_id)
    print("The response of EmployeePaymentItemGroupSequenceApi->get_last_sequence_employee:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeePaymentItemGroupSequenceApi->get_last_sequence_employee: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 

### Return type

[**PaymentItemGroupLastSequenceResponse**](PaymentItemGroupLastSequenceResponse.md)

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


# **get_payment_item_group_sequences**
> List[PaymentItemGroupSequenceResponse] get_payment_item_group_sequences(employee_id, page, size, query)

Get Payment Item Group Sequences

### Example


```python
from catapa import Catapa, EmployeePaymentItemGroupSequenceApi, ApiException
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
api_instance = EmployeePaymentItemGroupSequenceApi(client)
employee_id = 'employee_id_example' # str | 
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1' # str | ### Search Query | Supported Keys                  | Supported Operators | Notes                                                                           | |---------------------------------|---------------------|---------------------------------------------------------------------------------| | id                              | `:`                 | Equal operator                                                                  | | employee.id                     | `:`                 | Equal operator                                                                  | | paymentItemGroup.paymentType    | `:`                 | Equal operator (REGULAR_SALARY / SEVERANCE / RETROACTIVE / ADDITIONAL_INCOME)   | | payrollSequenceNumber           | `:`                 | Equal operator                                                                  |  (optional)

try:
    # Get Payment Item Group Sequences
    api_response = api_instance.get_payment_item_group_sequences(employee_id, page=page, size=size, query=query)
    print("The response of EmployeePaymentItemGroupSequenceApi->get_payment_item_group_sequences:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeePaymentItemGroupSequenceApi->get_payment_item_group_sequences: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys                  | Supported Operators | Notes                                                                           | |---------------------------------|---------------------|---------------------------------------------------------------------------------| | id                              | &#x60;:&#x60;                 | Equal operator                                                                  | | employee.id                     | &#x60;:&#x60;                 | Equal operator                                                                  | | paymentItemGroup.paymentType    | &#x60;:&#x60;                 | Equal operator (REGULAR_SALARY / SEVERANCE / RETROACTIVE / ADDITIONAL_INCOME)   | | payrollSequenceNumber           | &#x60;:&#x60;                 | Equal operator                                                                  |  | [optional] 

### Return type

[**List[PaymentItemGroupSequenceResponse]**](PaymentItemGroupSequenceResponse.md)

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

