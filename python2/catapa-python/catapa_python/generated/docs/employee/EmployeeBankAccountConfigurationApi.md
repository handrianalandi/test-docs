# EmployeeBankAccountConfigurationApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_employee_bank_account_configuration()`](#get_employee_bank_account_configuration) - Get Employee Bank Account Configuration
- [`get_employee_bank_account_configuration_histories()`](#get_employee_bank_account_configuration_histories) - Get Employee Bank Account Configuration Histories
- [`update_bank_account_configuration()`](#update_bank_account_configuration) - Update Bank Account Configuration

______________________________________________________________________

## `get_employee_bank_account_configuration()`

> **Get Employee Bank Account Configuration**

This endpoint is deprecated. Please use /v1/employees/{employeeId}/bank-account-configurations/histories instead.

### Method Signature

```python
def get_employee_bank_account_configuration(
    self, employee_id: str
) -> BankAccountConfigurationResponse: ...
```

### Parameters

| Name          | Type  | Required | Description |
| :------------ | :---- | :------: | :---------- |
| `employee_id` | `str` |    ✅    |             |

### Returns

[**`BankAccountConfigurationResponse`**](../models/BankAccountConfigurationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeBankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeBankAccountConfigurationApi(client)

response = api.get_employee_bank_account_configuration("employee_id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_employee_bank_account_configuration_histories()`

> **Get Employee Bank Account Configuration Histories**

replacement for /v1/employees/{employeeId}/bank-account-configurations.

### Method Signature

```python
def get_employee_bank_account_configuration_histories(
    self, employee_id: str, page: int = None, size: int = None
) -> BankAccountConfigurationPageResponse: ...
```

### Parameters

| Name          | Type  | Required | Description                |
| :------------ | :---- | :------: | :------------------------- |
| `employee_id` | `str` |    ✅    |                            |
| `page`        | `int` |    ❌    | Page number (default: `0`) |
| `size`        | `int` |    ❌    | Page size (default: `10`)  |

### Returns

[**`BankAccountConfigurationPageResponse`**](../models/BankAccountConfigurationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeBankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeBankAccountConfigurationApi(client)

response = api.get_employee_bank_account_configuration_histories(
    "employee_id_example", page=0, size=10
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_bank_account_configuration()`

> **Update Bank Account Configuration**

This endpoint is deprecated. Please use /v1/bank-account-configurations/approvals instead.

### Method Signature

```python
def update_bank_account_configuration(
    self,
    employee_id: str,
    update_bank_account_configuration_request: UpdateBankAccountConfigurationRequest = None,
) -> BankAccountConfigurationResponse: ...
```

### Parameters

| Name                                        | Type                                                                                          | Required | Description |
| :------------------------------------------ | :-------------------------------------------------------------------------------------------- | :------: | :---------- |
| `employee_id`                               | `str`                                                                                         |    ✅    |             |
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
from catapa import Catapa, EmployeeBankAccountConfigurationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeBankAccountConfigurationApi(client)

response = api.update_bank_account_configuration(
    "employee_id_example",
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
