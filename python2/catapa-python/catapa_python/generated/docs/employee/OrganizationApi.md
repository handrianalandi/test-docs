# OrganizationApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`add_sub_location()`](#add_sub_location) - Add Sub Location
- [`create_company()`](#create_company) - Create Company
- [`create_cost_center()`](#create_cost_center) - Create Cost Center
- [`create_job_level()`](#create_job_level) - Create Job Level
- [`create_job_title()`](#create_job_title) - Create Job Title
- [`create_job_title_with_job_levels()`](#create_job_title_with_job_levels) - Create Job Title with Job Levels
- [`create_location()`](#create_location) - Create Location
- [`create_organization()`](#create_organization) - Create Organization
- [`create_organization_group()`](#create_organization_group) - Create Organization Group
- [`create_organization_hierarchies()`](#create_organization_hierarchies) - Create Organization Hierarchies
- [`delete_sub_location()`](#delete_sub_location) - Delete Sub Location
- [`get_companies()`](#get_companies) - Get Companies
- [`get_company()`](#get_company) - Get Company
- [`get_company_groups()`](#get_company_groups) - Get Company Groups
- [`get_cost_center()`](#get_cost_center) - Get Cost Center
- [`get_job_level()`](#get_job_level) - Get Job Level
- [`get_job_title_job_level_mappings()`](#get_job_title_job_level_mappings) - Get Job Title Job Level Mappings
- [`get_job_titles()`](#get_job_titles) - Get Job Titles
- [`get_location_group()`](#get_location_group) - Get Location Group
- [`get_locations()`](#get_locations) - Get Location
- [`get_operational_groups()`](#get_operational_groups) - Get Operational Groups
- [`get_organization_group()`](#get_organization_group) - Get Organization Group
- [`get_organization_heads()`](#get_organization_heads) - Get Organization Heads
- [`get_organization_hierarchies()`](#get_organization_hierarchies) - Get Organization Hierarchies
- [`get_organization_histories()`](#get_organization_histories) - Get Organization Histories
- [`get_organization_superiors()`](#get_organization_superiors) - Get Organization Superiors
- [`get_organizations()`](#get_organizations) - Get Organization
- [`get_position_cost_centers()`](#get_position_cost_centers) - Get Position Cost Centers
- [`get_position_histories()`](#get_position_histories) - Get Position Histories
- [`get_position_vacancy_statuses()`](#get_position_vacancy_statuses) - Get Position Vacancy Statuses
- [`get_positions()`](#get_positions) - Get Positions
- [`get_sub_locations()`](#get_sub_locations) - Get Sub Location
- [`update_cost_center()`](#update_cost_center) - Update Cost Center

______________________________________________________________________

## `add_sub_location()`

> **Add Sub Location**

### Method Signature

```python
def add_sub_location(
    self, sub_location_request: SubLocationRequest = None
) -> SubLocationResponse: ...
```

### Parameters

| Name                   | Type                                                    | Required | Description |
| :--------------------- | :------------------------------------------------------ | :------: | :---------- |
| `sub_location_request` | [`SubLocationRequest`](../models/SubLocationRequest.md) |    ❌    |             |

### Returns

[**`SubLocationResponse`**](../models/SubLocationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | Created     |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.add_sub_location(
    sub_location_request={
        "code": "FL-1",
        "name": "First Floor",
        "locationId": "61d5f69a-a5a4-1111-80f5-76304dec7eb7",
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_company()`

> **Create Company**

### Method Signature

```python
def create_company(
    self, request: CompanyDetailRequest, file: bytearray = None
) -> CompanyDetailResponse: ...
```

### Parameters

| Name      | Type                                                        | Required | Description                                                                                                                                                                                           |
| :-------- | :---------------------------------------------------------- | :------: | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `request` | [`CompanyDetailRequest`](../models/CompanyDetailRequest.md) |    ✅    |                                                                                                                                                                                                       |
| `file`    | `bytearray`                                                 |    ❌    | Upload the company logo. Allowed file types: \`jpg\`, \`jpeg\`, \`png\`, and \`svg\`. The Content-Type must be \`image/jpeg\`, \`image/png\`, or \`image/svg+xml\`. The maximum file size is \`4MB\`. |

### Returns

[**`CompanyDetailResponse`**](../models/CompanyDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.create_company(openapi_client.CompanyDetailRequest(), file=None)

# Access response data
print(response)
```

______________________________________________________________________

## `create_cost_center()`

> **Create Cost Center**

### Method Signature

```python
def create_cost_center(
    self, cost_center_request: CostCenterRequest = None
) -> CostCenterListItemResponse: ...
```

### Parameters

| Name                  | Type                                                  | Required | Description |
| :-------------------- | :---------------------------------------------------- | :------: | :---------- |
| `cost_center_request` | [`CostCenterRequest`](../models/CostCenterRequest.md) |    ❌    |             |

### Returns

[**`CostCenterListItemResponse`**](../models/CostCenterListItemResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.create_cost_center(
    cost_center_request={"code": "CC", "name": "Cost", "description": null}
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_job_level()`

> **Create Job Level**

### Method Signature

```python
def create_job_level(
    self, job_level_request: JobLevelRequest = None
) -> JobLevelResponse: ...
```

### Parameters

| Name                | Type                                              | Required | Description |
| :------------------ | :------------------------------------------------ | :------: | :---------- |
| `job_level_request` | [`JobLevelRequest`](../models/JobLevelRequest.md) |    ❌    |             |

### Returns

[**`JobLevelResponse`**](../models/JobLevelResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.create_job_level(
    job_level_request={
        "code": "NEW",
        "level": 1,
        "jobPositionId": "4a166550-d7e8-11e6-bf26-cec0c932ce01",
        "name": "NEW",
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_job_title()`

> **Create Job Title**

⚠️ **This endpoint is deprecated.**\
Please use [Create Job Title with Job Levels](https://api-docs.catapa.com/#tag/organization/operation/createJobTitleWithJobLevels) instead.

### Method Signature

```python
def create_job_title(
    self, job_title_request_deprecated: JobTitleRequestDeprecated = None
) -> JobTitleResponse: ...
```

### Parameters

| Name                           | Type                                                                  | Required | Description |
| :----------------------------- | :-------------------------------------------------------------------- | :------: | :---------- |
| `job_title_request_deprecated` | [`JobTitleRequestDeprecated`](../models/JobTitleRequestDeprecated.md) |    ❌    |             |

### Returns

[**`JobTitleResponse`**](../models/JobTitleResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.create_job_title(
    job_title_request_deprecated={
        "code": "NEW",
        "name": "NEW",
        "minJobLevelId": "d1cb4b96-d7e8-11e6-bf26-cec0c932ce01",
        "maxJobLevelId": "d1cb4b96-d7e8-11e6-bf26-cec0c932ce01",
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_job_title_with_job_levels()`

> **Create Job Title with Job Levels**

### Method Signature

```python
def create_job_title_with_job_levels(
    self, job_title_request: JobTitleRequest = None
) -> JobTitleWithJobLevelsResponse: ...
```

### Parameters

| Name                | Type                                              | Required | Description |
| :------------------ | :------------------------------------------------ | :------: | :---------- |
| `job_title_request` | [`JobTitleRequest`](../models/JobTitleRequest.md) |    ❌    |             |

### Returns

[**`JobTitleWithJobLevelsResponse`**](../models/JobTitleWithJobLevelsResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.create_job_title_with_job_levels(
    job_title_request={
        "code": "NEW",
        "name": "NEW",
        "jobLevels": [
            {"id": "d1cb4b96-d7e8-11e6-bf26-cec0c932ce01"},
            {"id": "d1cb4b96-d7e8-11e6-bf26-cec0c932ce02"},
        ],
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_location()`

> **Create Location**

### Method Signature

```python
def create_location(
    self, location_create_request: LocationCreateRequest = None
) -> LocationResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `location_create_request` | [`LocationCreateRequest`](../models/LocationCreateRequest.md) |    ❌    |             |

### Returns

[**`LocationResponse`**](../models/LocationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.create_location(
    location_create_request={
        "code": "CAT88",
        "name": "Catapa HQ",
        "locationGroup": {"id": "61d5f69a-a5a4-1111-80f5-76304dec7eb7"},
        "city": {"id": "2d1ecc14-a6ea-11e6-80f5-76304dec7eb7"},
        "latitude": 23.1029437563,
        "longitude": 32.8452647254,
        "address": "Jl. Kedung Doro No.32",
        "phone": 62476275642743,
        "zipCode": 55284,
        "headquarter": false,
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_organization()`

> **Create Organization**

### Method Signature

```python
def create_organization(
    self, organization_request: OrganizationRequest = None
) -> OrganizationResponse: ...
```

### Parameters

| Name                   | Type                                                      | Required | Description |
| :--------------------- | :-------------------------------------------------------- | :------: | :---------- |
| `organization_request` | [`OrganizationRequest`](../models/OrganizationRequest.md) |    ❌    |             |

### Returns

[**`OrganizationResponse`**](../models/OrganizationResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.create_organization(
    organization_request={
        "code": "BBCA",
        "organizationHierarchyId": "a896d3be-aba9-11e6-80f5-76304dec7eb7",
        "organizationParentId": null,
        "name": "PT Bank Central Asia Tbk.",
        "type": "FUNCTIONAL",
        "organizationGroupId": "61d5f69a-a5a4-1111-80f5-76304dec7eb7",
        "companyId": "61d5f69a-a5a4-1111-80f5-76304dec7eb7",
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_organization_group()`

> **Create Organization Group**

### Method Signature

```python
def create_organization_group(
    self, organization_group_request: OrganizationGroupRequest = None
) -> IdCodeNameResponse: ...
```

### Parameters

| Name                         | Type                                                                | Required | Description |
| :--------------------------- | :------------------------------------------------------------------ | :------: | :---------- |
| `organization_group_request` | [`OrganizationGroupRequest`](../models/OrganizationGroupRequest.md) |    ❌    |             |

### Returns

[**`IdCodeNameResponse`**](../models/IdCodeNameResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.create_organization_group(
    organization_group_request={"code": "GRP123", "name": "Engineering Department"}
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_organization_hierarchies()`

> **Create Organization Hierarchies**

### Method Signature

```python
def create_organization_hierarchies(
    self, organization_hierarchy_request: OrganizationHierarchyRequest = None
) -> OrganizationHierarchyResponse: ...
```

### Parameters

| Name                             | Type                                                                        | Required | Description |
| :------------------------------- | :-------------------------------------------------------------------------- | :------: | :---------- |
| `organization_hierarchy_request` | [`OrganizationHierarchyRequest`](../models/OrganizationHierarchyRequest.md) |    ❌    |             |

### Returns

[**`OrganizationHierarchyResponse`**](../models/OrganizationHierarchyResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.create_organization_hierarchies(
    organization_hierarchy_request={
        "code": "004",
        "name": "Unit",
        "color": "#62A4D5",
        "level": 4,
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `delete_sub_location()`

> **Delete Sub Location**

This endpoint expects a JSON array in the request body, where each item is an object containing an `id` field representing the sub-location to delete. The array must contain at least 1 item.
**Request body schema:** `json [   { "id": "string" } ] `
**Example payload:** `json [   { "id": "a31aa166-70be-4303-81e4-5ada93b5213a" } ] `

### Method Signature

```python
def delete_sub_location(self) -> BulkOperationResponse: ...
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
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.delete_sub_location()

# Access response data
print(response)
```

______________________________________________________________________

## `get_companies()`

> **Get Companies**

### Method Signature

```python
def get_companies(
    self, page: int = None, size: int = None, query: str = None
) -> CompanyPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search query           |

### Returns

[**`CompanyPageResponse`**](../models/CompanyPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_companies(page=0, size=10, query="name:Catapa")

# Access response data
print(response)
```

______________________________________________________________________

## `get_company()`

> **Get Company**

### Method Signature

```python
def get_company(self) -> CompanyDetailResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`CompanyDetailResponse`**](../models/CompanyDetailResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_company()

# Access response data
print(response)
```

______________________________________________________________________

## `get_company_groups()`

> **Get Company Groups**

### Method Signature

```python
def get_company_groups(
    self, page: int = None, size: int = None, query: str = None
) -> CompanyGroupPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`CompanyGroupPageResponse`**](../models/CompanyGroupPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_company_groups(page=0, size=10, query="code:CG-1")

# Access response data
print(response)
```

______________________________________________________________________

## `get_cost_center()`

> **Get Cost Center**

### Method Signature

```python
def get_cost_center(self) -> CostCenterPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`CostCenterPageResponse`**](../models/CostCenterPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_cost_center()

# Access response data
print(response)
```

______________________________________________________________________

## `get_job_level()`

> **Get Job Level**

### Search Query

| Supported Keys | Supported Operators | Notes                                                                             |
| -------------- | ------------------- | --------------------------------------------------------------------------------- |
| name           | `:`                 | Like operator                                                                     |
| code           | `:`                 | Like operator                                                                     |
| jobPosistionId | `:`                 | Like operator                                                                     |
| level          | `:`<br/>`>`<br/>`<` | Equal operator<br/>Greater than or equal operator<br/>Less than or equal operator |

### Method Signature

```python
def get_job_level(self) -> JobLevelPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`JobLevelPageResponse`**](../models/JobLevelPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_job_level()

# Access response data
print(response)
```

______________________________________________________________________

## `get_job_title_job_level_mappings()`

> **Get Job Title Job Level Mappings**

minJobLevel and MaxJobLevel are deprecated.

### Method Signature

```python
def get_job_title_job_level_mappings(
    self, page: int = None, size: int = None, query: str = None
) -> JobTitleLevelMappingPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`JobTitleLevelMappingPageResponse`**](../models/JobTitleLevelMappingPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_job_title_job_level_mappings(
    page=0,
    size=10,
    query="jobTitle.id:ff6ba12f-adc2-4d9e-910c-9a9a91b062b9;ff6ba12f-adc2-4d9e-910c-9a9a91b06200",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_job_titles()`

> **Get Job Titles**

minJobLevel and maxJobLevel are deprecated.
check Tenant Job Hierarchy Policy setting, it may cause error to this endpoint

### Method Signature

```python
def get_job_titles(
    self, page: int = None, size: int = None, query: str = None
) -> JobTitlePageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`JobTitlePageResponse`**](../models/JobTitlePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_job_titles(page=0, size=10, query="query_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_location_group()`

> **Get Location Group**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | `:`                 | Like operator |
| code           | `:`                 | Like operator |

### Method Signature

```python
def get_location_group(self) -> LocationGroupPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`LocationGroupPageResponse`**](../models/LocationGroupPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_location_group()

# Access response data
print(response)
```

______________________________________________________________________

## `get_locations()`

> **Get Location**

### Method Signature

```python
def get_locations(
    self, page: int = None, size: int = None, query: str = None
) -> LocationPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search query           |

### Returns

[**`LocationPageResponse`**](../models/LocationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_locations(page=0, size=10, query="code:JKT")

# Access response data
print(response)
```

______________________________________________________________________

## `get_operational_groups()`

> **Get Operational Groups**

### Method Signature

```python
def get_operational_groups(
    self, page: int = None, size: int = None, query: str = None
) -> OperationalGroupPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`OperationalGroupPageResponse`**](../models/OperationalGroupPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_operational_groups(
    page=0, size=10, query="id:a31aa166-70be-4303-81e4-5ada93b5213a"
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_organization_group()`

> **Get Organization Group**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | `:`                 | Like operator |
| code           | `:`                 | Like operator |

### Method Signature

```python
def get_organization_group(self) -> OrganizationGroupPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`OrganizationGroupPageResponse`**](../models/OrganizationGroupPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_organization_group()

# Access response data
print(response)
```

______________________________________________________________________

## `get_organization_heads()`

> **Get Organization Heads**

### Method Signature

```python
def get_organization_heads(
    self, page: int = None, size: int = None, query: str = None
) -> OrganizationHeadPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`OrganizationHeadPageResponse`**](../models/OrganizationHeadPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_organization_heads(
    page=0,
    size=10,
    query="id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_organization_hierarchies()`

> **Get Organization Hierarchies**

### Search Query

| Supported Keys | Supported Operators | Notes                                                                           |
| -------------- | ------------------- | ------------------------------------------------------------------------------- |
| name           | `:`                 | Like operator                                                                   |
| code           | `:`                 | Like operator                                                                   |
| color          | `:`                 | Like operator                                                                   |
| level          | `:`<br>`<`<br>`>`   | Equal operator<br>Less than or equal operator<br>Greater than or equal operator |

### Method Signature

```python
def get_organization_hierarchies(self) -> OrganizationHierarchyPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`OrganizationHierarchyPageResponse`**](../models/OrganizationHierarchyPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_organization_hierarchies()

# Access response data
print(response)
```

______________________________________________________________________

## `get_organization_histories()`

> **Get Organization Histories**

### Method Signature

```python
def get_organization_histories(
    self, page: int = None, size: int = None, query: str = None
) -> OrganizationHistoryPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`OrganizationHistoryPageResponse`**](../models/OrganizationHistoryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_organization_histories(
    page=0,
    size=10,
    query="id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_organization_superiors()`

> **Get Organization Superiors**

### Method Signature

```python
def get_organization_superiors(
    self, page: int = None, size: int = None, query: str = None
) -> OrganizationSuperiorPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`OrganizationSuperiorPageResponse`**](../models/OrganizationSuperiorPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_organization_superiors(page=0, size=10, query="id:org-001;org-002")

# Access response data
print(response)
```

______________________________________________________________________

## `get_organizations()`

> **Get Organization**

### Search Query

| Supported Keys          | Supported Operators | Notes                                                                                     |
| ----------------------- | ------------------- | ----------------------------------------------------------------------------------------- |
| id                      | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |
| name                    | `:`                 | Like operator                                                                             |
| code                    | `:`                 | Like operator                                                                             |
| type                    | `:`                 | Equal operator                                                                            |
| organizationGroupId     | `:`                 | Equal operator                                                                            |
| organizationHierarchyId | `:`                 | Equal operator                                                                            |
| organizationParentId    | `:`                 | Equal operator                                                                            |
| haveParent              | `:`                 | Equal operator                                                                            |
| organizationChildrenId  | `:`                 | Equal operator                                                                            |
| level                   | `:`<br>`<`<br>`>`   | Equal operator<br>Less than or equal operator<br>Greater than or equal operator           |
| company.id              | `:`                 | Equal operator                                                                            |
| effectiveDate           | `<`<br>`>`          | Less than or equal operator<br>Greater than or equal operator                             |
| endDate                 | `<`<br>`>`          | Less than or equal operator<br>Greater than or equal operator                             |
| endDateIsNull           | `:`                 | Equal operator                                                                            |

### Method Signature

```python
def get_organizations(
    self, page: int = None, size: int = None, query: str = None
) -> OrganizationPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    |                            |

### Returns

[**`OrganizationPageResponse`**](../models/OrganizationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_organizations(page=0, size=10, query="query_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_position_cost_centers()`

> **Get Position Cost Centers**

### Method Signature

```python
def get_position_cost_centers(
    self, page: int = None, size: int = None, query: str = None
) -> PositionCostCenterPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`PositionCostCenterPageResponse`**](../models/PositionCostCenterPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_position_cost_centers(
    page=0,
    size=10,
    query="id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_position_histories()`

> **Get Position Histories**

### Method Signature

```python
def get_position_histories(
    self, page: int = None, size: int = None, query: str = None
) -> PositionHistoryPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`PositionHistoryPageResponse`**](../models/PositionHistoryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_position_histories(
    page=0,
    size=10,
    query="id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_position_vacancy_statuses()`

> **Get Position Vacancy Statuses**

### Method Signature

```python
def get_position_vacancy_statuses(
    self, page: int = None, size: int = None, query: str = None
) -> PositionVacancyStatusPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`PositionVacancyStatusPageResponse`**](../models/PositionVacancyStatusPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_position_vacancy_statuses(
    page=0,
    size=10,
    query="id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_positions()`

> **Get Positions**

### Method Signature

```python
def get_positions(
    self, page: int = None, size: int = None, query: str = None
) -> PositionPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                                                       |
| :------ | :---- | :------: | :---------------------------------------------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`)                                        |
| `size`  | `int` |    ❌    | Page size (default: `10`)                                         |
| `query` | `str` |    ❌    | Get a list of positions with pagination support. ### Search Query |

### Returns

[**`PositionPageResponse`**](../models/PositionPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_positions(page=0, size=10, query="query_example")

# Access response data
print(response)
```

______________________________________________________________________

## `get_sub_locations()`

> **Get Sub Location**

### Method Signature

```python
def get_sub_locations(
    self, page: int = None, size: int = None, query: str = None
) -> SubLocationPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`SubLocationPageResponse`**](../models/SubLocationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.get_sub_locations(
    page=0, size=10, query="id:a31aa166-70be-4303-81e4-5ada93b5213a"
)

# Access response data
print(response)
```

______________________________________________________________________

## `update_cost_center()`

> **Update Cost Center**

### Method Signature

```python
def update_cost_center(
    self, id: str, cost_center_request: CostCenterRequest = None
) -> CostCenterListItemResponse: ...
```

### Parameters

| Name                  | Type                                                  | Required | Description |
| :-------------------- | :---------------------------------------------------- | :------: | :---------- |
| `id`                  | `str`                                                 |    ✅    |             |
| `cost_center_request` | [`CostCenterRequest`](../models/CostCenterRequest.md) |    ❌    |             |

### Returns

[**`CostCenterListItemResponse`**](../models/CostCenterListItemResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, OrganizationApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = OrganizationApi(client)

response = api.update_cost_center(
    "id_example",
    cost_center_request={"code": "CC Edit", "name": "Cost Edit", "description": null},
)

# Access response data
print(response)
```

______________________________________________________________________
