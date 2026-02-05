# CompanyBankAccountApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_company_bank_accounts()`](#get_company_bank_accounts) - Get Company Bank Accounts

______________________________________________________________________

## `get_company_bank_accounts()`

> **Get Company Bank Accounts**

### Method Signature

```python
def get_company_bank_accounts(
    self, page: int = None, size: int = None, query: str = None
) -> CompanyBankAccountPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search query           |

### Returns

[**`CompanyBankAccountPageResponse`**](../models/CompanyBankAccountPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, CompanyBankAccountApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = CompanyBankAccountApi(client)

response = api.get_company_bank_accounts(
    page=0, size=10, query="id:eb919ed1-c3c1-4334-a626-b9178b8a98ae"
)

# Access response data
print(response)
```

______________________________________________________________________
