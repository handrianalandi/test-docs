# SalaryItemApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_salary_item_by_id()`](#get_salary_item_by_id) - Get Salary Item by ID
- [`get_salary_items()`](#get_salary_items) - Get Salary Items

______________________________________________________________________

## `get_salary_item_by_id()`

> **Get Salary Item by ID**

### Method Signature

```python
def get_salary_item_by_id(self, id: str) -> SalaryItemResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`SalaryItemResponse`**](../models/SalaryItemResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryItemApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryItemApi(client)

response = api.get_salary_item_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_salary_items()`

> **Get Salary Items**

### Method Signature

```python
def get_salary_items(
    self,
    page: int = None,
    size: int = None,
    include_default_type: bool = None,
    query: str = None,
) -> SalaryItemPageResponse: ...
```

### Parameters

| Name                   | Type   | Required | Description                |
| :--------------------- | :----- | :------: | :------------------------- |
| `page`                 | `int`  |    ❌    | Page number (default: `0`) |
| `size`                 | `int`  |    ❌    | Page size (default: `10`)  |
| `include_default_type` | `bool` |    ❌    | (default: `False`)         |
| `query`                | `str`  |    ❌    | ### Search Query           |

### Returns

[**`SalaryItemPageResponse`**](../models/SalaryItemPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryItemApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryItemApi(client)

response = api.get_salary_items(
    page=0, size=10, include_default_type=False, query="query_example"
)

# Access response data
print(response)
```

______________________________________________________________________
