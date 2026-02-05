# RoleApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_role_authorities()`](#get_role_authorities) - Get Role Authorities
- [`get_role_by_id()`](#get_role_by_id) - Get Role by ID
- [`get_role_permissions()`](#get_role_permissions) - Get Role Permissions
- [`get_roles()`](#get_roles) - Get Roles

______________________________________________________________________

## `get_role_authorities()`

> **Get Role Authorities**

### Method Signature

```python
def get_role_authorities(
    self, id: str, page: int = None, size: int = None
) -> RoleAuthorityPageResponse: ...
```

### Parameters

| Name   | Type  | Required | Description                |
| :----- | :---- | :------: | :------------------------- |
| `id`   | `str` |    ✅    | Role ID                    |
| `page` | `int` |    ❌    | Page number (default: `0`) |
| `size` | `int` |    ❌    | Page size (default: `10`)  |

### Returns

[**`RoleAuthorityPageResponse`**](../models/RoleAuthorityPageResponse.md)

### Response Codes

| Status  | Description    |
| :------ | :------------- |
| **200** | OK             |
| **400** | Bad Request    |
| **404** | Role not found |

### Example Usage

```python
from catapa import Catapa, RoleApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = RoleApi(client)

response = api.get_role_authorities("id_example", page=0, size=10)

# Access response data
print(response)
```

______________________________________________________________________

## `get_role_by_id()`

> **Get Role by ID**

### Method Signature

```python
def get_role_by_id(self, id: str) -> RoleDetailResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    | Role ID     |

### Returns

[**`RoleDetailResponse`**](../models/RoleDetailResponse.md)

### Response Codes

| Status  | Description    |
| :------ | :------------- |
| **200** | OK             |
| **400** | Bad Request    |
| **404** | Role not found |

### Example Usage

```python
from catapa import Catapa, RoleApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = RoleApi(client)

response = api.get_role_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_role_permissions()`

> **Get Role Permissions**

### Method Signature

```python
def get_role_permissions(
    self, id: str, expanded: bool = None
) -> RolePermissionPageResponse: ...
```

### Parameters

| Name       | Type   | Required | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| :--------- | :----- | :------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `id`       | `str`  |    ✅    | Role ID                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| `expanded` | `bool` |    ❌    | Controls how permissions are returned: - \`false\` (default): Returns raw permissions as stored in the database without any transformation. Permissions with dataId=\&quot;ALL\&quot; will be returned as-is. - \`true\`: Returns expanded permissions where: 1. Roles with ADMIN type will get all available dataId permissions 2. Any permission with dataId=\&quot;ALL\&quot; will be expanded to show all available dataId permissions for the same dataType Raw permissions show the exact database records, while expanded permissions show the effective access granted to the role after applying permission inheritance rules. (default: `False`) |

### Returns

[**`RolePermissionPageResponse`**](../models/RolePermissionPageResponse.md)

### Response Codes

| Status  | Description    |
| :------ | :------------- |
| **200** | OK             |
| **400** | Bad Request    |
| **404** | Role not found |

### Example Usage

```python
from catapa import Catapa, RoleApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = RoleApi(client)

response = api.get_role_permissions("id_example", expanded=False)

# Access response data
print(response)
```

______________________________________________________________________

## `get_roles()`

> **Get Roles**

### Method Signature

```python
def get_roles(
    self, page: int = None, size: int = None, query: str = None
) -> RolePageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search query           |

### Returns

[**`RolePageResponse`**](../models/RolePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, RoleApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = RoleApi(client)

response = api.get_roles(page=0, size=10, query="name:admin")

# Access response data
print(response)
```

______________________________________________________________________
