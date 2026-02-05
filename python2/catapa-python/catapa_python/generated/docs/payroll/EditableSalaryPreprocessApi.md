# EditableSalaryPreprocessApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`preprocess_editable_salary()`](#preprocess_editable_salary) - Preprocess editable salary

______________________________________________________________________

## `preprocess_editable_salary()`

> **Preprocess editable salary**

Preprocess salary editor data for up to 50 items.

### Method Signature

```python
def preprocess_editable_salary(
    self, editable_salary_preprocess_request: List[EditableSalaryPreprocessRequest]
) -> EditableSalaryPreprocessResponse: ...
```

### Parameters

| Name                                 | Type                                                                                    | Required | Description |
| :----------------------------------- | :-------------------------------------------------------------------------------------- | :------: | :---------- |
| `editable_salary_preprocess_request` | [`List[EditableSalaryPreprocessRequest]`](../models/EditableSalaryPreprocessRequest.md) |    ✅    |             |

### Returns

[**`EditableSalaryPreprocessResponse`**](../models/EditableSalaryPreprocessResponse.md)

### Response Codes

| Status  | Description                                   |
| :------ | :-------------------------------------------- |
| **200** | Batch response for editable salary preprocess |
| **400** | Bad Request                                   |

### Example Usage

```python
from catapa import Catapa, EditableSalaryPreprocessApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EditableSalaryPreprocessApi(client)

response = api.preprocess_editable_salary(
    [openapi_client.EditableSalaryPreprocessRequest()]
)

# Access response data
print(response)
```

______________________________________________________________________
