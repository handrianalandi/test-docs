# MasterDataApi

{% hint style="info" %}
All operations automatically handle authentication using the `Catapa` client. Make sure to initialize your client with valid credentials before using this API.
{% endhint %}

## Available Methods

- [`create_city()`](#create_city) - Create City
- [`create_country()`](#create_country) - Create Country
- [`create_employment_type()`](#create_employment_type) - Create Employment Type
- [`create_religion()`](#create_religion) - Create Religion
- [`get_bank_branches()`](#get_bank_branches) - Get Bank Branches
- [`get_banks()`](#get_banks) - Get Banks
- [`get_cities()`](#get_cities) - Get Cities
- [`get_countries()`](#get_countries) - Get Countries
- [`get_currencies()`](#get_currencies) - Get Currencies
- [`get_education_levels()`](#get_education_levels) - Get Education Levels
- [`get_employment_status_types()`](#get_employment_status_types) - Get Employment Status Types
- [`get_employment_types()`](#get_employment_types) - Get Employment Types
- [`get_family_relations()`](#get_family_relations) - Get Family Relations
- [`get_field_of_studies()`](#get_field_of_studies) - Get Field Of Study
- [`get_historical_educations()`](#get_historical_educations) - Get Historical Educations
- [`get_identity_card()`](#get_identity_card) - Get Identity Card
- [`get_institutions()`](#get_institutions) - Get Institutions
- [`get_religions()`](#get_religions) - Get Religions
- [`get_states()`](#get_states) - Get States
- [`update_employment_type()`](#update_employment_type) - Update Employment Type

______________________________________________________________________

## `create_city()`

> **Create City**

### Method Signature

```python
def create_city(
    self, create_city_request: CreateCityRequest = None
) -> CityResponse: ...
```

### Parameters

| Name                  | Type                                                  | Required | Description |
| :-------------------- | :---------------------------------------------------- | :------: | :---------- |
| `create_city_request` | [`CreateCityRequest`](../models/CreateCityRequest.md) |    ❌    |             |

### Returns

[**`CityResponse`**](../models/CityResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.create_city(
    create_city_request={
        "code": "91.17",
        "name": "Kab. Mappi",
        "state": {"id": "71f5c140-a699-11e6-80f5-76304dec7eb7"},
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_country()`

> **Create Country**

### Method Signature

```python
def create_country(self, country_request: CountryRequest = None) -> CountryResponse: ...
```

### Parameters

| Name              | Type                                            | Required | Description |
| :---------------- | :---------------------------------------------- | :------: | :---------- |
| `country_request` | [`CountryRequest`](../models/CountryRequest.md) |    ❌    |             |

### Returns

[**`CountryResponse`**](../models/CountryResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.create_country(
    country_request={
        "code": "IDN",
        "callingCode": "+62",
        "name": "Indonesia",
        "taxTreaty": true,
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_employment_type()`

> **Create Employment Type**

### Method Signature

```python
def create_employment_type(
    self, employment_type_request: EmploymentTypeRequest = None
) -> EmploymentTypeResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `employment_type_request` | [`EmploymentTypeRequest`](../models/EmploymentTypeRequest.md) |    ❌    |             |

### Returns

[**`EmploymentTypeResponse`**](../models/EmploymentTypeResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.create_employment_type(
    employment_type_request={
        "name": "NEW",
        "employmentGroupCode": "008",
        "monthDuration": 6,
        "permanent": false,
    }
)

# Access response data
print(response)
```

______________________________________________________________________

## `create_religion()`

> **Create Religion**

### Method Signature

```python
def create_religion(
    self, religion_request: ReligionRequest = None
) -> ReligionResponse: ...
```

### Parameters

| Name               | Type                                              | Required | Description |
| :----------------- | :------------------------------------------------ | :------: | :---------- |
| `religion_request` | [`ReligionRequest`](../models/ReligionRequest.md) |    ❌    |             |

### Returns

[**`ReligionResponse`**](../models/ReligionResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **201** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.create_religion(religion_request={"name": "Others"})

# Access response data
print(response)
```

______________________________________________________________________

## `get_bank_branches()`

> **Get Bank Branches**

### Search Query

| Supported Keys | Supported Operators | Notes                                                                                     |
| -------------- | ------------------- | ----------------------------------------------------------------------------------------- |
| id             | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |

### Method Signature

```python
def get_bank_branches(self) -> BankBranchPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`BankBranchPageResponse`**](../models/BankBranchPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_bank_branches()

# Access response data
print(response)
```

______________________________________________________________________

## `get_banks()`

> **Get Banks**

### Method Signature

```python
def get_banks(self) -> BankPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`BankPageResponse`**](../models/BankPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_banks()

# Access response data
print(response)
```

______________________________________________________________________

## `get_cities()`

> **Get Cities**

### Method Signature

```python
def get_cities(self) -> CityPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`CityPageResponse`**](../models/CityPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_cities()

# Access response data
print(response)
```

______________________________________________________________________

## `get_countries()`

> **Get Countries**

### Method Signature

```python
def get_countries(self) -> CountryPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`CountryPageResponse`**](../models/CountryPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_countries()

# Access response data
print(response)
```

______________________________________________________________________

## `get_currencies()`

> **Get Currencies**

### Method Signature

```python
def get_currencies(self) -> CurrencyPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`CurrencyPageResponse`**](../models/CurrencyPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_currencies()

# Access response data
print(response)
```

______________________________________________________________________

## `get_education_levels()`

> **Get Education Levels**

### Method Signature

```python
def get_education_levels(
    self, page: int = None, size: int = None, query: str = None
) -> EducationLevelPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`EducationLevelPageResponse`**](../models/EducationLevelPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_education_levels(
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_employment_status_types()`

> **Get Employment Status Types**

### Search Query

| Supported Keys             | Supported Operators | Notes          |
| -------------------------- | ------------------- | -------------- |
| name                       | `:`                 | Like operator  |
| employmentStatusNumberType | `:`                 | Like operator  |
| defaultData                | `:`                 | Equal operator |

### Method Signature

```python
def get_employment_status_types(
    self,
    name: str = None,
    employment_status_number_type: str = None,
    default_data: str = None,
) -> EmploymentStatusTypePageResponse: ...
```

### Parameters

| Name                            | Type  | Required | Description |
| :------------------------------ | :---- | :------: | :---------- |
| `name`                          | `str` |    ❌    |             |
| `employment_status_number_type` | `str` |    ❌    |             |
| `default_data`                  | `str` |    ❌    |             |

### Returns

[**`EmploymentStatusTypePageResponse`**](../models/EmploymentStatusTypePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_employment_status_types(
    name="name_example",
    employment_status_number_type="employment_status_number_type_example",
    default_data="default_data_example",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_employment_types()`

> **Get Employment Types**

### Search Query

| Supported Keys        | Supported Operators | Notes          |
| --------------------- | ------------------- | -------------- |
| name                  | `:`                 | Like operator  |
| employmentGroupCode   | `:`                 | Like operator  |
| permanent             | `:`                 | Equal operator |
| otherLeaveStatus.code | `:`                 | Equal operator |

### Method Signature

```python
def get_employment_types(self) -> EmploymentTypePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`EmploymentTypePageResponse`**](../models/EmploymentTypePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_employment_types()

# Access response data
print(response)
```

______________________________________________________________________

## `get_family_relations()`

> **Get Family Relations**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | `:`                 | Like operator |

### Method Signature

```python
def get_family_relations(self) -> FamilyMemberRelationPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`FamilyMemberRelationPageResponse`**](../models/FamilyMemberRelationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_family_relations()

# Access response data
print(response)
```

______________________________________________________________________

## `get_field_of_studies()`

> **Get Field Of Study**

### Method Signature

```python
def get_field_of_studies(
    self, page: int = None, size: int = None, query: str = None
) -> FieldOfStudyPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`FieldOfStudyPageResponse`**](../models/FieldOfStudyPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_field_of_studies(
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;295b44b6-f435-11e6-bc64-92361f002671",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_historical_educations()`

> **Get Historical Educations**

### Method Signature

```python
def get_historical_educations(
    self, page: int = None, size: int = None, query: str = None
) -> EducationPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`EducationPageResponse`**](../models/EducationPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_historical_educations(
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_identity_card()`

> **Get Identity Card**

### Search Query

| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | `:`                 | Like operator |

### Method Signature

```python
def get_identity_card(self) -> IdentityCardPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`IdentityCardPageResponse`**](../models/IdentityCardPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_identity_card()

# Access response data
print(response)
```

______________________________________________________________________

## `get_institutions()`

> **Get Institutions**

### Method Signature

```python
def get_institutions(
    self, page: int = None, size: int = None, query: str = None
) -> InstitutionPageResponse: ...
```

### Parameters

| Name    | Type  | Required | Description                |
| :------ | :---- | :------: | :------------------------- |
| `page`  | `int` |    ❌    | Page number (default: `0`) |
| `size`  | `int` |    ❌    | Page size (default: `10`)  |
| `query` | `str` |    ❌    | ### Search Query           |

### Returns

[**`InstitutionPageResponse`**](../models/InstitutionPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_institutions(
    page=0,
    size=10,
    query="id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;37364434-f4c9-11e6-bc64-92361f002671",
)

# Access response data
print(response)
```

______________________________________________________________________

## `get_religions()`

> **Get Religions**

### Method Signature

```python
def get_religions(self) -> ReligionPageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`ReligionPageResponse`**](../models/ReligionPageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_religions()

# Access response data
print(response)
```

______________________________________________________________________

## `get_states()`

> **Get States**

### Method Signature

```python
def get_states(self) -> StatePageResponse: ...
```

### Parameters

This method does not require any parameters.

### Returns

[**`StatePageResponse`**](../models/StatePageResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.get_states()

# Access response data
print(response)
```

______________________________________________________________________

## `update_employment_type()`

> **Update Employment Type**

### Method Signature

```python
def update_employment_type(
    self, id: str, employment_type_request: EmploymentTypeRequest = None
) -> EmploymentTypeResponse: ...
```

### Parameters

| Name                      | Type                                                          | Required | Description |
| :------------------------ | :------------------------------------------------------------ | :------: | :---------- |
| `id`                      | `str`                                                         |    ✅    |             |
| `employment_type_request` | [`EmploymentTypeRequest`](../models/EmploymentTypeRequest.md) |    ❌    |             |

### Returns

[**`EmploymentTypeResponse`**](../models/EmploymentTypeResponse.md)

### Response Codes

| Status  | Description |
| :------ | :---------- |
| **200** | OK          |
| **400** | Bad Request |

### Example Usage

```python
from catapa import Catapa, MasterDataApi

client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret",
)

api = MasterDataApi(client)

response = api.update_employment_type(
    "id_example",
    employment_type_request={
        "name": "NEW",
        "employmentGroupCode": "008",
        "monthDuration": 6,
        "permanent": false,
    },
)

# Access response data
print(response)
```

______________________________________________________________________
