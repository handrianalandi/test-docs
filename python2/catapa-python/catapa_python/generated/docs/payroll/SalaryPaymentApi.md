# SalaryPaymentApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_payment_item_groups()`](#get_payment_item_groups) - Get Payment Item Groups
- [`get_processed_salary_payment_summaries()`](#get_processed_salary_payment_summaries) - Get Processed Salary Payment Summaries
- [`get_processed_salary_payments()`](#get_processed_salary_payments) - Get Processed Salary Payments
- [`get_salary_payments()`](#get_salary_payments) - Get Salary Payments
- [`get_salary_payments_date()`](#get_salary_payments_date) - Get Salary Payments Date

______________________________________________________________________

## `get_payment_item_groups()`

> **Get Payment Item Groups**

### Method Signature

```python
def get_payment_item_groups(self, id: str) -> PaymentItemGroupPageResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`PaymentItemGroupPageResponse`**](../models/PaymentItemGroupPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryPaymentApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryPaymentApi(client)

response = api.get_payment_item_groups("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_processed_salary_payment_summaries()`

> **Get Processed Salary Payment Summaries**

### Search Query

| Supported Keys             | Supported Operators | Notes                                                      |
| -------------------------- | ------------------- | ---------------------------------------------------------- |
| exported                   | :                   | Like operator                                              |
| bankId                     | :                   | Like operator                                              |
| companyBankAccountId       | :                   | Like operator                                              |
| bankName                   | :                   | Like operator                                              |
| year                       | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to |
| month                      | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to |
| numberOfProcessedEmployees | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to |
| paymentDate                | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to |

### Method Signature

```python
def get_processed_salary_payment_summaries(
    self,
) -> SalaryPaymentSummaryPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`SalaryPaymentSummaryPageResponse`**](../models/SalaryPaymentSummaryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryPaymentApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryPaymentApi(client)

response = api.get_processed_salary_payment_summaries()

# Access response data
print(response)
```

______________________________________________________________________

## `get_processed_salary_payments()`

> **Get Processed Salary Payments**

### Search Query

| Supported Keys         | Supported Operators | Notes         |
| ---------------------- | ------------------- | ------------- |
| year                   | :                   | Like operator |
| month                  | :                   | Like operator |
| salaryPaymentProcess   | :                   | Like operator |
| salaryPaymentSummaryId | :                   | Like operator |

### Method Signature

```python
def get_processed_salary_payments(self) -> ProcessedSalaryPaymentPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`ProcessedSalaryPaymentPageResponse`**](../models/ProcessedSalaryPaymentPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryPaymentApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryPaymentApi(client)

response = api.get_processed_salary_payments()

# Access response data
print(response)
```

______________________________________________________________________

## `get_salary_payments()`

> **Get Salary Payments**

### Search Query

| Supported Keys          | Supported Operators | Notes                                                                 |
| ----------------------- | ------------------- | --------------------------------------------------------------------- |
| process                 | `:`                 | Equal operator                                                        |
| salaryPaymentSummary.id | `:`                 | Like operator                                                         |
| paymentDate             | `:`<br/>`>`<br/>`<` | Equal operator<br/>Greater than or equal to<br/>Less than or equal to |
| employee.id             | `:`                 | Equal operator                                                        |

### Method Signature

```python
def get_salary_payments(self) -> SalaryPaymentPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`SalaryPaymentPageResponse`**](../models/SalaryPaymentPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryPaymentApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryPaymentApi(client)

response = api.get_salary_payments()

# Access response data
print(response)
```

______________________________________________________________________

## `get_salary_payments_date()`

> **Get Salary Payments Date**

### Method Signature

```python
def get_salary_payments_date(
    self, year: float = None, month: float = None
) -> List[str]: ...
```

### Parameters

| Name    | Type    | Required | Description |
| :------ | :------ | :------: | :---------- |
| `year`  | `float` |    ❌    |             |
| `month` | `float` |    ❌    |             |

### Returns

[**`List[str]`**](../models/str.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryPaymentApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryPaymentApi(client)

result = api.get_salary_payments_date(year=3.4, month=3.4)
print(result)
```

______________________________________________________________________
