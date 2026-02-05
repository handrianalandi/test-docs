# FormerEmployeeIncomeApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_former_employee_income_by_id()`](#get_former_employee_income_by_id) - Get Former Employee Income By Id
- [`get_former_employee_income_employee()`](#get_former_employee_income_employee) - Get Former Employee Income Employee
- [`get_former_employee_income_employee_by_former_employee_income_id()`](#get_former_employee_income_employee_by_former_employee_income_id) - Get Former Employee Income Employee By Former Employee Income Id
- [`get_former_employee_incomes()`](#get_former_employee_incomes) - Get Former Employee Incomes
- [`update_former_employee_income_employee_by_former_employee_income_id()`](#update_former_employee_income_employee_by_former_employee_income_id) - Update Former Employee Income Employee By Former Employee Income Id

______________________________________________________________________

## `get_former_employee_income_by_id()`

> **Get Former Employee Income By Id**

### Method Signature

```python
def get_former_employee_income_by_id(self, id: str) -> FormerEmployeeIncomeResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`FormerEmployeeIncomeResponse`**](../models/FormerEmployeeIncomeResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FormerEmployeeIncomeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FormerEmployeeIncomeApi(client)

response = api.get_former_employee_income_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_former_employee_income_employee()`

> **Get Former Employee Income Employee**

### Search Query

| Supported Keys | Supported Operators | Notes                                                                                       |
| -------------- | ------------------- | ------------------------------------------------------------------------------------------- |
| paymentDate    | :<br>><br>\<        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |
| paid           | :                   | Equal operator                                                                              |

### Method Signature

```python
def get_former_employee_income_employee(
    self,
) -> FormerEmployeeIncomeEmployeePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`FormerEmployeeIncomeEmployeePageResponse`**](../models/FormerEmployeeIncomeEmployeePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FormerEmployeeIncomeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FormerEmployeeIncomeApi(client)

response = api.get_former_employee_income_employee()

# Access response data
print(response)
```

______________________________________________________________________

## `get_former_employee_income_employee_by_former_employee_income_id()`

> **Get Former Employee Income Employee By Former Employee Income Id**

### Search Query

| Supported Keys | Supported Operators | Notes                                                                                       |
| -------------- | ------------------- | ------------------------------------------------------------------------------------------- |
| paymentDate    | :<br>><br>\<        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |
| paid           | :                   | Equal operator                                                                              |

### Method Signature

```python
def get_former_employee_income_employee_by_former_employee_income_id(
    self, former_employee_income_id: str
) -> FormerEmployeeIncomeEmployeePageResponse: ...
```

### Parameters

| Name                        | Type  | Required | Description |
| :-------------------------- | :---- | :------: | :---------- |
| `former_employee_income_id` | `str` |    ✅    |             |

### Returns

[**`FormerEmployeeIncomeEmployeePageResponse`**](../models/FormerEmployeeIncomeEmployeePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FormerEmployeeIncomeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FormerEmployeeIncomeApi(client)

response = api.get_former_employee_income_employee_by_former_employee_income_id(
    "former_employee_income_id_example"
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_former_employee_incomes()`

> **Get Former Employee Incomes**

### Search Query

| Supported Keys         | Supported Operators | Notes                                                                                       |
| ---------------------- | ------------------- | ------------------------------------------------------------------------------------------- |
| itemName               | :                   | Like operator<br><br>                                                                       |
| itemType               | :                   | Equal operator                                                                              |
| referenceDate          | :<br>><br>\<        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |
| pph21Method            | :                   | Equal operator                                                                              |
| minimumLastWorkingDate | :<br>><br>\<        | Equal operator<br>Greater than or equal to operator<br>Less than or equal to equal operator |
| proportionalMethod     | :                   | Equal operator                                                                              |

### Method Signature

```python
def get_former_employee_incomes(self) -> FormerEmployeeIncomePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`FormerEmployeeIncomePageResponse`**](../models/FormerEmployeeIncomePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FormerEmployeeIncomeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FormerEmployeeIncomeApi(client)

response = api.get_former_employee_incomes()

# Access response data
print(response)
```

______________________________________________________________________

## `update_former_employee_income_employee_by_former_employee_income_id()`

> **Update Former Employee Income Employee By Former Employee Income Id**

### Method Signature

```python
def update_former_employee_income_employee_by_former_employee_income_id(
    self,
    former_employee_income_id: str,
    former_employee_income_employee_amount_update_request: List[
        FormerEmployeeIncomeEmployeeAmountUpdateRequest
    ] = None,
) -> object: ...
```

### Parameters

| Name                                                    | Type                                                                                                                    | Required | Description |
| :------------------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------- | :------: | :---------- |
| `former_employee_income_id`                             | `str`                                                                                                                   |    ✅    |             |
| `former_employee_income_employee_amount_update_request` | [`List[FormerEmployeeIncomeEmployeeAmountUpdateRequest]`](../models/FormerEmployeeIncomeEmployeeAmountUpdateRequest.md) |    ❌    |             |

### Returns

[**`object`**](../models/object.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, FormerEmployeeIncomeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = FormerEmployeeIncomeApi(client)

result = api.update_former_employee_income_employee_by_former_employee_income_id(
    "former_employee_income_id_example",
    former_employee_income_employee_amount_update_request=[
        {"id": "79f537af-83b2-4a8b-851c-5d14ec046554", "amount": 9000000},
        {"id": "90f537af-83b2-4a8b-851c-5d14ec046554", "amount": 1000000},
    ],
)
print(result)
```

______________________________________________________________________
