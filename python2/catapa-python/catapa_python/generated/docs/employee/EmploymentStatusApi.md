# EmploymentStatusApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`get_employment_status_by_employee()`](#get_employment_status_by_employee) - Get Employment Status by Employee
- [`get_employment_status_histories()`](#get_employment_status_histories) - Get Employment Status Histories
- [`get_employment_statuses()`](#get_employment_statuses) - Get Employment Statuses
- [`update_employment_status_by_employee()`](#update_employment_status_by_employee) - Update Employment Status by Employee

______________________________________________________________________

## `get_employment_status_by_employee()`

> **Get Employment Status by Employee**

⚠️ **This endpoint is deprecated.** Please use [Get Employment Statuses](https://api-docs.catapa.com/#tag/employment-status/operation/getEmploymentStatuses) instead.

### Method Signature

```python
def get_employment_status_by_employee(
    self, employee_id: str, query: str = None
) -> EmploymentDataResponse: ...
```

### Parameters

| Name          | Type  | Required | Description      |
| :------------ | :---- | :------: | :--------------- |
| `employee_id` | `str` |    ✅    |                  |
| `query`       | `str` |    ❌    | ### Search query |

### Returns

[**`EmploymentDataResponse`**](../models/EmploymentDataResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmploymentStatusApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmploymentStatusApi(client)

response = api.get_employment_status_by_employee(
    "employee_id_example", query="effectiveDate>2023-09-20"
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_employment_status_histories()`

> **Get Employment Status Histories**

### Method Signature

```python
def get_employment_status_histories(
    self, page: int = None, size: int = None, query: str = None
) -> EmploymentStatusHistoryPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`EmploymentStatusHistoryPageResponse`**](../models/EmploymentStatusHistoryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmploymentStatusApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmploymentStatusApi(client)

response = api.get_employment_status_histories(
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_employment_statuses()`

> **Get Employment Statuses**

### Method Signature

```python
def get_employment_statuses(
    self, page: int = None, size: int = None, query: str = None
) -> EmploymentStatusPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`EmploymentStatusPageResponse`**](../models/EmploymentStatusPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmploymentStatusApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmploymentStatusApi(client)

response = api.get_employment_statuses(
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6",
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_employment_status_by_employee()`

> **Update Employment Status by Employee**

### Generate Employment Status Number

The default value for the `generateEmploymentStatusNumber` field in the request body is set to `false`. If a request is sent with the value of `true`, it will first check the existing employee policy. If the employee policy is set to manual, it will accept the employment status number in the request. If the employee policy is set to automatic, it will generate a new employment status number based on the format in the employee policy.

### Method Signature

```python
def update_employment_status_by_employee(
    self, employee_id: str, employment_data_request: EmploymentDataRequest = None
) -> EmploymentDataResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `employee_id`             | `str`                                                         |    ✅    |             |
| `employment_data_request` | [`EmploymentDataRequest`](../models/EmploymentDataRequest.md) |    ❌    |             |

### Returns

[**`EmploymentDataResponse`**](../models/EmploymentDataResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmploymentStatusApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmploymentStatusApi(client)

response = api.update_employment_status_by_employee(
    "employee_id_example",
    employment_data_request={
        "contractEnd": null,
        "contractStart": null,
        "effectiveDate": "2021-04-01",
        "employmentStatusNumber": "PKWT-UPDATE-SUCCESS",
        "employmentStatusTypeId": "f18f5618-ac6c-11e6-80f5-76304dec7eb3",
        "employmentTypeId": "a896cc20-aba9-11e6-80f6-76304dec7eb7",
        "jobLevelId": "944e67fc-3ac4-463d-9854-db536f4dad56",
        "jobTitleId": "3fb954ed-f00d-4f6f-b9ee-35f3ef817df9",
        "locationId": "61d5f69a-a5a4-1111-80f5-76304dec7eb7",
        "organizationId": "8adeb8b6-acab-11e6-80f5-76304dec7eb7",
        "costCenterId": null,
        "permanentDate": "2021-08-01",
        "signDate": "2021-04-01",
        "subLocationId": null,
        "operationalGroupId": null,
    },
)

# Access response data
print(response)
```

______________________________________________________________________
