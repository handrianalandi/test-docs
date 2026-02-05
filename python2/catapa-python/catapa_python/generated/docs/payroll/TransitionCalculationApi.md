# TransitionCalculationApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_processable_time_allowance_transition()`](#get_processable_time_allowance_transition) - Get Processable Time Allowance Transition
- [`get_processable_transition_calculation()`](#get_processable_transition_calculation) - Get Processable Transition Calculation
- [`get_processed_transition_calculation()`](#get_processed_transition_calculation) - Get Processed Transition Calculation
- [`get_prorate_details_by_transition_calculation_detail_id()`](#get_prorate_details_by_transition_calculation_detail_id) - Get Prorate Details By Transition Calculation Detail Id
- [`get_time_allowance_detailsby_transition_calculation_detail_id()`](#get_time_allowance_detailsby_transition_calculation_detail_id) - Get Time Allowance Details by Transition Calculation Detail Id
- [`get_transition_calculation_count()`](#get_transition_calculation_count) - Get Transition Calculation Count
- [`get_transition_calculationby_id()`](#get_transition_calculationby_id) - Get Transition Calculation by Id
- [`update_transition_calculation_details_with_editable_type()`](#update_transition_calculation_details_with_editable_type) - Update Transition Calculation Details With Editable Type

______________________________________________________________________

## `get_processable_time_allowance_transition()`

> **Get Processable Time Allowance Transition**

⚠️ **This endpoint is deprecated.**
Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

### Search Query

| Supported Keys               | Supported Operators | Notes                                                                       |
| ---------------------------- | ------------------- | --------------------------------------------------------------------------- |
| idIn                         | :                   | Equal operator with multiple values, each value separated with delimiters ; |
| year                         | :                   | Like operator                                                               |
| month                        | :                   | Like operator                                                               |
| organizationId               | :                   | Like operator                                                               |
| jobTitleId                   | :                   | Like operator                                                               |
| locationId                   | :                   | Like operator                                                               |
| employeeId                   | :                   | Like operator                                                               |
| employeeName                 | :                   | Like operator                                                               |
| employeeIdentificationNumber | :                   | Like operator                                                               |
| startDate                    | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to                  |
| endDate                      | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to                  |

### Method Signature

```python
def get_processable_time_allowance_transition(
    self,
) -> ProcessableTimeAllowanceTransitionPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`ProcessableTimeAllowanceTransitionPageResponse`**](../models/ProcessableTimeAllowanceTransitionPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TransitionCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TransitionCalculationApi(client)

response = api.get_processable_time_allowance_transition()

# Access response data
print(response)
```

______________________________________________________________________

## `get_processable_transition_calculation()`

> **Get Processable Transition Calculation**

⚠️ **This endpoint is deprecated.**
Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

______________________________________________________________________

### Search Query

| Supported Keys               | Supported Operators | Notes                                                                       |
| ---------------------------- | ------------------- | --------------------------------------------------------------------------- |
| idIn                         | :                   | Equal operator with multiple values, each value separated with delimiters ; |
| year                         | :                   | Like operator                                                               |
| month                        | :                   | Like operator                                                               |
| organizationId               | :                   | Like operator                                                               |
| jobTitleId                   | :                   | Like operator                                                               |
| locationId                   | :                   | Like operator                                                               |
| employeeId                   | :                   | Like operator                                                               |
| employeeName                 | :                   | Like operator                                                               |
| employeeIdentificationNumber | :                   | Like operator                                                               |
| startDate                    | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to                  |
| endDate                      | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to                  |

### Method Signature

```python
def get_processable_transition_calculation(
    self,
) -> UnprocessedTransitionCalculationPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`UnprocessedTransitionCalculationPageResponse`**](../models/UnprocessedTransitionCalculationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TransitionCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TransitionCalculationApi(client)

response = api.get_processable_transition_calculation()

# Access response data
print(response)
```

______________________________________________________________________

## `get_processed_transition_calculation()`

> **Get Processed Transition Calculation**

⚠️ **This endpoint is deprecated.**
Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

______________________________________________________________________

### Search Query

| Supported Keys               | Supported Operators | Notes                                                                       |
| ---------------------------- | ------------------- | --------------------------------------------------------------------------- |
| idIn                         | :                   | Equal operator with multiple values, each value separated with delimiters ; |
| year                         | :                   | Like operator                                                               |
| month                        | :                   | Like operator                                                               |
| organizationId               | :                   | Like operator                                                               |
| jobTitleId                   | :                   | Like operator                                                               |
| locationId                   | :                   | Like operator                                                               |
| employeeId                   | :                   | Like operator                                                               |
| employeeName                 | :                   | Like operator                                                               |
| employeeIdentificationNumber | :                   | Like operator                                                               |
| startDate                    | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to                  |
| endDate                      | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to                  |

### Method Signature

```python
def get_processed_transition_calculation(
    self,
) -> ProcessedTransitionCalculationPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`ProcessedTransitionCalculationPageResponse`**](../models/ProcessedTransitionCalculationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TransitionCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TransitionCalculationApi(client)

response = api.get_processed_transition_calculation()

# Access response data
print(response)
```

______________________________________________________________________

## `get_prorate_details_by_transition_calculation_detail_id()`

> **Get Prorate Details By Transition Calculation Detail Id**

⚠️ **This endpoint is deprecated.**
Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

### Method Signature

```python
def get_prorate_details_by_transition_calculation_detail_id(
    self, id: str
) -> List[ProrateDetailResponse]: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`List[ProrateDetailResponse]`**](../models/ProrateDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TransitionCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TransitionCalculationApi(client)

response = api.get_prorate_details_by_transition_calculation_detail_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_time_allowance_detailsby_transition_calculation_detail_id()`

> **Get Time Allowance Details by Transition Calculation Detail Id**

⚠️ **This endpoint is deprecated.**
Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

### Method Signature

```python
def get_time_allowance_detailsby_transition_calculation_detail_id(
    self, id: str
) -> List[TransitionTimeAllowanceDetailResponse]: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`List[TransitionTimeAllowanceDetailResponse]`**](../models/TransitionTimeAllowanceDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TransitionCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TransitionCalculationApi(client)

response = api.get_time_allowance_detailsby_transition_calculation_detail_id(
    "id_example"
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_transition_calculation_count()`

> **Get Transition Calculation Count**

⚠️ **This endpoint is deprecated.**
Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

______________________________________________________________________

### Search Query

| Supported Keys               | Supported Operators | Notes                                                                       |
| ---------------------------- | ------------------- | --------------------------------------------------------------------------- |
| idIn                         | :                   | Equal operator with multiple values, each value separated with delimiters ; |
| year                         | :                   | Like operator                                                               |
| month                        | :                   | Like operator                                                               |
| organizationId               | :                   | Like operator                                                               |
| jobTitleId                   | :                   | Like operator                                                               |
| locationId                   | :                   | Like operator                                                               |
| employeeId                   | :                   | Like operator                                                               |
| employeeName                 | :                   | Like operator                                                               |
| employeeIdentificationNumber | :                   | Like operator                                                               |
| startDate                    | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to                  |
| endDate                      | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to                  |

### Method Signature

```python
def get_transition_calculation_count(self) -> TransitionCalculationCountResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TransitionCalculationCountResponse`**](../models/TransitionCalculationCountResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TransitionCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TransitionCalculationApi(client)

response = api.get_transition_calculation_count()

# Access response data
print(response)
```

______________________________________________________________________

## `get_transition_calculationby_id()`

> **Get Transition Calculation by Id**

⚠️ **This endpoint is deprecated.**
Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

### Method Signature

```python
def get_transition_calculationby_id(self, id: str) -> TransitionCalculationResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`TransitionCalculationResponse`**](../models/TransitionCalculationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TransitionCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TransitionCalculationApi(client)

response = api.get_transition_calculationby_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `update_transition_calculation_details_with_editable_type()`

> **Update Transition Calculation Details With Editable Type**

⚠️ **This endpoint is deprecated.**
Transition Calculation Process now available at Regular Salary Process, so the menu and existing endpoint are deprecated and will be removed

### Method Signature

```python
def update_transition_calculation_details_with_editable_type(
    self,
    id: str,
    transition_calculation_details_request: TransitionCalculationDetailsRequest = None,
) -> None: ...
```

### Parameters

| Name                                     | Type                                                                                      | Required | Description |
| :--------------------------------------- | :---------------------------------------------------------------------------------------- | :------: | :---------- |
| `id`                                     | `str`                                                                                     |    ✅    |             |
| `transition_calculation_details_request` | [`TransitionCalculationDetailsRequest`](../models/TransitionCalculationDetailsRequest.md) |    ❌    |             |

### Returns

`None`

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TransitionCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TransitionCalculationApi(client)

api.update_transition_calculation_details_with_editable_type(
    "id_example",
    transition_calculation_details_request={
        "transitionId": "string",
        "details": [{"amount": 0, "id": "string"}],
    },
)
print("Success!")
```

______________________________________________________________________
