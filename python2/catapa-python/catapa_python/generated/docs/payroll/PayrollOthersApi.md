# PayrollOthersApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_additional_income_payments()`](#get_additional_income_payments) - Get Additional Income Payments
- [`get_monthly_recapitulation()`](#get_monthly_recapitulation) - Get Monthly Recapitulation

______________________________________________________________________

## `get_additional_income_payments()`

> **Get Additional Income Payments**

### Search Query

| Supported Keys  | Supported Operators | Notes                                                      |
| --------------- | ------------------- | ---------------------------------------------------------- |
| paymentDate     | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to |
| payment.process | :                   | Equal<br>Boolean                                           |

### Method Signature

```python
def get_additional_income_payments(self) -> AdditionalIncomePaymentPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`AdditionalIncomePaymentPageResponse`**](../models/AdditionalIncomePaymentPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayrollOthersApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayrollOthersApi(client)

response = api.get_additional_income_payments()

# Access response data
print(response)
```

______________________________________________________________________

## `get_monthly_recapitulation()`

> **Get Monthly Recapitulation**

### Method Signature

```python
def get_monthly_recapitulation(
    self, filter_type: str, year: float = None, month: float = None
) -> MonthlyRecapitulationPageResponse: ...
```

### Parameters

| Name          | Type    | Required | Description |
| :------------ | :------ | :------: | :---------- |
| `filter_type` | `str`   |    ✅    |             |
| `year`        | `float` |    ❌    |             |
| `month`       | `float` |    ❌    |             |

### Returns

[**`MonthlyRecapitulationPageResponse`**](../models/MonthlyRecapitulationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, PayrollOthersApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = PayrollOthersApi(client)

response = api.get_monthly_recapitulation("filter_type_example", year=3.4, month=3.4)

# Access response data
print(response)
```

______________________________________________________________________
