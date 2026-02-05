# EmployeePaygroupApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_employee_paygroup_by_id()`](#get_employee_paygroup_by_id) - Get Employee Paygroup by ID
- [`get_employee_paygroups()`](#get_employee_paygroups) - Get Employee Paygroups

______________________________________________________________________

## `get_employee_paygroup_by_id()`

> **Get Employee Paygroup by ID**

### Method Signature

```python
def get_employee_paygroup_by_id(self, id: str) -> EmployeePaygroupResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`EmployeePaygroupResponse`**](../models/EmployeePaygroupResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeePaygroupApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeePaygroupApi(client)

response = api.get_employee_paygroup_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_employee_paygroups()`

> **Get Employee Paygroups**

### Method Signature

```python
def get_employee_paygroups(
    self, page: int = None, size: int = None, query: str = None
) -> EmployeePaygroupPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`EmployeePaygroupPageResponse`**](../models/EmployeePaygroupPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeePaygroupApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeePaygroupApi(client)

response = api.get_employee_paygroups(page=0, size=10, query="query_example")

# Access response data
print(response)
```

______________________________________________________________________
