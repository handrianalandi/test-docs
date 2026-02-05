# TaxMembershipApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_tax_membership()`](#get_tax_membership) - Get Tax Membership
- [`update_tax_membership()`](#update_tax_membership) - Update Tax Membership
- [`update_tax_membership_tax_subject()`](#update_tax_membership_tax_subject) - Update Tax Membership Tax Subject

______________________________________________________________________

## `get_tax_membership()`

> **Get Tax Membership**

Retrieve the current tax membership information for a specific employee

### Method Signature

```python
def get_tax_membership(self, employee_id: str) -> TaxMembershipResponse: ...
```

### Parameters

| Name          | Type  | Required | Description                        |
| :------------ | :---- | :------: | :--------------------------------- |
| `employee_id` | `str` |    ✅    | Unique identifier for the employee |

### Returns

[**`TaxMembershipResponse`**](../models/TaxMembershipResponse.md)

### Response Codes

| Status  | Description                              |
| :------ | :--------------------------------------- |
| **200** | Tax membership retrieved successfully    |
| **400** | Bad Request - Invalid request parameters |
| **404** | Employee not found                       |

### Example Usage

```python
from catapa import Catapa, TaxMembershipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxMembershipApi(client)

response = api.get_tax_membership("employee_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `update_tax_membership()`

> **Update Tax Membership**

Update the tax membership information for a specific employee

### Method Signature

```python
def update_tax_membership(
    self, employee_id: str, tax_membership_response: TaxMembershipResponse = None
) -> TaxMembershipResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description                        |
| :------------------------ | :------------------------------------------------------------ | :------: | :--------------------------------- |
| `employee_id`             | `str`                                                         |    ✅    | Unique identifier for the employee |
| `tax_membership_response` | [`TaxMembershipResponse`](../models/TaxMembershipResponse.md) |    ❌    |                                    |

### Returns

[**`TaxMembershipResponse`**](../models/TaxMembershipResponse.md)

### Response Codes

| Status  | Description                         |
| :------ | :---------------------------------- |
| **200** | Tax membership updated successfully |
| **400** | Bad Request - Invalid request data  |
| **404** | Employee not found                  |

### Example Usage

```python
from catapa import Catapa, TaxMembershipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxMembershipApi(client)

response = api.update_tax_membership(
    "employee_id_example",
    tax_membership_response={
        "id": "string",
        "kppId": "string",
        "linkToPayroll": true,
        "membershipEndPeriod": {"month": 1, "year": 1970},
        "membershipStartPeriod": {"month": 1, "year": 1970},
        "method": "GROSS",
        "moreThanOneEmployer": true,
        "npwpAddress": "Jakarta Selatan, DKI Jakarta",
        "npwpNumber": "123456789012345",
        "tin": "TIN123456",
        "idTku": "TKU1234567890",
        "previousNetIncome": 0,
        "previousPaidPph": 0,
        "ptkpCategoryId": "string",
        "taxObject": "PERMANENT",
        "foreignTaxObject": true,
        "useRecommendedPeriod": true,
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_tax_membership_tax_subject()`

> **Update Tax Membership Tax Subject**

Update tax subject information for an employee's tax membership

### Method Signature

```python
def update_tax_membership_tax_subject(
    self,
    employee_id: str,
    tax_membership_tax_subject_request: TaxMembershipTaxSubjectRequest,
) -> TaxMembershipResponse: ...
```

### Parameters

| Name                                 | Type                                                                            | Required | Description                        |
| :----------------------------------- | :------------------------------------------------------------------------------ | :------: | :--------------------------------- |
| `employee_id`                        | `str`                                                                           |    ✅    | Unique identifier for the employee |
| `tax_membership_tax_subject_request` | [`TaxMembershipTaxSubjectRequest`](../models/TaxMembershipTaxSubjectRequest.md) |    ✅    | Tax subject information to update  |

### Returns

[**`TaxMembershipResponse`**](../models/TaxMembershipResponse.md)

### Response Codes

| Status  | Description                                     |
| :------ | :---------------------------------------------- |
| **200** | Tax membership tax subject updated successfully |
| **400** | Bad Request - Invalid input data                |
| **404** | Employee not found                              |

### Example Usage

```python
from catapa import Catapa, TaxMembershipApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = TaxMembershipApi(client)

response = api.update_tax_membership_tax_subject(
    "employee_id_example",
    {
        "npwpAddress": "Jakarta Selatan, DKI Jakarta",
        "npwpNumber": "123456789012345",
        "idTku": "TKU123456",
        "tin": "TIN123456",
        "kppId": "kpp-jakarta-selatan",
        "ptkpCategoryId": "ptkp-tk-0",
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
