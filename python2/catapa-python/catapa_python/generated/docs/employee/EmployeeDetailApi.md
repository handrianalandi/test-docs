# EmployeeDetailApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_employee_detail()`](#get_employee_detail) - Get Employee Detail
- [`get_historical_employee_details()`](#get_historical_employee_details) - Get Historical Employee Details
- [`update_employee_detail()`](#update_employee_detail) - Update Employee Detail

______________________________________________________________________

## `get_employee_detail()`

> **Get Employee Detail**

The `id` field in the response refers to the **employee's ID**, **not the employee detail's actual ID**.

### Method Signature

```python
def get_employee_detail(self, employee_id: str) -> EmployeeDetailResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |

### Returns

[**`EmployeeDetailResponse`**](../models/EmployeeDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeDetailApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeDetailApi(client)

response = api.get_employee_detail("employee_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_historical_employee_details()`

> **Get Historical Employee Details**

### Method Signature

```python
def get_historical_employee_details(
    self, page: int = None, size: int = None, query: str = None
) -> EmployeeDetailPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`EmployeeDetailPageResponse`**](../models/EmployeeDetailPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeDetailApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeDetailApi(client)

response = api.get_historical_employee_details(
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6",
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_employee_detail()`

> **Update Employee Detail**

The `id` field in the response refers to the **employee's ID**, **not the employee detail's actual ID**.

### Method Signature

```python
def update_employee_detail(
    self, employee_id: str, employee_detail_request: EmployeeDetailRequest = None
) -> EmployeeDetailResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `employee_id`             | `str`                                                         |    ✅    |             |
| `employee_detail_request` | [`EmployeeDetailRequest`](../models/EmployeeDetailRequest.md) |    ❌    |             |

### Returns

[**`EmployeeDetailResponse`**](../models/EmployeeDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeDetailApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeDetailApi(client)

response = api.update_employee_detail(
    "employee_id_example",
    employee_detail_request={
        "bloodType": "A",
        "citizenshipId": "d1eac40e-a691-11e6-80f5-76304dec7eb7",
        "dateOfBirth": "1990-03-31",
        "foreignLabour": false,
        "gender": "MALE",
        "maritalStatus": "SINGLE",
        "name": "Alice",
        "placeOfBirthId": "04e3c58f-b9f1-4d96-95eb-5f9a31fd9e8a",
        "religionId": "daa7f10k-a734-11e6-80f5-76304dec7eb7",
    },
)

# Access response data
print(response)
```

______________________________________________________________________
