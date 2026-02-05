# PayslipApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_or_update_payslip_layout()`](#create_or_update_payslip_layout) - Create or Update Payslip Layout
- [`create_payslip_additional_note()`](#create_payslip_additional_note) - Create Payslip Additional Note
- [`delete_payslip_layout_by_id()`](#delete_payslip_layout_by_id) - Delete Payslip Layout By Id
- [`download_payslip()`](#download_payslip) - Download Payslip
- [`get_payslip_additional_notes()`](#get_payslip_additional_notes) - Get Payslip Additional Notes
- [`get_payslip_layout_by_id()`](#get_payslip_layout_by_id) - Get Payslip Layout By Id
- [`get_payslip_layouts()`](#get_payslip_layouts) - Get Payslip Layouts
- [`update_payslip_additional_note_by_id()`](#update_payslip_additional_note_by_id) - Update Payslip Additional Note by Id

______________________________________________________________________

## `create_or_update_payslip_layout()`

> **Create or Update Payslip Layout**

### Method Signature

```python
def create_or_update_payslip_layout(
    self, payslip_layout_request: PayslipLayoutRequest = None
) -> PayslipLayoutResponse: ...
```

### Parameters

| Name                     | Type                                                        | Required | Description |
| :----------------------- | :---------------------------------------------------------- | :------: | :---------- |
| `payslip_layout_request` | [`PayslipLayoutRequest`](../models/PayslipLayoutRequest.md) |    ❌    |             |

### Returns

[**`PayslipLayoutResponse`**](../models/PayslipLayoutResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayslipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayslipApi(client)

response = api.create_or_update_payslip_layout(
    payslip_layout_request={
        "html": '<!DOCTYPE html><html lang="en" xmlns:th="http://www.thymeleaf.org"></html>',
        "section": "MASTER",
        "effectiveDate": "2020-01-01",
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_payslip_additional_note()`

> **Create Payslip Additional Note**

### Method Signature

```python
def create_payslip_additional_note(
    self, payslip_additional_note_request: PayslipAdditionalNoteRequest = None
) -> PayslipAdditionalNoteResponse: ...
```

### Parameters

| Name                              | Type                                                                        | Required | Description |
| :-------------------------------- | :-------------------------------------------------------------------------- | :------: | :---------- |
| `payslip_additional_note_request` | [`PayslipAdditionalNoteRequest`](../models/PayslipAdditionalNoteRequest.md) |    ❌    |             |

### Returns

[**`PayslipAdditionalNoteResponse`**](../models/PayslipAdditionalNoteResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayslipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayslipApi(client)

response = api.create_payslip_additional_note(
    payslip_additional_note_request={
        "paymentDate": "2022-01-15",
        "note": "This is note",
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `delete_payslip_layout_by_id()`

> **Delete Payslip Layout By Id**

### Method Signature

```python
def delete_payslip_layout_by_id(self, tenant: str, id: str) -> object: ...
```

### Parameters

| Name     | Type  | Required | Description |
| :------- | :---- | :------: | :---------- |
| `tenant` | `str` |    ✅    |             |
| `id`     | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayslipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayslipApi(client)

result = api.delete_payslip_layout_by_id("tenant_example", "id_example")
print(result)
```

______________________________________________________________________

## `download_payslip()`

> **Download Payslip**

### Method Signature

```python
def download_payslip(
    self, id: str, payslip_download_request: PayslipDownloadRequest = None
) -> object: ...
```

### Parameters

| Name                       | Type                                                            | Required | Description |
| :------------------------- | :-------------------------------------------------------------- | :------: | :---------- |
| `id`                       | `str`                                                           |    ✅    |             |
| `payslip_download_request` | [`PayslipDownloadRequest`](../models/PayslipDownloadRequest.md) |    ❌    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayslipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayslipApi(client)

result = api.download_payslip(
    "id_example",
    payslip_download_request={"paymentDate": "2020-01-25", "type": "SALARY"},
)
print(result)
```

______________________________________________________________________

## `get_payslip_additional_notes()`

> **Get Payslip Additional Notes**

### Search Query

| Supported Keys | Supported Operators | Notes          |
| -------------- | ------------------- | -------------- |
| paymentDate    | :                   | Equal operator |

### Method Signature

```python
def get_payslip_additional_notes(self) -> PayslipAdditionalNotePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`PayslipAdditionalNotePageResponse`**](../models/PayslipAdditionalNotePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayslipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayslipApi(client)

response = api.get_payslip_additional_notes()

# Access response data
print(response)
```

______________________________________________________________________

## `get_payslip_layout_by_id()`

> **Get Payslip Layout By Id**

### Method Signature

```python
def get_payslip_layout_by_id(self, id: str) -> PayslipLayoutResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`PayslipLayoutResponse`**](../models/PayslipLayoutResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayslipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayslipApi(client)

response = api.get_payslip_layout_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_payslip_layouts()`

> **Get Payslip Layouts**

### Search Query

| Supported Keys | Supported Operators | Notes          |
| -------------- | ------------------- | -------------- |
| section        | :                   | Equal operator |

### Method Signature

```python
def get_payslip_layouts(self) -> PayslipLayoutPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`PayslipLayoutPageResponse`**](../models/PayslipLayoutPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayslipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayslipApi(client)

response = api.get_payslip_layouts()

# Access response data
print(response)
```

______________________________________________________________________

## `update_payslip_additional_note_by_id()`

> **Update Payslip Additional Note by Id**

### Method Signature

```python
def update_payslip_additional_note_by_id(
    self, id: str, payslip_additional_note_request: PayslipAdditionalNoteRequest = None
) -> PayslipAdditionalNoteResponse: ...
```

### Parameters

| Name                              | Type                                                                        | Required | Description |
| :-------------------------------- | :-------------------------------------------------------------------------- | :------: | :---------- |
| `id`                              | `str`                                                                       |    ✅    |             |
| `payslip_additional_note_request` | [`PayslipAdditionalNoteRequest`](../models/PayslipAdditionalNoteRequest.md) |    ❌    |             |

### Returns

[**`PayslipAdditionalNoteResponse`**](../models/PayslipAdditionalNoteResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayslipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayslipApi(client)

response = api.update_payslip_additional_note_by_id(
    "id_example",
    payslip_additional_note_request={
        "paymentDate": "2022-01-15",
        "note": "This is note",
    },
)

# Access response data
print(response)
```

______________________________________________________________________
