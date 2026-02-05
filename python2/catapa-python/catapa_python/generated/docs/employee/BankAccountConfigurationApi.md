# BankAccountConfigurationApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`approve_approval()`](#approve_approval) - Update Bank Account Configuration
- [`cancel_approval()`](#cancel_approval) - Cancel Bank Account Configuration
- [`create_bank_account_configuration_approval()`](#create_bank_account_configuration_approval) - Create Bank Account Configuration Approval
- [`get_bank_account_configuration_by_id()`](#get_bank_account_configuration_by_id) - Get Bank Account Configuration by Id
- [`get_bank_account_configurations()`](#get_bank_account_configurations) - Get all bank account configurations
- [`reject_approval()`](#reject_approval) - Reject Bank Account Configuration
- [`undo()`](#undo) - Undo Bank Account Configuration
- [`update_bank_account_configuration_approval()`](#update_bank_account_configuration_approval) - Update Bank Account Configuration Approval

______________________________________________________________________

## `approve_approval()`

> **Update Bank Account Configuration**

### Method Signature

```python
def approve_approval(
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
from catapa import Catapa, BankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BankAccountConfigurationApi(client)

response = api.approve_approval(
    id_request=[
        {"id": "7eb20b1e-577b-45c0-adf4-c76ae17cdeae"},
        {"id": "6a4d1903-b453-4694-9806-65101f0aec64"},
    ]
)

# Access response data
print(response)
```

______________________________________________________________________

## `cancel_approval()`

> **Cancel Bank Account Configuration**

### Method Signature

```python
def cancel_approval(self, id: str) -> None: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

`None`

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BankAccountConfigurationApi(client)

api.cancel_approval("id_example")
print("Success!")
```

______________________________________________________________________

## `create_bank_account_configuration_approval()`

> **Create Bank Account Configuration Approval**

Replacement for /v1/employees/{employeeId}/bank-account-configurations.

### Method Signature

```python
def create_bank_account_configuration_approval(
    self,
    update_bank_account_configuration_request: UpdateBankAccountConfigurationRequest = None,
) -> BankAccountConfigurationResponse: ...
```

### Parameters

| Name                                        | Type                                                                                          | Required | Description |
| :------------------------------------------ | :-------------------------------------------------------------------------------------------- | :------: | :---------- |
| `update_bank_account_configuration_request` | [`UpdateBankAccountConfigurationRequest`](../models/UpdateBankAccountConfigurationRequest.md) |    ❌    |             |

### Returns

[**`BankAccountConfigurationResponse`**](../models/BankAccountConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BankAccountConfigurationApi(client)

response = api.create_bank_account_configuration_approval(
    update_bank_account_configuration_request={
        "employee": {"id": "62b529c7-0cfb-4d34-8ef8-3be3ef0f911d"},
        "effectiveDate": "2023-11-01",
        "paymentMethod": "TRANSFER",
        "distributionMethod": "PERCENTAGE",
        "bankAccounts": [
            {
                "id": null,
                "companyBankAccount": null,
                "bankId": "8bf610cc-c83b-11e6-9d9d-cec0c932ce01",
                "bankBranchId": null,
                "accountNumber": "68492818391829",
                "accountName": "John Doe",
                "beneficiaryId": null,
                "priority": 1,
                "currency": {"id": "d1ea18d8-a691-11e6-80f5-76304dec7066"},
                "percentage": 100,
                "amount": 0,
            }
        ],
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_bank_account_configuration_by_id()`

> **Get Bank Account Configuration by Id**

### Method Signature

```python
def get_bank_account_configuration_by_id(
    self, id: str
) -> BankAccountConfigurationResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`BankAccountConfigurationResponse`**](../models/BankAccountConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BankAccountConfigurationApi(client)

response = api.get_bank_account_configuration_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_bank_account_configurations()`

> **Get all bank account configurations**

Get all bank account configurations with pagination

### Method Signature

```python
def get_bank_account_configurations(
    self, page: int = None, size: int = None, query: str = None
) -> BankAccountConfigurationPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`BankAccountConfigurationPageResponse`**](../models/BankAccountConfigurationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BankAccountConfigurationApi(client)

response = api.get_bank_account_configurations(page=0, size=10, query="query_example")

# Access response data
print(response)
```

______________________________________________________________________

## `reject_approval()`

> **Reject Bank Account Configuration**

### Method Signature

```python
def reject_approval(
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
from catapa import Catapa, BankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BankAccountConfigurationApi(client)

response = api.reject_approval(
    reject_approval_request=[
        {"id": "59a7fdc8-888c-437b-afec-44ffa490b160", "reason": "reason"},
        {"id": "032f6fd4-67d5-423f-9522-283f79391019", "reason": "reason"},
    ]
)

# Access response data
print(response)
```

______________________________________________________________________

## `undo()`

> **Undo Bank Account Configuration**

### Method Signature

```python
def undo(self, id_request: List[IdRequest] = None) -> BulkOperationResponse: ...
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
from catapa import Catapa, BankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BankAccountConfigurationApi(client)

response = api.undo(
    id_request=[
        {"id": "7eb20b1e-577b-45c0-adf4-c76ae17cdeae"},
        {"id": "6a4d1903-b453-4694-9806-65101f0aec64"},
    ]
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_bank_account_configuration_approval()`

> **Update Bank Account Configuration Approval**

### Method Signature

```python
def update_bank_account_configuration_approval(
    self,
    id: str,
    update_bank_account_configuration_request: UpdateBankAccountConfigurationRequest = None,
) -> BankAccountConfigurationResponse: ...
```

### Parameters

| Name                                        | Type                                                                                          | Required | Description |
| :------------------------------------------ | :-------------------------------------------------------------------------------------------- | :------: | :---------- |
| `id`                                        | `str`                                                                                         |    ✅    |             |
| `update_bank_account_configuration_request` | [`UpdateBankAccountConfigurationRequest`](../models/UpdateBankAccountConfigurationRequest.md) |    ❌    |             |

### Returns

[**`BankAccountConfigurationResponse`**](../models/BankAccountConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, BankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = BankAccountConfigurationApi(client)

response = api.update_bank_account_configuration_approval(
    "id_example",
    update_bank_account_configuration_request={
        "employee": {"id": "62b529c7-0cfb-4d34-8ef8-3be3ef0f911d"},
        "effectiveDate": "2023-11-01",
        "paymentMethod": "TRANSFER",
        "distributionMethod": "PERCENTAGE",
        "bankAccounts": [
            {
                "id": null,
                "companyBankAccount": null,
                "bankId": "8bf610cc-c83b-11e6-9d9d-cec0c932ce01",
                "bankBranchId": null,
                "accountNumber": "68492818391829",
                "accountName": "John Doe",
                "beneficiaryId": null,
                "priority": 1,
                "currency": {"id": "d1ea18d8-a691-11e6-80f5-76304dec7066"},
                "percentage": 100,
                "amount": 0,
            }
        ],
    },
)

# Access response data
print(response)
```

______________________________________________________________________
