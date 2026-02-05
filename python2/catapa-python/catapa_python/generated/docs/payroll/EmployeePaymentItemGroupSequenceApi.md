# EmployeePaymentItemGroupSequenceApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_last_sequence_employee()`](#get_last_sequence_employee) - Get Last Payment Item Group Sequence
- [`get_payment_item_group_sequences()`](#get_payment_item_group_sequences) - Get Payment Item Group Sequences

______________________________________________________________________

## `get_last_sequence_employee()`

> **Get Last Payment Item Group Sequence**

### Method Signature

```python
def get_last_sequence_employee(
    self, employee_id: str
) -> PaymentItemGroupLastSequenceResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |

### Returns

[**`PaymentItemGroupLastSequenceResponse`**](../models/PaymentItemGroupLastSequenceResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeePaymentItemGroupSequenceApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeePaymentItemGroupSequenceApi(client)

response = api.get_last_sequence_employee("employee_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_payment_item_group_sequences()`

> **Get Payment Item Group Sequences**

### Method Signature

```python
def get_payment_item_group_sequences(
    self, employee_id: str, page: int = None, size: int = None, query: str = None
) -> List[PaymentItemGroupSequenceResponse]: ...
```

### Parameters

| Name          | Type  | Required | Description                |
| :------------ | :---- | :------: | :------------------------- |
| `employee_id` | `str` |    ✅    |                            |
| `page`        | `int` |    ❌    | Page number (default: `0`) |
| `size`        | `int` |    ❌    | Page size (default: `10`)  |
| `query`       | `str` |    ❌    | ### Search Query           |

### Returns

[**`List[PaymentItemGroupSequenceResponse]`**](../models/PaymentItemGroupSequenceResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeePaymentItemGroupSequenceApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeePaymentItemGroupSequenceApi(client)

response = api.get_payment_item_group_sequences(
    "employee_id_example",
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1",
)

# Access response data
print(response)
```

______________________________________________________________________
