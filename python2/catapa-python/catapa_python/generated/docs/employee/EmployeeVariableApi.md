# EmployeeVariableApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_employee_variable()`](#create_employee_variable) - Create Employee Variable
- [`create_employee_variable_metadata()`](#create_employee_variable_metadata) - Create Employee Variable Metadata
- [`create_or_update_employee_variables()`](#create_or_update_employee_variables) - Create or Update Employee Variables
- [`delete_all_aperiodic_employee_variables()`](#delete_all_aperiodic_employee_variables) - Delete All Aperiodic Employee Variables
- [`delete_employee_variable_metadata()`](#delete_employee_variable_metadata) - Delete Employee Variable Metadata
- [`delete_employee_variables()`](#delete_employee_variables) - Delete Employee Variables
- [`get_aperiodic_employee_variables()`](#get_aperiodic_employee_variables) - Get Aperiodic Employee Variables
- [`get_employee_variable_by_id()`](#get_employee_variable_by_id) - Get Employee Variable By Id
- [`get_employee_variable_metadata()`](#get_employee_variable_metadata) - Get Employee Variable Metadata
- [`get_employee_variable_metadata_by_id()`](#get_employee_variable_metadata_by_id) - Get Employee Variable Metadata By Id
- [`get_employee_variables()`](#get_employee_variables) - Get Employee Variables
- [`get_periodic_employee_variables()`](#get_periodic_employee_variables) - Get Periodic Employee Variables
- [`update_employee_variable_by_id()`](#update_employee_variable_by_id) - Update Employee Variable By Id
- [`update_employee_variable_metadata()`](#update_employee_variable_metadata) - Update Employee Variable Metadata

______________________________________________________________________

## `create_employee_variable()`

> **Create Employee Variable**

### Method Signature

```python
def create_employee_variable(
    self, employee_variable_request: EmployeeVariableRequest = None
) -> EmployeeVariableResponse: ...
```

### Parameters

| Name                        | Type                                                              | Required | Description |
| :-------------------------- | :---------------------------------------------------------------- | :------: | :---------- |
| `employee_variable_request` | [`EmployeeVariableRequest`](../models/EmployeeVariableRequest.md) |    ❌    |             |

### Returns

[**`EmployeeVariableResponse`**](../models/EmployeeVariableResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.create_employee_variable(
    employee_variable_request={
        "employeeId": "773d457f-1975-434c-81a4-067f79345554",
        "name": "VARIABLE_B",
        "date": "2022-01-01",
        "value": "100",
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_employee_variable_metadata()`

> **Create Employee Variable Metadata**

### Method Signature

```python
def create_employee_variable_metadata(
    self, employee_variable_metadata_request: EmployeeVariableMetadataRequest = None
) -> EmployeeVariableMetadataResponse: ...
```

### Parameters

| Name                                 | Type                                                                              | Required | Description |
| :----------------------------------- | :-------------------------------------------------------------------------------- | :------: | :---------- |
| `employee_variable_metadata_request` | [`EmployeeVariableMetadataRequest`](../models/EmployeeVariableMetadataRequest.md) |    ❌    |             |

### Returns

[**`EmployeeVariableMetadataResponse`**](../models/EmployeeVariableMetadataResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | CREATED     |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.create_employee_variable_metadata(
    employee_variable_metadata_request={
        "name": "VARIABLE_B",
        "type": "NUMBER",
        "periodic": true,
        "description": "description",
        "validations": [
            {"type": "MIN", "value": 10},
            {"type": "MAX", "value": 1000},
            {"type": "OPTION", "options": ["Option 1", "Option 2"]},
        ],
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_or_update_employee_variables()`

> **Create or Update Employee Variables**

### Method Signature

```python
def create_or_update_employee_variables(
    self, employee_variable_request: List[EmployeeVariableRequest] = None
) -> List[EmployeeVariableResponse]: ...
```

### Parameters

| Name                        | Type                                                                    | Required | Description |
| :-------------------------- | :---------------------------------------------------------------------- | :------: | :---------- |
| `employee_variable_request` | [`List[EmployeeVariableRequest]`](../models/EmployeeVariableRequest.md) |    ❌    |             |

### Returns

[**`List[EmployeeVariableResponse]`**](../models/EmployeeVariableResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.create_or_update_employee_variables(
    employee_variable_request=[
        {
            "employeeId": "773d457f-1975-434c-81a4-067f79345554",
            "name": "VARIABLE_B",
            "date": "2022-01-01",
            "value": "200",
        }
    ]
)

# Access response data
print(response)
```

______________________________________________________________________

## `delete_all_aperiodic_employee_variables()`

> **Delete All Aperiodic Employee Variables**

### Search Query

| Supported Keys                | Supported Operators | Notes                                                      |
| ----------------------------- | ------------------- | ---------------------------------------------------------- |
| employeeId                    | :                   | Equal                                                      |
| employee.identificationNumber | :                   | Like                                                       |
| employee.name                 | :                   | Like                                                       |
| employee.active               | :                   | Equal                                                      |
| name                          | :                   | Like                                                       |
| metadata.id                   | :                   | Equal                                                      |
| date                          | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to |

### Method Signature

```python
def delete_all_aperiodic_employee_variables(self) -> CountResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`CountResponse`**](../models/CountResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.delete_all_aperiodic_employee_variables()

# Access response data
print(response)
```

______________________________________________________________________

## `delete_employee_variable_metadata()`

> **Delete Employee Variable Metadata**

This endpoint deletes employee variable metadata.
This endpoint expects a JSON array in the request body, where each item is an object containing an `id` field representing the employee variable metadata to delete. The array must contain between 1 and 50 items.

**Request body schema:** `json [   {     "id": "string"   } ] `
**Example payload**: `json [   { "id": "673d457f-1975-434c-81a4-067f79345554" },   { "id": "730e2120-96e6-4426-8bbd-c1945ce561f7" } ] `

### Method Signature

```python
def delete_employee_variable_metadata(self) -> BulkOperationResponse: ...
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
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.delete_employee_variable_metadata()

# Access response data
print(response)
```

______________________________________________________________________

## `delete_employee_variables()`

> **Delete Employee Variables**

This endpoint expects a JSON array in the request body, where each item is an object containing an `id` field representing the employee variable to delete. The array must contain between 1 and 50 items.
**Request body schema:** `json [   { "id": "string" } ] `
**Example payload**: `json [   { "id": "673d457f-1975-434c-81a4-067f79345554" },   { "id": "730e2120-96e6-4426-8bbd-c1945ce561f7" } ] `

### Method Signature

```python
def delete_employee_variables(self) -> BulkOperationResponse: ...
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
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.delete_employee_variables()

# Access response data
print(response)
```

______________________________________________________________________

## `get_aperiodic_employee_variables()`

> **Get Aperiodic Employee Variables**

### Method Signature

```python
def get_aperiodic_employee_variables(self) -> EmployeeVariablePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`EmployeeVariablePageResponse`**](../models/EmployeeVariablePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.get_aperiodic_employee_variables()

# Access response data
print(response)
```

______________________________________________________________________

## `get_employee_variable_by_id()`

> **Get Employee Variable By Id**

### Method Signature

```python
def get_employee_variable_by_id(self, id: str) -> EmployeeVariableResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`EmployeeVariableResponse`**](../models/EmployeeVariableResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.get_employee_variable_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_employee_variable_metadata()`

> **Get Employee Variable Metadata**

### Search Query

| Supported Keys | Supported Operators | Notes |
| -------------- | ------------------- | ----- |
| name           | :                   | Equal |
| type           | :                   | Equal |
| periodic       | :                   | Equal |
| description    | :                   | Like  |

### Method Signature

```python
def get_employee_variable_metadata(self) -> EmployeeVariableMetadataPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`EmployeeVariableMetadataPageResponse`**](../models/EmployeeVariableMetadataPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.get_employee_variable_metadata()

# Access response data
print(response)
```

______________________________________________________________________

## `get_employee_variable_metadata_by_id()`

> **Get Employee Variable Metadata By Id**

### Method Signature

```python
def get_employee_variable_metadata_by_id(
    self, id: str
) -> EmployeeVariableMetadataResponse: ...
```

### Parameters

| Name | Type  | Required | Description |
| :--- | :---- | :------: | :---------- |
| `id` | `str` |    ✅    |             |

### Returns

[**`EmployeeVariableMetadataResponse`**](../models/EmployeeVariableMetadataResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.get_employee_variable_metadata_by_id("id_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_employee_variables()`

> **Get Employee Variables**

### Search Query

| Supported Keys                | Supported Operators | Notes                                                      |
| ----------------------------- | ------------------- | ---------------------------------------------------------- |
| employeeId                    | :                   | Equal                                                      |
| employee.identificationNumber | :                   | Like                                                       |
| employee.name                 | :                   | Like                                                       |
| employee.active               | :                   | Equal                                                      |
| name                          | :                   | Like                                                       |
| metadata.id                   | :                   | Equal                                                      |
| date                          | :<br>><br>\<        | Equal<br>Greater than or equal to<br>Less than or equal to |

### Method Signature

```python
def get_employee_variables(self) -> EmployeeVariablePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`EmployeeVariablePageResponse`**](../models/EmployeeVariablePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.get_employee_variables()

# Access response data
print(response)
```

______________________________________________________________________

## `get_periodic_employee_variables()`

> **Get Periodic Employee Variables**

### Method Signature

```python
def get_periodic_employee_variables(self) -> EmployeeVariablePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`EmployeeVariablePageResponse`**](../models/EmployeeVariablePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.get_periodic_employee_variables()

# Access response data
print(response)
```

______________________________________________________________________

## `update_employee_variable_by_id()`

> **Update Employee Variable By Id**

### Method Signature

```python
def update_employee_variable_by_id(
    self, id: str, employee_variable_request: EmployeeVariableRequest = None
) -> EmployeeVariableResponse: ...
```

### Parameters

| Name                        | Type                                                              | Required | Description |
| :-------------------------- | :---------------------------------------------------------------- | :------: | :---------- |
| `id`                        | `str`                                                             |    ✅    |             |
| `employee_variable_request` | [`EmployeeVariableRequest`](../models/EmployeeVariableRequest.md) |    ❌    |             |

### Returns

[**`EmployeeVariableResponse`**](../models/EmployeeVariableResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.update_employee_variable_by_id(
    "id_example",
    employee_variable_request={
        "employeeId": "773d457f-1975-434c-81a4-067f79345554",
        "name": "VARIABLE_B",
        "date": "2022-01-01",
        "value": "200",
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_employee_variable_metadata()`

> **Update Employee Variable Metadata**

### Method Signature

```python
def update_employee_variable_metadata(
    self,
    id: str,
    employee_variable_metadata_request: EmployeeVariableMetadataRequest = None,
) -> EmployeeVariableMetadataResponse: ...
```

### Parameters

| Name                                 | Type                                                                              | Required | Description |
| :----------------------------------- | :-------------------------------------------------------------------------------- | :------: | :---------- |
| `id`                                 | `str`                                                                             |    ✅    |             |
| `employee_variable_metadata_request` | [`EmployeeVariableMetadataRequest`](../models/EmployeeVariableMetadataRequest.md) |    ❌    |             |

### Returns

[**`EmployeeVariableMetadataResponse`**](../models/EmployeeVariableMetadataResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, EmployeeVariableApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = EmployeeVariableApi(client)

response = api.update_employee_variable_metadata(
    "id_example",
    employee_variable_metadata_request={
        "name": "VARIABLE_B",
        "type": "NUMBER",
        "periodic": true,
        "description": "description",
        "validations": [
            {"type": "MIN", "value": 10},
            {"type": "MAX", "value": 1000},
            {"type": "OPTION", "options": ["Option 1", "Option 2"]},
        ],
    },
)

# Access response data
print(response)
```

______________________________________________________________________
