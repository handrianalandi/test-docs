# TransitionCalculationApi

## TransitionCalculationApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                                                                                | HTTP request                                                                 | Description                                                    |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | -------------------------------------------------------------- |
| [**get\_processable\_time\_allowance\_transition**](transitioncalculationapi.md#get_processable_time_allowance_transition)                                            | **GET** /core/v1/transition-calculations/time-allowances/process/processable | Get Processable Time Allowance Transition                      |
| [**get\_processable\_transition\_calculation**](transitioncalculationapi.md#get_processable_transition_calculation)                                                   | **GET** /core/v1/transition-calculations/process/processable/unprocessed     | Get Processable Transition Calculation                         |
| [**get\_processed\_transition\_calculation**](transitioncalculationapi.md#get_processed_transition_calculation)                                                       | **GET** /core/v1/transition-calculations/process/processable/processed       | Get Processed Transition Calculation                           |
| [**get\_prorate\_details\_by\_transition\_calculation\_detail\_id**](transitioncalculationapi.md#get_prorate_details_by_transition_calculation_detail_id)             | **GET** /core/v1/transition-calculation-details/{id}/prorate-details         | Get Prorate Details By Transition Calculation Detail Id        |
| [**get\_time\_allowance\_detailsby\_transition\_calculation\_detail\_id**](transitioncalculationapi.md#get_time_allowance_detailsby_transition_calculation_detail_id) | **GET** /core/v1/transition-calculation-details/{id}/time-allowance-details  | Get Time Allowance Details by Transition Calculation Detail Id |
| [**get\_transition\_calculation\_count**](transitioncalculationapi.md#get_transition_calculation_count)                                                               | **GET** /core/v1/transition-calculations/process/count                       | Get Transition Calculation Count                               |
| [**get\_transition\_calculationby\_id**](transitioncalculationapi.md#get_transition_calculationby_id)                                                                 | **GET** /core/v1/transition-calculations/{id}                                | Get Transition Calculation by Id                               |
| [**update\_transition\_calculation\_details\_with\_editable\_type**](transitioncalculationapi.md#update_transition_calculation_details_with_editable_type)            | **PUT** /core/v1/transition-calculations/{id}/details                        | Update Transition Calculation Details With Editable Type       |

## **get\_processable\_time\_allowance\_transition**

> ProcessableTimeAllowanceTransitionListResponse get\_processable\_time\_allowance\_transition()

Get Processable Time Allowance Transition

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed ### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------------- | ------------------- | --------------------------------------------------------------------------- | | idIn | : | Equal operator with multiple values, each value separated with delimiters ; | | year | : | Like operator | | month | : | Like operator | | organizationId | : | Like operator | | jobTitleId | : | Like operator | | locationId | : | Like operator | | employeeId | : | Like operator | | employeeName | : | Like operator | | employeeIdentificationNumber | : | Like operator | | startDate | :\
\>\
< | Equal\
Greater than or equal to\
Less than or equal to | | endDate | :\
\>\
< | Equal\
Greater than or equal to\
Less than or equal to |

#### Example

```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)

try:
    # Get Processable Time Allowance Transition
    api_response = api_instance.get_processable_time_allowance_transition()
    print("The response of TransitionCalculationApi->get_processable_time_allowance_transition:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_processable_time_allowance_transition: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**ProcessableTimeAllowanceTransitionListResponse**](processabletimeallowancetransitionlistresponse.md)

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

[\[Back to top\]](transitioncalculationapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_processable\_transition\_calculation**

> UnprocessedTransitionCalculationListResponse get\_processable\_transition\_calculation()

Get Processable Transition Calculation

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed --- ### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------------- | ------------------- | --------------------------------------------------------------------------- | | idIn | : | Equal operator with multiple values, each value separated with delimiters ; | | year | : | Like operator | | month | : | Like operator | | organizationId | : | Like operator | | jobTitleId | : | Like operator | | locationId | : | Like operator | | employeeId | : | Like operator | | employeeName | : | Like operator | | employeeIdentificationNumber | : | Like operator | | startDate | :\
\>\
< | Equal\
Greater than or equal to\
Less than or equal to | | endDate | :\
\>\
< | Equal\
Greater than or equal to\
Less than or equal to |

#### Example

```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)

try:
    # Get Processable Transition Calculation
    api_response = api_instance.get_processable_transition_calculation()
    print("The response of TransitionCalculationApi->get_processable_transition_calculation:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_processable_transition_calculation: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**UnprocessedTransitionCalculationListResponse**](unprocessedtransitioncalculationlistresponse.md)

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

[\[Back to top\]](transitioncalculationapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_processed\_transition\_calculation**

> ProcessedTransitionCalculationListResponse get\_processed\_transition\_calculation()

Get Processed Transition Calculation

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed --- ### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------------- | ------------------- | --------------------------------------------------------------------------- | | idIn | : | Equal operator with multiple values, each value separated with delimiters ; | | year | : | Like operator | | month | : | Like operator | | organizationId | : | Like operator | | jobTitleId | : | Like operator | | locationId | : | Like operator | | employeeId | : | Like operator | | employeeName | : | Like operator | | employeeIdentificationNumber | : | Like operator | | startDate | :\
\>\
< | Equal\
Greater than or equal to\
Less than or equal to | | endDate | :\
\>\
< | Equal\
Greater than or equal to\
Less than or equal to |

#### Example

```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)

try:
    # Get Processed Transition Calculation
    api_response = api_instance.get_processed_transition_calculation()
    print("The response of TransitionCalculationApi->get_processed_transition_calculation:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_processed_transition_calculation: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**ProcessedTransitionCalculationListResponse**](processedtransitioncalculationlistresponse.md)

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

[\[Back to top\]](transitioncalculationapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_prorate\_details\_by\_transition\_calculation\_detail\_id**

> List\[ProrateDetailResponse] get\_prorate\_details\_by\_transition\_calculation\_detail\_id(id)

Get Prorate Details By Transition Calculation Detail Id

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

#### Example

```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)
id = 'id_example' # str | 

try:
    # Get Prorate Details By Transition Calculation Detail Id
    api_response = api_instance.get_prorate_details_by_transition_calculation_detail_id(id)
    print("The response of TransitionCalculationApi->get_prorate_details_by_transition_calculation_detail_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_prorate_details_by_transition_calculation_detail_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**List\[ProrateDetailResponse\]**](proratedetailresponse.md)

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

[\[Back to top\]](transitioncalculationapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_time\_allowance\_detailsby\_transition\_calculation\_detail\_id**

> List\[TransitionTimeAllowanceDetailResponse] get\_time\_allowance\_detailsby\_transition\_calculation\_detail\_id(id)

Get Time Allowance Details by Transition Calculation Detail Id

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

#### Example

```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)
id = 'id_example' # str | 

try:
    # Get Time Allowance Details by Transition Calculation Detail Id
    api_response = api_instance.get_time_allowance_detailsby_transition_calculation_detail_id(id)
    print("The response of TransitionCalculationApi->get_time_allowance_detailsby_transition_calculation_detail_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_time_allowance_detailsby_transition_calculation_detail_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**List\[TransitionTimeAllowanceDetailResponse\]**](transitiontimeallowancedetailresponse.md)

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

[\[Back to top\]](transitioncalculationapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_transition\_calculation\_count**

> TransitionCalculationCountResponse get\_transition\_calculation\_count()

Get Transition Calculation Count

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed --- ### Search Query | Supported Keys | Supported Operators | Notes | | ---------------------------- | ------------------- | --------------------------------------------------------------------------- | | idIn | : | Equal operator with multiple values, each value separated with delimiters ; | | year | : | Like operator | | month | : | Like operator | | organizationId | : | Like operator | | jobTitleId | : | Like operator | | locationId | : | Like operator | | employeeId | : | Like operator | | employeeName | : | Like operator | | employeeIdentificationNumber | : | Like operator | | startDate | :\
\>\
< | Equal\
Greater than or equal to\
Less than or equal to | | endDate | :\
\>\
< | Equal\
Greater than or equal to\
Less than or equal to |

#### Example

```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)

try:
    # Get Transition Calculation Count
    api_response = api_instance.get_transition_calculation_count()
    print("The response of TransitionCalculationApi->get_transition_calculation_count:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_transition_calculation_count: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**TransitionCalculationCountResponse**](transitioncalculationcountresponse.md)

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

[\[Back to top\]](transitioncalculationapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_transition\_calculationby\_id**

> TransitionCalculationResponse get\_transition\_calculationby\_id(id)

Get Transition Calculation by Id

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

#### Example

```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)
id = 'id_example' # str | 

try:
    # Get Transition Calculation by Id
    api_response = api_instance.get_transition_calculationby_id(id)
    print("The response of TransitionCalculationApi->get_transition_calculationby_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->get_transition_calculationby_id: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**TransitionCalculationResponse**](transitioncalculationresponse.md)

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

[\[Back to top\]](transitioncalculationapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_transition\_calculation\_details\_with\_editable\_type**

> update\_transition\_calculation\_details\_with\_editable\_type(id, transition\_calculation\_details\_request)

Update Transition Calculation Details With Editable Type

⚠️ **This endpoint is deprecated.** Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

#### Example

```python
from catapa import Catapa, TransitionCalculationApi, ApiException
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
api_instance = TransitionCalculationApi(client)
id = 'id_example' # str | 
transition_calculation_details_request = TransitionCalculationDetailsRequest() # TransitionCalculationDetailsRequest |  (optional)

try:
    # Update Transition Calculation Details With Editable Type
    api_instance.update_transition_calculation_details_with_editable_type(id, transition_calculation_details_request=transition_calculation_details_request)
except ApiException as e:
    print("Exception when calling TransitionCalculationApi->update_transition_calculation_details_with_editable_type: %s\n" % e)
```

#### Parameters

| Name                                          | Type                                                                              | Description | Notes       |
| --------------------------------------------- | --------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                                        | **str**                                                                           |             |             |
| **transition\_calculation\_details\_request** | [**TransitionCalculationDetailsRequest**](transitioncalculationdetailsrequest.md) |             | \[optional] |

#### Return type

void (empty response body)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: Not defined

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](transitioncalculationapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
