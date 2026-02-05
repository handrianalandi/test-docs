# CustomTableEntryApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_entry()`](#create_entry) - Create a new entry in a custom table
- [`find_all_entries()`](#find_all_entries) - Retrieve all entries for a custom table, with response structure varying based on the custom table columns
- [`update_entry()`](#update_entry) - Update an entry in a custom table

______________________________________________________________________

## `create_entry()`

> **Create a new entry in a custom table**

Creates a new entry in a custom table with the provided details

### Method Signature

```python
def create_entry(
    self, table_id: str, request_body: Dict[str, object]
) -> Dict[str, object]: ...
```

### Parameters

| Name           | Type                                       | Required | Description |
| :------------- | :----------------------------------------- | :------: | :---------- |
| `table_id`     | `str`                                      |    ✅    |             |
| `request_body` | [`Dict[str, object]`](../models/object.md) |    ✅    |             |

### Returns

[**`Dict[str, object]`**](../models/object.md)

### Response Codes

| Status  | Description                |
| :------ | :------------------------- |
| **201** | Entry created successfully |
| **400** | Bad Request                |

### Example Usage

```python
from catapa import Catapa, CustomTableEntryApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = CustomTableEntryApi(client)

result = api.create_entry(
    "table_id_example",
    {
        "certificationName": "AWS Certified Developer",
        "issueDate": "2025-03-01",
        "employeeId": "emp-002",
    },
)
print(result)
```

______________________________________________________________________

## `find_all_entries()`

> **Retrieve all entries for a custom table, with response structure varying based on the custom table columns**

### Method Signature

```python
def find_all_entries(
    self, table_id: str, query: str = None, page: int = None, size: int = None
) -> CustomTableEntryPageResponse: ...
```

### Parameters

| Name       | Type  | Required | Description                                                                        |
| :--------- | :---- | :------: | :--------------------------------------------------------------------------------- |
| `table_id` | `str` |    ✅    |                                                                                    |
| `query`    | `str` |    ❌    | Filter entries based on specific criteria, depending on the custom table's schema. |
| `page`     | `int` |    ❌    | Page number (default: `0`)                                                         |
| `size`     | `int` |    ❌    | Page size (default: `10`)                                                          |

### Returns

[**`CustomTableEntryPageResponse`**](../models/CustomTableEntryPageResponse.md)

### Response Codes

| Status  | Description          |
| :------ | :------------------- |
| **200** | Successful operation |
| **400** | Bad Request          |

### Example Usage

```python
from catapa import Catapa, CustomTableEntryApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = CustomTableEntryApi(client)

response = api.find_all_entries(
    "table_id_example", query="query_example", page=0, size=10
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_entry()`

> **Update an entry in a custom table**

Updates an existing entry in a custom table with the provided details

### Method Signature

```python
def update_entry(
    self, table_id: str, entry_id: str, request_body: Dict[str, object]
) -> Dict[str, object]: ...
```

### Parameters

| Name           | Type                                       | Required | Description |
| :------------- | :----------------------------------------- | :------: | :---------- |
| `table_id`     | `str`                                      |    ✅    |             |
| `entry_id`     | `str`                                      |    ✅    |             |
| `request_body` | [`Dict[str, object]`](../models/object.md) |    ✅    |             |

### Returns

[**`Dict[str, object]`**](../models/object.md)

### Response Codes

| Status  | Description                |
| :------ | :------------------------- |
| **200** | Entry updated successfully |
| **400** | Bad Request                |
| **404** | Entry not found            |

### Example Usage

```python
from catapa import Catapa, CustomTableEntryApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = CustomTableEntryApi(client)

result = api.update_entry(
    "table_id_example",
    "entry_id_example",
    {
        "certificationName": "AWS Certified Solutions Architect - Updated",
        "issueDate": "2025-01-15",
        "employeeId": "emp-001",
    },
)
print(result)
```

______________________________________________________________________
