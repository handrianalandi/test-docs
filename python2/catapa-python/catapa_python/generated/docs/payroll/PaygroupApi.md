# PaygroupApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_paygroups()`](#get_paygroups) - Get Paygroups

______________________________________________________________________

## `get_paygroups()`

> **Get Paygroups**

### Search Query

| Supported Keys  | Supported Operators | Notes   |
| --------------- | ------------------- | ------- |
| code            | :                   | Equal   |
| defaultPaygroup | :                   | boolean |

### Method Signature

```python
def get_paygroups(self) -> PaygroupPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`PaygroupPageResponse`**](../models/PaygroupPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PaygroupApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PaygroupApi(client)

response = api.get_paygroups()

# Access response data
print(response)
```

______________________________________________________________________
