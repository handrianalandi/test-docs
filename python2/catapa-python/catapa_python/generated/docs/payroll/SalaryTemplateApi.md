# SalaryTemplateApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`add_salary_item_add_on()`](#add_salary_item_add_on) - Add Salary Item Add On
- [`delete_salary_item_add_on()`](#delete_salary_item_add_on) - Delete Salary Item Add On
- [`get_salary_item_add_on()`](#get_salary_item_add_on) - Get Salary Item Add On
- [`get_salary_template_by_id()`](#get_salary_template_by_id) - Get Salary Template by ID
- [`get_salary_templates()`](#get_salary_templates) - Get Salary Templates
- [`subtract_salary_item_add_on()`](#subtract_salary_item_add_on) - Subtract Salary Item Add On
- [`update_salary_item_add_on()`](#update_salary_item_add_on) - Update Salary Item Add On

______________________________________________________________________

## `add_salary_item_add_on()`

> **Add Salary Item Add On**

### Method Signature

```python
def add_salary_item_add_on(
    self, salary_item_add_on_request: SalaryItemAddOnRequest = None
) -> SalaryItemAddOnResponse: ...
```

### Parameters

| Name                         | Type                                                            | Required | Description |
| :--------------------------- | :-------------------------------------------------------------- | :------: | :---------- |
| `salary_item_add_on_request` | [`SalaryItemAddOnRequest`](../models/SalaryItemAddOnRequest.md) |    ❌    |             |

### Returns

[**`SalaryItemAddOnResponse`**](../models/SalaryItemAddOnResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryTemplateApi(client)

response = api.add_salary_item_add_on(
    salary_item_add_on_request={
        "amount": 0,
        "date": "string",
        "employee": {"identificationNumber": "string"},
        "salaryItem": {"code": "string"},
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `delete_salary_item_add_on()`

> **Delete Salary Item Add On**

### Method Signature

```python
def delete_salary_item_add_on(
    self,
    tenant: str,
    employee_identification_number: str,
    var_date: str,
    salary_item_code: str,
) -> object: ...
```

### Parameters

| Name                             | Type  | Required | Description |
| :------------------------------- | :---- | :------: | :---------- |
| `tenant`                         | `str` |    ✅    |             |
| `employee_identification_number` | `str` |    ✅    |             |
| `var_date`                       | `str` |    ✅    |             |
| `salary_item_code`               | `str` |    ✅    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryTemplateApi(client)

result = api.delete_salary_item_add_on(
    "tenant_example",
    "employee_identification_number_example",
    "var_date_example",
    "salary_item_code_example",
)
print(result)
```

______________________________________________________________________

## `get_salary_item_add_on()`

> **Get Salary Item Add On**

### Method Signature

```python
def get_salary_item_add_on(
    self, employee_identification_number: str, var_date: str, salary_item_code: str
) -> SalaryItemAddOnResponse: ...
```

### Parameters

| Name                             | Type  | Required | Description |
| :------------------------------- | :---- | :------: | :---------- |
| `employee_identification_number` | `str` |    ✅    |             |
| `var_date`                       | `str` |    ✅    |             |
| `salary_item_code`               | `str` |    ✅    |             |

### Returns

[**`SalaryItemAddOnResponse`**](../models/SalaryItemAddOnResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryTemplateApi(client)

response = api.get_salary_item_add_on(
    "employee_identification_number_example",
    "var_date_example",
    "salary_item_code_example",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_salary_template_by_id()`

> **Get Salary Template by ID**

### Method Signature

```python
def get_salary_template_by_id(self, id: str) -> SalaryTemplateResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`SalaryTemplateResponse`**](../models/SalaryTemplateResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryTemplateApi(client)

response = api.get_salary_template_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_salary_templates()`

> **Get Salary Templates**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| code           | :                   | Like operator |
| name           | :                   | Like operator |

### Method Signature

```python
def get_salary_templates(self) -> SalaryTemplatePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`SalaryTemplatePageResponse`**](../models/SalaryTemplatePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryTemplateApi(client)

response = api.get_salary_templates()

# Access response data
print(response)
```

______________________________________________________________________

## `subtract_salary_item_add_on()`

> **Subtract Salary Item Add On**

### Method Signature

```python
def subtract_salary_item_add_on(
    self, salary_item_add_on_request: SalaryItemAddOnRequest = None
) -> object: ...
```

### Parameters

| Name                         | Type                                                            | Required | Description |
| :--------------------------- | :-------------------------------------------------------------- | :------: | :---------- |
| `salary_item_add_on_request` | [`SalaryItemAddOnRequest`](../models/SalaryItemAddOnRequest.md) |    ❌    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryTemplateApi(client)

result = api.subtract_salary_item_add_on(
    salary_item_add_on_request={
        "amount": 0,
        "date": "string",
        "employee": {"identificationNumber": "string"},
        "salaryItem": {"code": "string"},
    }
)
print(result)
```

______________________________________________________________________

## `update_salary_item_add_on()`

> **Update Salary Item Add On**

### Method Signature

```python
def update_salary_item_add_on(
    self, salary_item_add_on_request: SalaryItemAddOnRequest = None
) -> SalaryItemAddOnResponse: ...
```

### Parameters

| Name                         | Type                                                            | Required | Description |
| :--------------------------- | :-------------------------------------------------------------- | :------: | :---------- |
| `salary_item_add_on_request` | [`SalaryItemAddOnRequest`](../models/SalaryItemAddOnRequest.md) |    ❌    |             |

### Returns

[**`SalaryItemAddOnResponse`**](../models/SalaryItemAddOnResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, SalaryTemplateApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = SalaryTemplateApi(client)

response = api.update_salary_item_add_on(
    salary_item_add_on_request={
        "amount": 0,
        "date": "string",
        "employee": {"identificationNumber": "string"},
        "salaryItem": {"code": "string"},
    }
)

# Access response data
print(response)
```

______________________________________________________________________
