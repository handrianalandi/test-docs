# EmployeeApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`add_employee()`](#add_employee) - Add Employee
- [`delete_employee()`](#delete_employee) - Delete Employee
- [`get_additional_assignment_approvals()`](#get_additional_assignment_approvals) - List All Additional Assignment Approvals
- [`get_employee_hiring_data()`](#get_employee_hiring_data) - Get Employee Hiring Data
- [`get_employees()`](#get_employees) - Get Employees
- [`update_employee_hiring_data()`](#update_employee_hiring_data) - Update Employee Hiring Data
- [`update_manager()`](#update_manager) - Update Manager

______________________________________________________________________

## `add_employee()`

> **Add Employee**

### Method Signature

```python
def add_employee(
    self, employee_request: EmployeeRequest = None
) -> EmployeeCreateResponse: ...
```

### Parameters

| Name               | Type                                              | Required | Description |
| :----------------- | :------------------------------------------------ | :------: | :---------- |
| `employee_request` | [`EmployeeRequest`](../models/EmployeeRequest.md) |    ❌    |             |

### Returns

[**`EmployeeCreateResponse`**](../models/EmployeeCreateResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeApi(client)

response = api.add_employee(
    employee_request={
        "jobTitleId": "3fb954ed-f00d-4f6f-b9ee-35f3ef817df9",
        "gender": "MALE",
        "identityCardNumber": "1234567890",
        "contractEnd": "2019-07-01",
        "foreignLabour": false,
        "dateOfBirth": "2000-01-01",
        "jobLevelId": "944e67fc-3ac4-463d-9854-db536f4dad56",
        "religionId": "daa7f10k-a734-11e6-80f5-76304dec7eb7",
        "citizenshipId": "d1eac40e-a691-11e6-80f5-76304dec7eb7",
        "organizationId": "8adeb8b6-acab-11e6-80f5-76304dec7eb7",
        "joinDate": "2019-01-01",
        "employmentTypeId": "a896cc20-aba9-11e6-80f7-76304dec7eb7",
        "locationId": "61d5f69a-a5a4-1111-80f5-76304dec7eb7",
        "name": "name",
        "placeOfBirthId": "2e2eaa46-481a-4bde-89b2-56c033aa48d7",
        "identificationNumber": "1234567890",
        "identityCardExpiredDate": null,
        "pointOfHireId": "61d5f69a-a5a4-1111-80f5-76304dec7eb7",
        "contractStart": "2019-01-01",
        "maritalStatus": "SINGLE",
        "startDate": "2019-01-01",
        "email": "test@gmail.com",
        "employmentStatusNumber": "ESN",
        "username": "test",
        "positionId": "e308b10e-9138-415f-b240-a5ef417193e3",
        "subLocationId": "8b0d8fb8-9643-4b39-83fa-c06bdc783357",
        "operationalGroupId": "fa411e7e-2404-4764-b786-7ca3c35e7b07",
        "workEmail": "work@email.com",
        "costCenterId": "61d5f69a-a5a4-1111-80f5-76304dec7eb7",
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `delete_employee()`

> **Delete Employee**

This endpoint expects a JSON array in the request body, where each item is an object containing an `id` field representing the employee to delete. The array must contain between 1 and 50 items.
**Request body schema:** `json [   { "id": "string" } ] `
**Example payload:** `json [   { "id": "7eb20b1e-577b-45c0-adf4-c76ae17cdeae" } ] `

### Method Signature

```python
def delete_employee(self) -> BulkOperationResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`BulkOperationResponse`**](../models/BulkOperationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeApi(client)

response = api.delete_employee()

# Access response data
print(response)
```

______________________________________________________________________

## `get_additional_assignment_approvals()`

> **List All Additional Assignment Approvals**

### Method Signature

```python
def get_additional_assignment_approvals(
    self, page: int = None, size: int = None, query: str = None
) -> AdditionalAssignmentApprovalPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`AdditionalAssignmentApprovalPageResponse`**](../models/AdditionalAssignmentApprovalPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeApi(client)

response = api.get_additional_assignment_approvals(
    page=0, size=10, query="id:f47ac10b-58cc-4372-a567-0e02b2c3d479"
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_employee_hiring_data()`

> **Get Employee Hiring Data**

### Method Signature

```python
def get_employee_hiring_data(self, id: str) -> EmployeeHiringDataSimpleResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`EmployeeHiringDataSimpleResponse`**](../models/EmployeeHiringDataSimpleResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | ok          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeApi(client)

response = api.get_employee_hiring_data("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_employees()`

> **Get Employees**

### Method Signature

```python
def get_employees(
    self, page: int = None, size: int = None, query: str = None
) -> EmployeePageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search query           |

### Returns

[**`EmployeePageResponse`**](../models/EmployeePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeApi(client)

response = api.get_employees(page=0, size=10, query="identificationNumberIn:E001")

# Access response data
print(response)
```

______________________________________________________________________

## `update_employee_hiring_data()`

> **Update Employee Hiring Data**

### Method Signature

```python
def update_employee_hiring_data(
    self, id: str, employee_hiring_data_request: EmployeeHiringDataRequest = None
) -> EmployeeHiringDataResponse: ...
```

### Parameters

| Name                           | Type                                                                  | Required | Description |
| :----------------------------- | :-------------------------------------------------------------------- | :------: | :---------- |
| `id`                           | `str`                                                                 |    ✅    |             |
| `employee_hiring_data_request` | [`EmployeeHiringDataRequest`](../models/EmployeeHiringDataRequest.md) |    ❌    |             |

### Returns

[**`EmployeeHiringDataResponse`**](../models/EmployeeHiringDataResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeApi(client)

response = api.update_employee_hiring_data(
    "id_example",
    employee_hiring_data_request={
        "identificationNumber": "A0001",
        "joinDate": "2021-04-01",
        "name": "Alice X",
        "startDate": "2021-04-01",
        "pointOfHireId": "7824a4b6-2aaf-4508-bd88-72b685dfae38",
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_manager()`

> **Update Manager**

### Method Signature

```python
def update_manager(
    self, employee_id: str, manager_request: ManagerRequest = None
) -> EmployeeFullResponse: ...
```

### Parameters

| Name              | Type                                            | Required | Description |
| :---------------- | :---------------------------------------------- | :------: | :---------- |
| `employee_id`     | `str`                                           |    ✅    |             |
| `manager_request` | [`ManagerRequest`](../models/ManagerRequest.md) |    ❌    |             |

### Returns

[**`EmployeeFullResponse`**](../models/EmployeeFullResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeApi(client)

response = api.update_manager(
    "employee_id_example", manager_request={"managerId": "string"}
)

# Access response data
print(response)
```

______________________________________________________________________
