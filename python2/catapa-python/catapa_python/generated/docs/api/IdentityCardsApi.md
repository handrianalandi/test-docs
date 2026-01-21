# IdentityCardsApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_employee_identity_cards**](IdentityCardsApi.md#create_employee_identity_cards) | **POST** /core/v1/employees/{employeeId}/employee-identity-cards | Create Employee Identity Cards
[**delete_employee_identity_cards**](IdentityCardsApi.md#delete_employee_identity_cards) | **DELETE** /core/v1/employees/{employeeId}/employee-identity-cards/{employeeIdentityCardId} | Delete Employee Identity Cards
[**get_employee_identity_cards**](IdentityCardsApi.md#get_employee_identity_cards) | **GET** /core/v1/employees/{employeeId}/employee-identity-cards | Get Employee Identity Cards
[**update_employee_identity_cards**](IdentityCardsApi.md#update_employee_identity_cards) | **PUT** /core/v1/employees/{employeeId}/employee-identity-cards/{employeeIdentityCardId} | Update Employee Identity Cards


# **create_employee_identity_cards**
> EmployeeIdentityCardResponse create_employee_identity_cards(employee_id, employee_identity_card_request)

Create Employee Identity Cards


### Example


```python
from catapa import Catapa, IdentityCardsApi, ApiException
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
api_instance = IdentityCardsApi(client)
employee_id = 'employee_id_example' # str | 
employee_identity_card_request = EmployeeIdentityCardRequest() # EmployeeIdentityCardRequest |  (optional)

try:
    # Create Employee Identity Cards
    api_response = api_instance.create_employee_identity_cards(employee_id, employee_identity_card_request=employee_identity_card_request)
    print("The response of IdentityCardsApi->create_employee_identity_cards:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IdentityCardsApi->create_employee_identity_cards: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **employee_identity_card_request** | [**EmployeeIdentityCardRequest**](../models/EmployeeIdentityCardRequest.md)|  | [optional] 

### Return type

[**EmployeeIdentityCardResponse**](../models/EmployeeIdentityCardResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **delete_employee_identity_cards**
> object delete_employee_identity_cards(employee_id, employee_identity_card_id)

Delete Employee Identity Cards


### Example


```python
from catapa import Catapa, IdentityCardsApi, ApiException
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
api_instance = IdentityCardsApi(client)
employee_id = 'employee_id_example' # str | 
employee_identity_card_id = 'employee_identity_card_id_example' # str | 

try:
    # Delete Employee Identity Cards
    api_response = api_instance.delete_employee_identity_cards(employee_id, employee_identity_card_id)
    print("The response of IdentityCardsApi->delete_employee_identity_cards:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IdentityCardsApi->delete_employee_identity_cards: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **employee_identity_card_id** | **str**|  | 

### Return type

**object**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employee_identity_cards**
> EmployeeIdentityCardListResponse get_employee_identity_cards(employee_id, query)

Get Employee Identity Cards


### Example


```python
from catapa import Catapa, IdentityCardsApi, ApiException
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
api_instance = IdentityCardsApi(client)
employee_id = 'employee_id_example' # str | 
query = 'effectiveDate<2025-01-31' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | effectiveDate      | `<`                 | Less than or equal to<br/><br/>Use `yyyy-MM-dd` format, e.g. `effectiveDate<2025-01-31  ` |  (optional)

try:
    # Get Employee Identity Cards
    api_response = api_instance.get_employee_identity_cards(employee_id, query=query)
    print("The response of IdentityCardsApi->get_employee_identity_cards:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IdentityCardsApi->get_employee_identity_cards: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **query** | **str**| ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                     | |--------------------|---------------------|-------------------------------------------------------------------------------------------| | effectiveDate      | &#x60;&lt;&#x60;                 | Less than or equal to&lt;br/&gt;&lt;br/&gt;Use &#x60;yyyy-MM-dd&#x60; format, e.g. &#x60;effectiveDate&lt;2025-01-31  &#x60; |  | [optional] 

### Return type

[**EmployeeIdentityCardListResponse**](../models/EmployeeIdentityCardListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_employee_identity_cards**
> EmployeeIdentityCardResponse update_employee_identity_cards(employee_id, employee_identity_card_id, employee_identity_card_request)

Update Employee Identity Cards


### Example


```python
from catapa import Catapa, IdentityCardsApi, ApiException
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
api_instance = IdentityCardsApi(client)
employee_id = 'employee_id_example' # str | 
employee_identity_card_id = 'employee_identity_card_id_example' # str | 
employee_identity_card_request = EmployeeIdentityCardRequest() # EmployeeIdentityCardRequest |  (optional)

try:
    # Update Employee Identity Cards
    api_response = api_instance.update_employee_identity_cards(employee_id, employee_identity_card_id, employee_identity_card_request=employee_identity_card_request)
    print("The response of IdentityCardsApi->update_employee_identity_cards:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IdentityCardsApi->update_employee_identity_cards: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **employee_identity_card_id** | **str**|  | 
 **employee_identity_card_request** | [**EmployeeIdentityCardRequest**](../models/EmployeeIdentityCardRequest.md)|  | [optional] 

### Return type

[**EmployeeIdentityCardResponse**](../models/EmployeeIdentityCardResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

