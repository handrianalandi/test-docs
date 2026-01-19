# EmployeePaymentItemGroupSequenceApi

## EmployeePaymentItemGroupSequenceApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                              | HTTP request                                                              | Description                          |
| ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------ |
| [**get\_last\_sequence\_employee**](employeepaymentitemgroupsequenceapi.md#get_last_sequence_employee)              | **GET** /core/v1/employees/{employeeId}/payment-item-groups/last-sequence | Get Last Payment Item Group Sequence |
| [**get\_payment\_item\_group\_sequences**](employeepaymentitemgroupsequenceapi.md#get_payment_item_group_sequences) | **GET** /core/v1/employees/{employeeId}/payment-item-groups/sequences     | Get Payment Item Group Sequences     |

## **get\_last\_sequence\_employee**

> PaymentItemGroupLastSequenceResponse get\_last\_sequence\_employee(employee\_id)

Get Last Payment Item Group Sequence

#### Example

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

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **employee\_id** | **str** |             |       |

#### Return type

[**PaymentItemGroupLastSequenceResponse**](paymentitemgrouplastsequenceresponse.md)

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

[\[Back to top\]](employeepaymentitemgroupsequenceapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_payment\_item\_group\_sequences**

> List\[PaymentItemGroupSequenceResponse] get\_payment\_item\_group\_sequences(employee\_id, page, size, query)

Get Payment Item Group Sequences

#### Example

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

#### Parameters

| Name             | Type    | Description      | Notes                        |
| ---------------- | ------- | ---------------- | ---------------------------- |
| **employee\_id** | **str** |                  |                              |
| **page**         | **int** | Page number      | \[optional] \[default to 0]  |
| **size**         | **int** | Page size        | \[optional] \[default to 10] |
| **query**        | **str** | ### Search Query | Supported Keys               |

#### Return type

[**List\[PaymentItemGroupSequenceResponse\]**](paymentitemgroupsequenceresponse.md)

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

[\[Back to top\]](employeepaymentitemgroupsequenceapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
