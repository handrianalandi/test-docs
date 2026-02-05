# TaxMembershipHistoryApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_tax_membership_history()`](#get_tax_membership_history) - Get Tax Membership History
- [`get_tax_membership_history_by_id()`](#get_tax_membership_history_by_id) - Get Tax Membership History by ID
- [`update_tax_membership_history_tax_subject()`](#update_tax_membership_history_tax_subject) - Update Tax Membership History Tax Subject

______________________________________________________________________

## `get_tax_membership_history()`

> **Get Tax Membership History**

Retrieve tax membership history for a specific employee for a given year and month

### Method Signature

```python
def get_tax_membership_history(
    self, employee_id: str, year: int, month: int = None
) -> TaxMembershipHistoryResponse: ...
```

### Parameters

| Name          | Type  | Required | Description                                                                               |
| :------------ | :---- | :------: | :---------------------------------------------------------------------------------------- |
| `employee_id` | `str` |    ✅    | Unique identifier for the employee                                                        |
| `year`        | `int` |    ✅    | Year for which to retrieve tax membership history                                         |
| `month`       | `int` |    ❌    | Month for which to retrieve tax membership history (defaults to December) (default: `12`) |

### Returns

[**`TaxMembershipHistoryResponse`**](../models/TaxMembershipHistoryResponse.md)

### Response Codes

| Status  | Description                                   |
| :------ | :-------------------------------------------- |
| **200** | Tax membership history retrieved successfully |
| **400** | Bad Request - Invalid request parameters      |
| **404** | Employee or tax membership history not found  |

### Example Usage

```python
from catapa import Catapa, TaxMembershipHistoryApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxMembershipHistoryApi(client)

response = api.get_tax_membership_history("employee_id_example", 56, month=12)

# Access response data
print(response)
```

______________________________________________________________________

## `get_tax_membership_history_by_id()`

> **Get Tax Membership History by ID**

Retrieve a specific tax membership history record by its unique identifier

### Method Signature

```python
def get_tax_membership_history_by_id(self, id: str) -> TaxMembershipHistoryResponse: ...
```

### Parameters

| Name | Type  | Required | Description                                             |
| :--- | :---- | :------: | :------------------------------------------------------ |
| `id` | `str` |    ✅    | Unique identifier for the tax membership history record |

### Returns

[**`TaxMembershipHistoryResponse`**](../models/TaxMembershipHistoryResponse.md)

### Response Codes

| Status  | Description                                   |
| :------ | :-------------------------------------------- |
| **200** | Tax membership history retrieved successfully |
| **400** | Bad Request - Invalid ID format               |
| **404** | Tax membership history not found              |

### Example Usage

```python
from catapa import Catapa, TaxMembershipHistoryApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxMembershipHistoryApi(client)

response = api.get_tax_membership_history_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `update_tax_membership_history_tax_subject()`

> **Update Tax Membership History Tax Subject**

Update tax subject information for a specific tax membership history record

### Method Signature

```python
def update_tax_membership_history_tax_subject(
    self, id: str, tax_membership_tax_subject_request: TaxMembershipTaxSubjectRequest
) -> TaxMembershipHistoryResponse: ...
```

### Parameters

| Name                                 | Type                                                                            | Required | Description                                              |
| :----------------------------------- | :------------------------------------------------------------------------------ | :------: | :------------------------------------------------------- |
| `id`                                 | `str`                                                                           |    ✅    | Unique identifier for the tax membership history record  |
| `tax_membership_tax_subject_request` | [`TaxMembershipTaxSubjectRequest`](../models/TaxMembershipTaxSubjectRequest.md) |    ✅    | Tax subject information to update for the history record |

### Returns

[**`TaxMembershipHistoryResponse`**](../models/TaxMembershipHistoryResponse.md)

### Response Codes

| Status  | Description                                             |
| :------ | :------------------------------------------------------ |
| **200** | Tax membership history tax subject updated successfully |
| **400** | Bad Request - Invalid input data                        |
| **404** | Tax membership history not found                        |
| **422** | Unprocessable Entity - Business logic validation failed |

### Example Usage

```python
from catapa import Catapa, TaxMembershipHistoryApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxMembershipHistoryApi(client)

response = api.update_tax_membership_history_tax_subject(
    "id_example",
    {
        "npwpAddress": "Jakarta Selatan, DKI Jakarta",
        "npwpNumber": "123456789012345",
        "idTku": "TKU123456",
        "tin": "TIN123456",
        "kppId": "kpp-jakarta-selatan",
        "ptkpCategoryId": "ptkp-tk-1",
        "taxDependents": [
            {
                "id": "dep-1",
                "name": "Jane Doe",
                "ptkpRelationType": "SPOUSE",
                "dateOfBirth": "1990-05-15T00:00:00Z",
                "job": "Teacher",
            },
            {
                "id": "dep-2",
                "name": "John Doe Jr",
                "ptkpRelationType": "CHILD",
                "dateOfBirth": "2015-03-20T00:00:00Z",
                "job": "Student",
            },
        ],
    },
)

# Access response data
print(response)
```

______________________________________________________________________
