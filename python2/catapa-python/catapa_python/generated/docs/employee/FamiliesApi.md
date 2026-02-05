# FamiliesApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`approve_family_by_employee()`](#approve_family_by_employee) - Approve Families
- [`create_family_by_employee()`](#create_family_by_employee) - Create Family By Employee
- [`delete_family_by_employee()`](#delete_family_by_employee) - Delete Family
- [`get_families()`](#get_families) - Get Families
- [`get_family_by_employee()`](#get_family_by_employee) - List All Families
- [`get_job_experiences_by_employeeand_id()`](#get_job_experiences_by_employeeand_id) - Get Family
- [`reject_familiesby_employee()`](#reject_familiesby_employee) - Reject Families
- [`update_family_by_employee()`](#update_family_by_employee) - Update Family By Employee

______________________________________________________________________

## `approve_family_by_employee()`

> **Approve Families**

### Method Signature

```python
def approve_family_by_employee(
    self, id_request: List[IdRequest] = None
) -> BulkOperationResponse: ...
```

### Parameters

| Name         | Type                                        | Required | Description |
| :----------- | :------------------------------------------ | :------: | :---------- |
| `id_request` | [`List[IdRequest]`](../models/IdRequest.md) |    ❌    |             |

### Returns

[**`BulkOperationResponse`**](../models/BulkOperationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FamiliesApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FamiliesApi(client)

response = api.approve_family_by_employee(
    id_request=[
        {"id": "7eb20b1e-577b-45c0-adf4-c76ae17cdeae"},
        {"id": "6a4d1903-b453-4694-9806-65101f0aec64"},
    ]
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_family_by_employee()`

> **Create Family By Employee**

### Method Signature

```python
def create_family_by_employee(
    self, employee_id: str, family_approval_request: FamilyApprovalRequest = None
) -> FamilyApprovalListItemWithApprovalStatusResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `employee_id`             | `str`                                                         |    ✅    |             |
| `family_approval_request` | [`FamilyApprovalRequest`](../models/FamilyApprovalRequest.md) |    ❌    |             |

### Returns

[**`FamilyApprovalListItemWithApprovalStatusResponse`**](../models/FamilyApprovalListItemWithApprovalStatusResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FamiliesApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FamiliesApi(client)

response = api.create_family_by_employee(
    "employee_id_example",
    family_approval_request={
        "name": "John Doe",
        "gender": "MALE",
        "dateOfBirth": null,
        "identityCardNumber": null,
        "familyRelation": {"id": "1f29f1b0-a7e9-11e6-80f5-76304dec7eb7"},
        "placeOfBirth": null,
        "alive": true,
        "dateOfDeath": null,
        "maritalStatus": null,
        "marriageDate": null,
        "religion": null,
        "educationLevel": null,
        "job": null,
        "mobilePhone": "",
        "description": null,
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `delete_family_by_employee()`

> **Delete Family**

### Method Signature

```python
def delete_family_by_employee(self, employee_id: str, family_id: str) -> None: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |
| `family_id`   | `str` |    ✅    |             |

### Returns

`None`

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **404** | Not Found   |

### Example Usage

```python
from catapa import Catapa, FamiliesApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FamiliesApi(client)

api.delete_family_by_employee("employee_id_example", "family_id_example")
print("Success!")
```

______________________________________________________________________

## `get_families()`

> **Get Families**

### Method Signature

```python
def get_families(
    self, page: int = None, size: int = None, query: str = None
) -> FamilyHistoricalPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`FamilyHistoricalPageResponse`**](../models/FamilyHistoricalPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FamiliesApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FamiliesApi(client)

response = api.get_families(
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_family_by_employee()`

> **List All Families**

### Method Signature

```python
def get_family_by_employee(self, employee_id: str) -> FamilyApprovalPageResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |

### Returns

[**`FamilyApprovalPageResponse`**](../models/FamilyApprovalPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FamiliesApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FamiliesApi(client)

response = api.get_family_by_employee("employee_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_job_experiences_by_employeeand_id()`

> **Get Family**

### Method Signature

```python
def get_job_experiences_by_employeeand_id(
    self, tenant: str, employee_id: str, approval_id: str
) -> FamilyApprovalListItemWithApprovalStatusResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `tenant`      | `str` |    ✅    |             |
| `employee_id` | `str` |    ✅    |             |
| `approval_id` | `str` |    ✅    |             |

### Returns

[**`FamilyApprovalListItemWithApprovalStatusResponse`**](../models/FamilyApprovalListItemWithApprovalStatusResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FamiliesApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FamiliesApi(client)

response = api.get_job_experiences_by_employeeand_id(
    "tenant_example", "employee_id_example", "approval_id_example"
)

# Access response data
print(response)
```

______________________________________________________________________

## `reject_familiesby_employee()`

> **Reject Families**

### Method Signature

```python
def reject_familiesby_employee(
    self, reject_approval_request: List[RejectApprovalRequest] = None
) -> BulkOperationResponse: ...
```

### Parameters

| Name                      | Type                                                                | Required | Description |
| :------------------------ | :------------------------------------------------------------------ | :------: | :---------- |
| `reject_approval_request` | [`List[RejectApprovalRequest]`](../models/RejectApprovalRequest.md) |    ❌    |             |

### Returns

[**`BulkOperationResponse`**](../models/BulkOperationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FamiliesApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FamiliesApi(client)

response = api.reject_familiesby_employee(
    reject_approval_request=[
        {"id": "59a7fdc8-888c-437b-afec-44ffa490b160", "reason": "reason"},
        {"id": "032f6fd4-67d5-423f-9522-283f79391019", "reason": "reason"},
    ]
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_family_by_employee()`

> **Update Family By Employee**

### Method Signature

```python
def update_family_by_employee(
    self,
    tenant: str,
    employee_id: str,
    approval_id: str,
    family_approval_request: FamilyApprovalRequest = None,
) -> FamilyApprovalListItemWithApprovalStatusResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `tenant`                  | `str`                                                         |    ✅    |             |
| `employee_id`             | `str`                                                         |    ✅    |             |
| `approval_id`             | `str`                                                         |    ✅    |             |
| `family_approval_request` | [`FamilyApprovalRequest`](../models/FamilyApprovalRequest.md) |    ❌    |             |

### Returns

[**`FamilyApprovalListItemWithApprovalStatusResponse`**](../models/FamilyApprovalListItemWithApprovalStatusResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FamiliesApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FamiliesApi(client)

response = api.update_family_by_employee(
    "tenant_example",
    "employee_id_example",
    "approval_id_example",
    family_approval_request={
        "name": "M. Tetes Yes",
        "gender": "MALE",
        "dateOfBirth": null,
        "identityCardNumber": null,
        "familyRelation": {"id": "1f29f476-a7e9-11e6-80f5-76304dec7eb7"},
        "placeOfBirth": null,
        "alive": true,
        "dateOfDeath": null,
        "maritalStatus": null,
        "marriageDate": null,
        "religion": null,
        "educationLevel": null,
        "job": null,
        "mobilePhone": "",
        "description": null,
    },
)

# Access response data
print(response)
```

______________________________________________________________________
