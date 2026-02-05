# PayrollProcessSnapshotApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`find_payroll_process_snapshots()`](#find_payroll_process_snapshots) - Find all payroll process snapshots

______________________________________________________________________

## `find_payroll_process_snapshots()`

> **Find all payroll process snapshots**

Retrieves all payroll process snapshots

### Method Signature

```python
def find_payroll_process_snapshots(
    self, page: int = None, size: int = None, query: str = None
) -> PayrollProcessSnapshotPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search query           |

### Returns

[**`PayrollProcessSnapshotPageResponse`**](../models/PayrollProcessSnapshotPageResponse.md)

### Response Codes

| Status  | Description                            |
| :------ | :------------------------------------- |
| **200** | Page of PayrollProcessSnapshotResponse |
| **400** | Bad Request                            |

### Example Usage

```python
from catapa import Catapa, PayrollProcessSnapshotApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayrollProcessSnapshotApi(client)

response = api.find_payroll_process_snapshots(page=0, size=10, query="query_example")

# Access response data
print(response)
```

______________________________________________________________________
