# ContactInformationApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_contact_information()`](#get_contact_information) - Get Contact Information
- [`get_historical_contact_information()`](#get_historical_contact_information) - Get Historical Contact Information
- [`update_contact_information()`](#update_contact_information) - Update Contact Information

______________________________________________________________________

## `get_contact_information()`

> **Get Contact Information**

### Method Signature

```python
def get_contact_information(self, employee_id: str) -> ContactInformationResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |

### Returns

[**`ContactInformationResponse`**](../models/ContactInformationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, ContactInformationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = ContactInformationApi(client)

response = api.get_contact_information("employee_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_historical_contact_information()`

> **Get Historical Contact Information**

### Method Signature

```python
def get_historical_contact_information(
    self, page: int = None, size: int = None, query: str = None
) -> ContactInformationPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`ContactInformationPageResponse`**](../models/ContactInformationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, ContactInformationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = ContactInformationApi(client)

response = api.get_historical_contact_information(
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;0100902f-5d8f-4de4-8fae-5ced86831dd1",
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_contact_information()`

> **Update Contact Information**

### Method Signature

```python
def update_contact_information(
    self,
    employee_id: str,
    contact_information_request: ContactInformationRequest = None,
) -> ContactInformationResponse: ...
```

### Parameters

| Name                          | Type                                                                  | Required | Description |
| :---------------------------- | :-------------------------------------------------------------------- | :------: | :---------- |
| `employee_id`                 | `str`                                                                 |    ✅    |             |
| `contact_information_request` | [`ContactInformationRequest`](../models/ContactInformationRequest.md) |    ❌    |             |

### Returns

[**`ContactInformationResponse`**](../models/ContactInformationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, ContactInformationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = ContactInformationApi(client)

response = api.update_contact_information(
    "employee_id_example",
    contact_information_request={
        "email": "email123@gmail.com",
        "mobilePhone": "+6281234567890",
        "originalAddress": null,
    },
)

# Access response data
print(response)
```

______________________________________________________________________
