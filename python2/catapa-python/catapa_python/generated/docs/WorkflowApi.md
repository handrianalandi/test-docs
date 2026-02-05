# WorkflowApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_workflow_reason()`](#create_workflow_reason) - Create Workflow Reason
- [`create_workflow_reason_category()`](#create_workflow_reason_category) - Create Workflow Reason Category
- [`get_workflow_activity()`](#get_workflow_activity) - Get Workflow Activities
- [`get_workflow_reason()`](#get_workflow_reason) - Get Workflow Reasons
- [`get_workflow_reason_category()`](#get_workflow_reason_category) - Get Workflow Reason Categories
- [`update_workflow_reason()`](#update_workflow_reason) - Update Workflow Reason
- [`update_workflow_reason_categories()`](#update_workflow_reason_categories) - Update Workflow Reason Category

______________________________________________________________________

## `create_workflow_reason()`

> **Create Workflow Reason**

### Method Signature

```python
def create_workflow_reason(
    self, workflow_reason_request: WorkflowReasonRequest = None
) -> WorkflowReasonResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `workflow_reason_request` | [`WorkflowReasonRequest`](../models/WorkflowReasonRequest.md) |    ❌    |             |

### Returns

[**`WorkflowReasonResponse`**](../models/WorkflowReasonResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, WorkflowApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = WorkflowApi(client)

response = api.create_workflow_reason(
    workflow_reason_request={
        "code": "PROM-02",
        "name": "Promotion to Principal",
        "category": {"id": "60a2d8c2-b5ff-11e6-80f5-76304dec7eb1"},
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_workflow_reason_category()`

> **Create Workflow Reason Category**

### Method Signature

```python
def create_workflow_reason_category(
    self, workflow_reason_category_request: WorkflowReasonCategoryRequest = None
) -> WorkflowReasonCategoryResponse: ...
```

### Parameters

| Name                               | Type                                                                          | Required | Description |
| :--------------------------------- | :---------------------------------------------------------------------------- | :------: | :---------- |
| `workflow_reason_category_request` | [`WorkflowReasonCategoryRequest`](../models/WorkflowReasonCategoryRequest.md) |    ❌    |             |

### Returns

[**`WorkflowReasonCategoryResponse`**](../models/WorkflowReasonCategoryResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, WorkflowApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = WorkflowApi(client)

response = api.create_workflow_reason_category(
    workflow_reason_category_request={"code": "TERMINATION", "name": "Termination"}
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_workflow_activity()`

> **Get Workflow Activities**

### Search Query

| Supported Keys | Supported Operators | Notes                                             |
| -------------- | ------------------- | ------------------------------------------------- |
| id             | `:`                 | Equal operator                                    |
| effectiveDate  | ><br>\<             | Greater than or equal to<br>Less than or equal to |
| employee.id    | `:`                 | Equal operator                                    |

### Method Signature

```python
def get_workflow_activity(self) -> WorkflowActivityPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`WorkflowActivityPageResponse`**](../models/WorkflowActivityPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, WorkflowApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = WorkflowApi(client)

response = api.get_workflow_activity()

# Access response data
print(response)
```

______________________________________________________________________

## `get_workflow_reason()`

> **Get Workflow Reasons**

### Search Query

| Supported Keys | Supported Operators | Notes          |
| -------------- | ------------------- | -------------- |
| code           | `:`                 | Like operator  |
| name           | `:`                 | Like operator  |
| category.id    | `:`                 | Equal operator |

### Method Signature

```python
def get_workflow_reason(self) -> WorkflowReasonPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`WorkflowReasonPageResponse`**](../models/WorkflowReasonPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, WorkflowApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = WorkflowApi(client)

response = api.get_workflow_reason()

# Access response data
print(response)
```

______________________________________________________________________

## `get_workflow_reason_category()`

> **Get Workflow Reason Categories**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| code           | `:`                 | Like operator |
| name           | `:`                 | Like operator |

### Method Signature

```python
def get_workflow_reason_category(self) -> WorkflowReasonCategoryPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`WorkflowReasonCategoryPageResponse`**](../models/WorkflowReasonCategoryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, WorkflowApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = WorkflowApi(client)

response = api.get_workflow_reason_category()

# Access response data
print(response)
```

______________________________________________________________________

## `update_workflow_reason()`

> **Update Workflow Reason**

### Method Signature

```python
def update_workflow_reason(
    self, id: str, workflow_reason_request: WorkflowReasonRequest = None
) -> WorkflowReasonResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `id`                      | `str`                                                         |    ✅    |             |
| `workflow_reason_request` | [`WorkflowReasonRequest`](../models/WorkflowReasonRequest.md) |    ❌    |             |

### Returns

[**`WorkflowReasonResponse`**](../models/WorkflowReasonResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, WorkflowApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = WorkflowApi(client)

response = api.update_workflow_reason(
    "id_example",
    workflow_reason_request={
        "code": "PROM-02",
        "name": "Promotion to Principal",
        "category": {"id": "60a2d8c2-b5ff-11e6-80f5-76304dec7eb1"},
    },
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_workflow_reason_categories()`

> **Update Workflow Reason Category**

### Method Signature

```python
def update_workflow_reason_categories(
    self,
    id: str,
    workflow_reason_category_request: WorkflowReasonCategoryRequest = None,
) -> WorkflowReasonCategoryResponse: ...
```

### Parameters

| Name                               | Type                                                                          | Required | Description |
| :--------------------------------- | :---------------------------------------------------------------------------- | :------: | :---------- |
| `id`                               | `str`                                                                         |    ✅    |             |
| `workflow_reason_category_request` | [`WorkflowReasonCategoryRequest`](../models/WorkflowReasonCategoryRequest.md) |    ❌    |             |

### Returns

[**`WorkflowReasonCategoryResponse`**](../models/WorkflowReasonCategoryResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, WorkflowApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = WorkflowApi(client)

response = api.update_workflow_reason_categories(
    "id_example",
    workflow_reason_category_request={
        "code": "PROMOTION",
        "name": "Promotion / Mutation",
    },
)

# Access response data
print(response)
```

______________________________________________________________________
