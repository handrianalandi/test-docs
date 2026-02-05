# IdentityCardsApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_employee_identity_cards()`](#create_employee_identity_cards) - Create Employee Identity Cards
- [`delete_employee_identity_cards()`](#delete_employee_identity_cards) - Delete Employee Identity Cards
- [`get_employee_identity_cards()`](#get_employee_identity_cards) - Get Employee Identity Cards
- [`update_employee_identity_cards()`](#update_employee_identity_cards) - Update Employee Identity Cards

______________________________________________________________________

## `create_employee_identity_cards()`

> **Create Employee Identity Cards**

### Method Signature

```python
def create_employee_identity_cards(
    self,
    employee_id: str,
    employee_identity_card_request: EmployeeIdentityCardRequest = None,
) -> EmployeeIdentityCardResponse: ...
```

### Parameters

| Name                             | Type                                                                      | Required | Description |
| :------------------------------- | :------------------------------------------------------------------------ | :------: | :---------- |
| `employee_id`                    | `str`                                                                     |    ✅    |             |
| `employee_identity_card_request` | [`EmployeeIdentityCardRequest`](../models/EmployeeIdentityCardRequest.md) |    ❌    |             |

### Returns

[**`EmployeeIdentityCardResponse`**](../models/EmployeeIdentityCardResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, IdentityCardsApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = IdentityCardsApi(client)

response = api.create_employee_identity_cards(
    "employee_id_example",
    employee_identity_card_request={
        "identityCardId": "73dabc7c-a7da-11e6-80f5-76304dec7eb7",
        "identityCardNumber": "1234567890",
        "expiredDate": null,
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `delete_employee_identity_cards()`

> **Delete Employee Identity Cards**

### Method Signature

```python
def delete_employee_identity_cards(
    self, employee_id: str, employee_identity_card_id: str
) -> object: ...
```

### Parameters

| Name                        | Type  | Required | Description |
| :-------------------------- | :---- | :------: | :---------- |
| `employee_id`               | `str` |    ✅    |             |
| `employee_identity_card_id` | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, IdentityCardsApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = IdentityCardsApi(client)

result = api.delete_employee_identity_cards(
    "employee_id_example", "employee_identity_card_id_example"
)
print(result)
```

______________________________________________________________________

## `get_employee_identity_cards()`

> **Get Employee Identity Cards**

### Method Signature

```python
def get_employee_identity_cards(
    self, employee_id: str, query: str = None
) -> EmployeeIdentityCardPageResponse: ...
```

### Parameters

| Name          | Type  | Required | Description      |
| :------------ | :---- | :------: | :--------------- |
| `employee_id` | `str` |    ✅    |                  |
| `query`       | `str` |    ❌    | ### Search Query |

### Returns

[**`EmployeeIdentityCardPageResponse`**](../models/EmployeeIdentityCardPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, IdentityCardsApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = IdentityCardsApi(client)

response = api.get_employee_identity_cards(
    "employee_id_example", query="effectiveDate<2025-01-31"
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_employee_identity_cards()`

> **Update Employee Identity Cards**

### Method Signature

```python
def update_employee_identity_cards(
    self,
    employee_id: str,
    employee_identity_card_id: str,
    employee_identity_card_request: EmployeeIdentityCardRequest = None,
) -> EmployeeIdentityCardResponse: ...
```

### Parameters

| Name                             | Type                                                                      | Required | Description |
| :------------------------------- | :------------------------------------------------------------------------ | :------: | :---------- |
| `employee_id`                    | `str`                                                                     |    ✅    |             |
| `employee_identity_card_id`      | `str`                                                                     |    ✅    |             |
| `employee_identity_card_request` | [`EmployeeIdentityCardRequest`](../models/EmployeeIdentityCardRequest.md) |    ❌    |             |

### Returns

[**`EmployeeIdentityCardResponse`**](../models/EmployeeIdentityCardResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, IdentityCardsApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = IdentityCardsApi(client)

response = api.update_employee_identity_cards(
    "employee_id_example",
    "employee_identity_card_id_example",
    employee_identity_card_request={
        "identityCardId": "73da9d40-a7da-11e6-80f5-76304dec7eb7",
        "identityCardNumber": "5432154321",
        "expiredDate": null,
    },
)

# Access response data
print(response)
```

______________________________________________________________________
