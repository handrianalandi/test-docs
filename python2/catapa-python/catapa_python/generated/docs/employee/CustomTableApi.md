# CustomTableApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`find_custom_table_by_id()`](#find_custom_table_by_id) - Find Custom Table by Table ID
- [`get_custom_tables()`](#get_custom_tables) - Get Custom Tables

______________________________________________________________________

## `find_custom_table_by_id()`

> **Find Custom Table by Table ID**

### Method Signature

```python
def find_custom_table_by_id(self, table_id: str) -> CustomTableResponse: ...
```

### Parameters

| Name       | Type  | Required | Description |
| :--------- | :---- | :------: | :---------- |
| `table_id` | `str` |    ✅    |             |

### Returns

[**`CustomTableResponse`**](../models/CustomTableResponse.md)

### Response Codes

| Status  | Description            |
| :------ | :--------------------- |
| **200** | Successful operation   |
| **400** | Bad Request            |
| **404** | Custom table not found |

### Example Usage

```python
from catapa import Catapa, CustomTableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = CustomTableApi(client)

response = api.find_custom_table_by_id("table_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_custom_tables()`

> **Get Custom Tables**

### Method Signature

```python
def get_custom_tables(
    self, page: int = None, size: int = None, query: str = None
) -> CustomTablePageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`CustomTablePageResponse`**](../models/CustomTablePageResponse.md)

### Response Codes

| Status  | Description          |
| :------ | :------------------- |
| **200** | Successful operation |
| **400** | Bad Request          |

### Example Usage

```python
from catapa import Catapa, CustomTableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = CustomTableApi(client)

response = api.get_custom_tables(
    page=0, size=10, query="id:a31aa166-70be-4303-81e4-5ada93b5213a"
)

# Access response data
print(response)
```

______________________________________________________________________
