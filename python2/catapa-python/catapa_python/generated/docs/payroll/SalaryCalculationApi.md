# SalaryCalculationApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_salary_calculation()`](#get_salary_calculation) - Get Salary Calculation
- [`get_salary_calculation_details()`](#get_salary_calculation_details) - Get Salary Calculation Details
- [`get_time_allowance_details_by_salary_calculation_detail()`](#get_time_allowance_details_by_salary_calculation_detail) - Get Time Allowance Details By Salary Calculation Detail
- [`update_salary_calculation_detail()`](#update_salary_calculation_detail) - Update Salary Calculation Detail

______________________________________________________________________

## `get_salary_calculation()`

> **Get Salary Calculation**

### Search Query

| Supported Keys       | Supported Operators | Notes |
| -------------------- | ------------------- | ----- |
| id                   | :                   | Equal |
| month                | :                   | Equal |
| year                 | :                   | Equal |
| salaryPaymentProcess | :                   | Equal |

### Method Signature

```python
def get_salary_calculation(self) -> SalaryCalculationPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`SalaryCalculationPageResponse`**](../models/SalaryCalculationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryCalculationApi(client)

response = api.get_salary_calculation()

# Access response data
print(response)
```

______________________________________________________________________

## `get_salary_calculation_details()`

> **Get Salary Calculation Details**

### Search Query

| Supported Keys      | Supported Operators | Notes         |
| ------------------- | ------------------- | ------------- |
| salaryCalculationId | :                   | Like operator |

### Method Signature

```python
def get_salary_calculation_details(self) -> SalaryCalculationDetailPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`SalaryCalculationDetailPageResponse`**](../models/SalaryCalculationDetailPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryCalculationApi(client)

response = api.get_salary_calculation_details()

# Access response data
print(response)
```

______________________________________________________________________

## `get_time_allowance_details_by_salary_calculation_detail()`

> **Get Time Allowance Details By Salary Calculation Detail**

### Method Signature

```python
def get_time_allowance_details_by_salary_calculation_detail(
    self, id: str
) -> TimeAllowanceDetailsResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`TimeAllowanceDetailsResponse`**](../models/TimeAllowanceDetailsResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryCalculationApi(client)

response = api.get_time_allowance_details_by_salary_calculation_detail("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `update_salary_calculation_detail()`

> **Update Salary Calculation Detail**

### Method Signature

```python
def update_salary_calculation_detail(
    self, id: str, code: str, amount_request: AmountRequest = None
) -> object: ...
```

### Parameters

| Name             | Type                                          | Required | Description |
| :--------------- | :-------------------------------------------- | :------: | :---------- |
| `id`             | `str`                                         |    ✅    |             |
| `code`           | `str`                                         |    ✅    |             |
| `amount_request` | [`AmountRequest`](../models/AmountRequest.md) |    ❌    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryCalculationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryCalculationApi(client)

result = api.update_salary_calculation_detail(
    "id_example", "code_example", amount_request={"amount": 0}
)
print(result)
```

______________________________________________________________________
