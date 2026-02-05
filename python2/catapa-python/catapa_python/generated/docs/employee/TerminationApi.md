# TerminationApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_termination_entry()`](#create_termination_entry) - Create Termination Entry
- [`create_termination_reason()`](#create_termination_reason) - Create Termination Reason
- [`get_termination_bpjs_manpower_reasons()`](#get_termination_bpjs_manpower_reasons) - Get Termination BPJS Manpower Reasons
- [`get_termination_entry()`](#get_termination_entry) - Get Termination Entry
- [`get_termination_reason()`](#get_termination_reason) - Get Termination Reason
- [`get_termination_reason_category()`](#get_termination_reason_category) - Get Termination Reason Category
- [`get_termination_tax_reasons()`](#get_termination_tax_reasons) - Get Termination Tax Reasons
- [`undo_termination_entry()`](#undo_termination_entry) - Undo Termination Entry
- [`update_termination_reason()`](#update_termination_reason) - Update Termination Reason

______________________________________________________________________

## `create_termination_entry()`

> **Create Termination Entry**

### Method Signature

```python
def create_termination_entry(
    self, employee_id: str, termination_entry_request: TerminationEntryRequest = None
) -> TerminationEntryResponse: ...
```

### Parameters

| Name                        | Type                                                              | Required | Description |
| :-------------------------- | :---------------------------------------------------------------- | :------: | :---------- |
| `employee_id`               | `str`                                                             |    ✅    |             |
| `termination_entry_request` | [`TerminationEntryRequest`](../models/TerminationEntryRequest.md) |    ❌    |             |

### Returns

[**`TerminationEntryResponse`**](../models/TerminationEntryResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TerminationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TerminationApi(client)

response = api.create_termination_entry(
    "employee_id_example",
    termination_entry_request={
        "terminationCode": "001/TRM/09/2019",
        "payrollMethod": "PROPORTIONAL",
        "terminationReasonId": "2c685762-c0ef-11e6-a4a6-cec0c932ce01",
        "requestDate": "2019-09-29",
        "bpjsManpowerEndDate": "2019-09-30",
        "servicePeriodBy": "START_DATE",
        "pph21MembershipEndDate": "2019-09-30",
        "bpjsHealthcareEndDate": "2019-09-30",
        "effectiveDate": "2019-09-30",
        "rehire": true,
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_termination_reason()`

> **Create Termination Reason**

### Method Signature

```python
def create_termination_reason(
    self, termination_reason_request: TerminationReasonRequest = None
) -> TerminationReasonDetailResponse: ...
```

### Parameters

| Name                         | Type                                                                | Required | Description |
| :--------------------------- | :------------------------------------------------------------------ | :------: | :---------- |
| `termination_reason_request` | [`TerminationReasonRequest`](../models/TerminationReasonRequest.md) |    ❌    |             |

### Returns

[**`TerminationReasonDetailResponse`**](../models/TerminationReasonDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TerminationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TerminationApi(client)

response = api.create_termination_reason(
    termination_reason_request={
        "name": "Meninggalkan Indonesia selama-lamanya",
        "taxReason": {"id": "233ed3e1-3d8d-4138-99d2-b6d831247dad"},
        "bpjsManpowerReason": {"id": "60a2e07e-b5ff-11e6-80f5-76304dec7eb6"},
        "reasonCategory": {"id": "60a2db60-b5ff-11e6-80f5-76304dec7eb7"},
        "severance": false,
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_termination_bpjs_manpower_reasons()`

> **Get Termination BPJS Manpower Reasons**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | `:`                 | Like operator |

### Method Signature

```python
def get_termination_bpjs_manpower_reasons(
    self,
) -> TerminationBPJSManpowerReasonPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TerminationBPJSManpowerReasonPageResponse`**](../models/TerminationBPJSManpowerReasonPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TerminationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TerminationApi(client)

response = api.get_termination_bpjs_manpower_reasons()

# Access response data
print(response)
```

______________________________________________________________________

## `get_termination_entry()`

> **Get Termination Entry**

### Method Signature

```python
def get_termination_entry(self, employee_id: str) -> TerminationEntryResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |

### Returns

[**`TerminationEntryResponse`**](../models/TerminationEntryResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TerminationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TerminationApi(client)

response = api.get_termination_entry("employee_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_termination_reason()`

> **Get Termination Reason**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | `:`                 | Like operator |

### Method Signature

```python
def get_termination_reason(self) -> TerminationReasonPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TerminationReasonPageResponse`**](../models/TerminationReasonPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TerminationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TerminationApi(client)

response = api.get_termination_reason()

# Access response data
print(response)
```

______________________________________________________________________

## `get_termination_reason_category()`

> **Get Termination Reason Category**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | `:`                 | Like operator |

### Method Signature

```python
def get_termination_reason_category(self) -> TerminationReasonCategoryPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TerminationReasonCategoryPageResponse`**](../models/TerminationReasonCategoryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TerminationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TerminationApi(client)

response = api.get_termination_reason_category()

# Access response data
print(response)
```

______________________________________________________________________

## `get_termination_tax_reasons()`

> **Get Termination Tax Reasons**

### Search Query

| Supported Keys | Supported Operators | Notes          |
| -------------- | ------------------- | -------------- |
| name           | `:`                 | Like operator  |
| taxAnnualized  | `:`                 | Equal operator |

### Method Signature

```python
def get_termination_tax_reasons(self) -> TerminationTaxReasonPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`TerminationTaxReasonPageResponse`**](../models/TerminationTaxReasonPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TerminationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TerminationApi(client)

response = api.get_termination_tax_reasons()

# Access response data
print(response)
```

______________________________________________________________________

## `undo_termination_entry()`

> **Undo Termination Entry**

### Method Signature

```python
def undo_termination_entry(self, employee_id: str) -> object: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TerminationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TerminationApi(client)

result = api.undo_termination_entry("employee_id_example")
print(result)
```

______________________________________________________________________

## `update_termination_reason()`

> **Update Termination Reason**

### Method Signature

```python
def update_termination_reason(
    self, id: str, termination_reason_request: TerminationReasonRequest = None
) -> TerminationReasonDetailResponse: ...
```

### Parameters

| Name                         | Type                                                                | Required | Description |
| :--------------------------- | :------------------------------------------------------------------ | :------: | :---------- |
| `id`                         | `str`                                                               |    ✅    |             |
| `termination_reason_request` | [`TerminationReasonRequest`](../models/TerminationReasonRequest.md) |    ❌    |             |

### Returns

[**`TerminationReasonDetailResponse`**](../models/TerminationReasonDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, TerminationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TerminationApi(client)

response = api.update_termination_reason(
    "id_example",
    termination_reason_request={
        "name": "Meninggalkan Indonesia selama-lamanya",
        "taxReason": {"id": "233ed3e1-3d8d-4138-99d2-b6d831247dad"},
        "bpjsManpowerReason": {"id": "60a2e07e-b5ff-11e6-80f5-76304dec7eb6"},
        "reasonCategory": {"id": "60a2db60-b5ff-11e6-80f5-76304dec7eb7"},
        "severance": false,
    },
)

# Access response data
print(response)
```

______________________________________________________________________
