# UserApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_current_user()`](#get_current_user) - Get Current User
- [`get_users()`](#get_users) - Get Users

______________________________________________________________________

## `get_current_user()`

> **Get Current User**

### Method Signature

```python
def get_current_user(self) -> UserAndRoleResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`UserAndRoleResponse`**](../models/UserAndRoleResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, UserApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = UserApi(client)

response = api.get_current_user()

# Access response data
print(response)
```

______________________________________________________________________

## `get_users()`

> **Get Users**

### Method Signature

```python
def get_users(
    self, page: int = None, size: int = None, query: str = None
) -> UserPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`UserPageResponse`**](../models/UserPageResponse.md)

### Response Codes

| Status  | Description          |
| :------ | :------------------- |
| **200** | Successful operation |
| **400** | Bad Request          |

### Example Usage

```python
from catapa import Catapa, UserApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = UserApi(client)

response = api.get_users(page=0, size=10, query="usernameIn:pros;senior;gamer")

# Access response data
print(response)
```

______________________________________________________________________
