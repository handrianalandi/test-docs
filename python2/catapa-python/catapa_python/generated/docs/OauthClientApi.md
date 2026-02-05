# OauthClientApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_o_auth_client_by_id()`](#get_o_auth_client_by_id) - Get OAuth Client by ID
- [`list_all_o_auth_clients()`](#list_all_o_auth_clients) - List All OAuth Clients

______________________________________________________________________

## `get_o_auth_client_by_id()`

> **Get OAuth Client by ID**

### Method Signature

```python
def get_o_auth_client_by_id(self, id: str) -> OAuthClientResponse: ...
```

### Parameters

| Name | Type  | Required | Description     |
| :--- | :---- | :------: | :-------------- |
| `id` | `str` |    ✅    | OAuth Client ID |

### Returns

[**`OAuthClientResponse`**](../models/OAuthClientResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |
| **404** | Not Found   |

### Example Usage

```python
from catapa import Catapa, OauthClientApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OauthClientApi(client)

response = api.get_o_auth_client_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `list_all_o_auth_clients()`

> **List All OAuth Clients**

### Method Signature

```python
def list_all_o_auth_clients(
    self, page: int = None, size: int = None
) -> OAuthClientPageResponse: ...
```

### Parameters

| Name   | Type  | Required | Description                |
| :----- | :---- | :------: | :------------------------- |
| `page` | `int` |    ❌    | Page number (default: `0`) |
| `size` | `int` |    ❌    | Page size (default: `10`)  |

### Returns

[**`OAuthClientPageResponse`**](../models/OAuthClientPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OauthClientApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OauthClientApi(client)

response = api.list_all_o_auth_clients(page=0, size=10)

# Access response data
print(response)
```

______________________________________________________________________
