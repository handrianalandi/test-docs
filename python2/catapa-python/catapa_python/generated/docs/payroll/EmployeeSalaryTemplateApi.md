# EmployeeSalaryTemplateApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`createor_update_employee_salary_template()`](#createor_update_employee_salary_template) - Create or Update Employee Salary Template
- [`get_effective_employee_salary_template()`](#get_effective_employee_salary_template) - Get Effective Employee Salary Template
- [`get_latest_employee_salary_template()`](#get_latest_employee_salary_template) - Get Latest Employee Salary Template

______________________________________________________________________

## `createor_update_employee_salary_template()`

> **Create or Update Employee Salary Template**

### Method Signature

```python
def createor_update_employee_salary_template(
    self,
    id: str,
    employee_salary_template_request: EmployeeSalaryTemplateRequest = None,
) -> EmployeeSalaryTemplateUpdateResponse: ...
```

### Parameters

| Name                               | Type                                                                          | Required | Description |
| :--------------------------------- | :---------------------------------------------------------------------------- | :------: | :---------- |
| `id`                               | `str`                                                                         |    ✅    |             |
| `employee_salary_template_request` | [`EmployeeSalaryTemplateRequest`](../models/EmployeeSalaryTemplateRequest.md) |    ❌    |             |

### Returns

[**`EmployeeSalaryTemplateUpdateResponse`**](../models/EmployeeSalaryTemplateUpdateResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeSalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeSalaryTemplateApi(client)

response = api.createor_update_employee_salary_template(
    "c2424497-9c63-46d1-88e4-6b4ebe399866",
    employee_salary_template_request={
        "effectiveDate": "string",
        "employeeSalaries": [
            {
                "amount": 0,
                "formula": "string",
                "recurringConfiguration": {
                    "maxRecurringTimes": 0,
                    "periodInterval": 1,
                    "recurringEndType": "NEVER",
                    "recurringPeriodEnd": {"month": 1, "year": 1970},
                },
                "salaryItemId": "string",
            }
        ],
        "proportional": true,
        "retroactive": true,
        "salaryDecreeNumber": "string",
        "salaryTemplateId": "string",
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_effective_employee_salary_template()`

> **Get Effective Employee Salary Template**

### Method Signature

```python
def get_effective_employee_salary_template(
    self, id: str, year: float = None, month: float = None
) -> EmployeeSalaryTemplatePageResponse: ...
```

### Parameters

| Name    | Type    | Required | Description |
| :------ | :------ | :------: | :---------- |
| `id`    | `str`   |    ✅    |             |
| `year`  | `float` |    ❌    |             |
| `month` | `float` |    ❌    |             |

### Returns

[**`EmployeeSalaryTemplatePageResponse`**](../models/EmployeeSalaryTemplatePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeSalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeSalaryTemplateApi(client)

response = api.get_effective_employee_salary_template("id_example", year=3.4, month=3.4)

# Access response data
print(response)
```

______________________________________________________________________

## `get_latest_employee_salary_template()`

> **Get Latest Employee Salary Template**

### Method Signature

```python
def get_latest_employee_salary_template(
    self, id: str
) -> EmployeeSalaryTemplateResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`EmployeeSalaryTemplateResponse`**](../models/EmployeeSalaryTemplateResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeSalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeSalaryTemplateApi(client)

response = api.get_latest_employee_salary_template("id_example")

# Access response data
print(response)
```

______________________________________________________________________
