# SeveranceApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_severance_plan()`](#create_severance_plan) - Create Severance Plan
- [`delete_severance_plans_by_id()`](#delete_severance_plans_by_id) - Delete Severance Plans By Id
- [`download_severance_slip()`](#download_severance_slip) - Download Severance Slip
- [`get_severance_payment_plan_by_id()`](#get_severance_payment_plan_by_id) - Get Severance Payment Plan By Id
- [`get_severance_payment_plans()`](#get_severance_payment_plans) - Get Severance Payment Plans
- [`get_severance_plans()`](#get_severance_plans) - Get Severance Plans
- [`get_severance_plans_by_id()`](#get_severance_plans_by_id) - Get Severance Plans By Id

______________________________________________________________________

## `create_severance_plan()`

> **Create Severance Plan**

### Method Signature

```python
def create_severance_plan(
    self, id: str, severance_plan_request: SeverancePlanRequest = None
) -> SeverancePlanResponseWithDetail: ...
```

### Parameters

| Name                     | Type                                                        | Required | Description |
| :----------------------- | :---------------------------------------------------------- | :------: | :---------- |
| `id`                     | `str`                                                       |    ✅    |             |
| `severance_plan_request` | [`SeverancePlanRequest`](../models/SeverancePlanRequest.md) |    ❌    |             |

### Returns

[**`SeverancePlanResponseWithDetail`**](../models/SeverancePlanResponseWithDetail.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SeveranceApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SeveranceApi(client)

response = api.create_severance_plan(
    "id_example",
    severance_plan_request={
        "pph21Method": "GROSS",
        "details": [
            {
                "code": "UP",
                "name": "Uang Pesangon",
                "category": "INCOME",
                "amount": 70000,
                "pph21ItemMethod": "TAXABLE",
            }
        ],
        "paymentPlans": [
            {"plannedDate": "2020-01-01", "paymentDate": "2020-01-01", "amount": 700000}
        ],
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `delete_severance_plans_by_id()`

> **Delete Severance Plans By Id**

### Method Signature

```python
def delete_severance_plans_by_id(self, id: str) -> object: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SeveranceApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SeveranceApi(client)

result = api.delete_severance_plans_by_id("id_example")
print(result)
```

______________________________________________________________________

## `download_severance_slip()`

> **Download Severance Slip**

### Method Signature

```python
def download_severance_slip(self, id: str) -> object: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SeveranceApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SeveranceApi(client)

result = api.download_severance_slip("id_example")
print(result)
```

______________________________________________________________________

## `get_severance_payment_plan_by_id()`

> **Get Severance Payment Plan By Id**

### Method Signature

```python
def get_severance_payment_plan_by_id(self, id: str) -> SeverancePaymentPlanResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`SeverancePaymentPlanResponse`**](../models/SeverancePaymentPlanResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SeveranceApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SeveranceApi(client)

response = api.get_severance_payment_plan_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_severance_payment_plans()`

> **Get Severance Payment Plans**

### Search Query

| Supported Keys | Supported Operators | Notes                                                                                       |
| -------------- | ------------------- | ------------------------------------------------------------------------------------------- |
| paymentDate    | :<br>><br>\<        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to operator       |
| plannedDate    | :<br>><br>\<        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |
| paymentMethod  | :                   | Equal operator                                                                              |
| paymentOption  | :                   | Equal operator                                                                              |
| paid           | :                   | Equal operator                                                                              |

### Method Signature

```python
def get_severance_payment_plans(self) -> SeverancePaymentPlanPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`SeverancePaymentPlanPageResponse`**](../models/SeverancePaymentPlanPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SeveranceApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SeveranceApi(client)

response = api.get_severance_payment_plans()

# Access response data
print(response)
```

______________________________________________________________________

## `get_severance_plans()`

> **Get Severance Plans**

### Search Query

| Supported Keys               | Supported Operators | Notes                 |
| ---------------------------- | ------------------- | --------------------- |
| employeeIdentificationNumber | :                   | Like operator<br><br> |
| employeeName                 | :                   | Like operator         |
| paymentMethod                | :                   | Equal operator        |
| paymentOption                | :                   | Equal operator        |

### Method Signature

```python
def get_severance_plans(self) -> SeverancePlanPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`SeverancePlanPageResponse`**](../models/SeverancePlanPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SeveranceApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SeveranceApi(client)

response = api.get_severance_plans()

# Access response data
print(response)
```

______________________________________________________________________

## `get_severance_plans_by_id()`

> **Get Severance Plans By Id**

### Method Signature

```python
def get_severance_plans_by_id(self, id: str) -> SeverancePlanResponseWithDetail: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`SeverancePlanResponseWithDetail`**](../models/SeverancePlanResponseWithDetail.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SeveranceApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SeveranceApi(client)

response = api.get_severance_plans_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________
