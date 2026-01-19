# SeveranceApi

## SeveranceApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                        | HTTP request                                               | Description                      |
| --------------------------------------------------------------------------------------------- | ---------------------------------------------------------- | -------------------------------- |
| [**create\_severance\_plan**](SeveranceApi.md#create_severance_plan)                          | **POST** /core/v1/termination-entries/{id}/severance-plans | Create Severance Plan            |
| [**delete\_severance\_plans\_by\_id**](SeveranceApi.md#delete_severance_plans_by_id)          | **DELETE** /core/v1/severance-plans/{id}                   | Delete Severance Plans By Id     |
| [**download\_severance\_slip**](SeveranceApi.md#download_severance_slip)                      | **GET** /core/v1/employees/{id}/payslip/severance          | Download Severance Slip          |
| [**get\_severance\_payment\_plan**](SeveranceApi.md#get_severance_payment_plan)               | **GET** /core/v1/severance-payment-plans                   | Get Severance Payment Plan       |
| [**get\_severance\_payment\_plan\_by\_id**](SeveranceApi.md#get_severance_payment_plan_by_id) | **GET** /core/v1/severance-payment-plans/{id}              | Get Severance Payment Plan By Id |
| [**get\_severance\_plans**](SeveranceApi.md#get_severance_plans)                              | **GET** /core/v1/severance-plans                           | Get Severance Plans              |
| [**get\_severance\_plans\_by\_id**](SeveranceApi.md#get_severance_plans_by_id)                | **GET** /core/v1/severance-plans/{id}                      | Get Severance Plans By Id        |

## **create\_severance\_plan**

> SeverancePlanResponseWithDetail create\_severance\_plan(id, severance\_plan\_request)

Create Severance Plan

#### Example

```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 
severance_plan_request = SeverancePlanRequest() # SeverancePlanRequest |  (optional)

try:
    # Create Severance Plan
    api_response = api_instance.create_severance_plan(id, severance_plan_request=severance_plan_request)
    print("The response of SeveranceApi->create_severance_plan:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->create_severance_plan: %s\n" % e)
```

#### Parameters

| Name                         | Type                                                | Description | Notes       |
| ---------------------------- | --------------------------------------------------- | ----------- | ----------- |
| **id**                       | **str**                                             |             |             |
| **severance\_plan\_request** | [**SeverancePlanRequest**](SeverancePlanRequest.md) |             | \[optional] |

#### Return type

[**SeverancePlanResponseWithDetail**](SeverancePlanResponseWithDetail.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](SeveranceApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **delete\_severance\_plans\_by\_id**

> object delete\_severance\_plans\_by\_id(id)

Delete Severance Plans By Id

#### Example

```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 

try:
    # Delete Severance Plans By Id
    api_response = api_instance.delete_severance_plans_by_id(id)
    print("The response of SeveranceApi->delete_severance_plans_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->delete_severance_plans_by_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

**object**

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

[\[Back to top\]](SeveranceApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **download\_severance\_slip**

> object download\_severance\_slip(id)

Download Severance Slip

#### Example

```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 

try:
    # Download Severance Slip
    api_response = api_instance.download_severance_slip(id)
    print("The response of SeveranceApi->download_severance_slip:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->download_severance_slip: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

**object**

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

[\[Back to top\]](SeveranceApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_severance\_payment\_plan**

> SeverancePaymentPlanListResponse get\_severance\_payment\_plan()

Get Severance Payment Plan

#### Search Query | Supported Keys | Supported Operators | Notes | | -------------- | ------------------- | ------------------------------------------------------------------------------------------- | | paymentDate | : \\> < | Equal operator Greater than or equal to operator Less than or equal to operator | | plannedDate | : \\> < | Equal operator Greater than or equal to operator Less than or equal to equal operator | | paymentMethod | : | Equal operator | | paymentOption | : | Equal operator | | paid | : | Equal operator |

#### Example

```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)

try:
    # Get Severance Payment Plan
    api_response = api_instance.get_severance_payment_plan()
    print("The response of SeveranceApi->get_severance_payment_plan:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->get_severance_payment_plan: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**SeverancePaymentPlanListResponse**](SeverancePaymentPlanListResponse.md)

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

[\[Back to top\]](SeveranceApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_severance\_payment\_plan\_by\_id**

> SeverancePaymentPlanResponse get\_severance\_payment\_plan\_by\_id(id)

Get Severance Payment Plan By Id

#### Example

```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 

try:
    # Get Severance Payment Plan By Id
    api_response = api_instance.get_severance_payment_plan_by_id(id)
    print("The response of SeveranceApi->get_severance_payment_plan_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->get_severance_payment_plan_by_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**SeverancePaymentPlanResponse**](SeverancePaymentPlanResponse.md)

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

[\[Back to top\]](SeveranceApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_severance\_plans**

> SeverancePlanListResponse get\_severance\_plans()

Get Severance Plans

#### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------------- | ------------------- | --------------------- | | employeeIdentificationNumber | : | Like operator  | | employeeName | : | Like operator | | paymentMethod | : | Equal operator | | paymentOption | : | Equal operator |

#### Example

```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)

try:
    # Get Severance Plans
    api_response = api_instance.get_severance_plans()
    print("The response of SeveranceApi->get_severance_plans:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->get_severance_plans: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**SeverancePlanListResponse**](SeverancePlanListResponse.md)

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

[\[Back to top\]](SeveranceApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_severance\_plans\_by\_id**

> SeverancePlanResponseWithDetail get\_severance\_plans\_by\_id(id)

Get Severance Plans By Id

#### Example

```python
from catapa import Catapa, SeveranceApi, ApiException
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
api_instance = SeveranceApi(client)
id = 'id_example' # str | 

try:
    # Get Severance Plans By Id
    api_response = api_instance.get_severance_plans_by_id(id)
    print("The response of SeveranceApi->get_severance_plans_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SeveranceApi->get_severance_plans_by_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**SeverancePlanResponseWithDetail**](SeverancePlanResponseWithDetail.md)

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

[\[Back to top\]](SeveranceApi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
