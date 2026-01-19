# MasterDataApi

## MasterDataApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                           | HTTP request                             | Description                |
| -------------------------------------------------------------------------------- | ---------------------------------------- | -------------------------- |
| [**create\_city**](masterdataapi.md#create_city)                                 | **POST** /core/v1/cities                 | Create City                |
| [**create\_country**](masterdataapi.md#create_country)                           | **POST** /core/v1/countries              | Create Country             |
| [**create\_employment\_type**](masterdataapi.md#create_employment_type)          | **POST** /core/v1/employment-types       | Create Employment Type     |
| [**create\_religion**](masterdataapi.md#create_religion)                         | **POST** /core/v1/religions              | Create Religion            |
| [**get\_bank\_branches**](masterdataapi.md#get_bank_branches)                    | **GET** /core/v1/bank-branches           | Get Bank Branches          |
| [**get\_banks**](masterdataapi.md#get_banks)                                     | **GET** /core/v1/banks                   | Get Banks                  |
| [**get\_cities**](masterdataapi.md#get_cities)                                   | **GET** /core/v1/cities                  | Get Cities                 |
| [**get\_countries**](masterdataapi.md#get_countries)                             | **GET** /core/v1/countries               | Get Countries              |
| [**get\_currencies**](masterdataapi.md#get_currencies)                           | **GET** /core/v1/currencies              | Get Currencies             |
| [**get\_education\_levels**](masterdataapi.md#get_education_levels)              | **GET** /core/v1/education-levels        | Get Education Levels       |
| [**get\_employment\_status\_type**](masterdataapi.md#get_employment_status_type) | **GET** /core/v1/employment-status-types | Get Employment Status Type |
| [**get\_employment\_type**](masterdataapi.md#get_employment_type)                | **GET** /core/v1/employment-types        | Get Employment Type        |
| [**get\_family\_relations**](masterdataapi.md#get_family_relations)              | **GET** /core/v1/family-relations        | Get Family Relations       |
| [**get\_field\_of\_studies**](masterdataapi.md#get_field_of_studies)             | **GET** /core/v1/field-of-studies        | Get Field Of Study         |
| [**get\_historical\_educations**](masterdataapi.md#get_historical_educations)    | **GET** /core/v1/educations              | Get Historical Educations  |
| [**get\_identity\_card**](masterdataapi.md#get_identity_card)                    | **GET** /core/v1/identity-cards          | Get Identity Card          |
| [**get\_institutions**](masterdataapi.md#get_institutions)                       | **GET** /core/v1/institutions            | Get Institutions           |
| [**get\_religions**](masterdataapi.md#get_religions)                             | **GET** /core/v1/religions               | Get Religions              |
| [**get\_states**](masterdataapi.md#get_states)                                   | **GET** /core/v1/states                  | Get States                 |
| [**update\_employment\_type**](masterdataapi.md#update_employment_type)          | **PUT** /core/v1/employment-types/{id}   | Update Employment Type     |

## **create\_city**

> CityResponse create\_city(create\_city\_request)

Create City

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
create_city_request = CreateCityRequest() # CreateCityRequest |  (optional)

try:
    # Create City
    api_response = api_instance.create_city(create_city_request=create_city_request)
    print("The response of MasterDataApi->create_city:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->create_city: %s\n" % e)
```

#### Parameters

| Name                      | Type                                          | Description | Notes       |
| ------------------------- | --------------------------------------------- | ----------- | ----------- |
| **create\_city\_request** | [**CreateCityRequest**](createcityrequest.md) |             | \[optional] |

#### Return type

[**CityResponse**](cityresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **201**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **create\_country**

> CountryResponse create\_country(country\_request)

Create Country

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
country_request = CountryRequest() # CountryRequest |  (optional)

try:
    # Create Country
    api_response = api_instance.create_country(country_request=country_request)
    print("The response of MasterDataApi->create_country:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->create_country: %s\n" % e)
```

#### Parameters

| Name                 | Type                                    | Description | Notes       |
| -------------------- | --------------------------------------- | ----------- | ----------- |
| **country\_request** | [**CountryRequest**](countryrequest.md) |             | \[optional] |

#### Return type

[**CountryResponse**](countryresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **201**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **create\_employment\_type**

> EmploymentTypeResponse create\_employment\_type(employment\_type\_request)

Create Employment Type

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
employment_type_request = EmploymentTypeRequest() # EmploymentTypeRequest |  (optional)

try:
    # Create Employment Type
    api_response = api_instance.create_employment_type(employment_type_request=employment_type_request)
    print("The response of MasterDataApi->create_employment_type:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->create_employment_type: %s\n" % e)
```

#### Parameters

| Name                          | Type                                                  | Description | Notes       |
| ----------------------------- | ----------------------------------------------------- | ----------- | ----------- |
| **employment\_type\_request** | [**EmploymentTypeRequest**](employmenttyperequest.md) |             | \[optional] |

#### Return type

[**EmploymentTypeResponse**](employmenttyperesponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **201**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **create\_religion**

> ReligionResponse create\_religion(religion\_request)

Create Religion

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
religion_request = ReligionRequest() # ReligionRequest |  (optional)

try:
    # Create Religion
    api_response = api_instance.create_religion(religion_request=religion_request)
    print("The response of MasterDataApi->create_religion:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->create_religion: %s\n" % e)
```

#### Parameters

| Name                  | Type                                      | Description | Notes       |
| --------------------- | ----------------------------------------- | ----------- | ----------- |
| **religion\_request** | [**ReligionRequest**](religionrequest.md) |             | \[optional] |

#### Return type

[**ReligionResponse**](religionresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **201**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_bank\_branches**

> BankBranchListResponse get\_bank\_branches()

Get Bank Branches

#### Search Query | Supported Keys | Supported Operators | Notes | |--------------------|---------------------|------------------------------------------------------------------------------------------| | id | `:` | Equal operator Support multiple values with each value separated by the `;` delimiter|

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get Bank Branches
    api_response = api_instance.get_bank_branches()
    print("The response of MasterDataApi->get_bank_branches:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_bank_branches: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**BankBranchListResponse**](bankbranchlistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_banks**

> BankListResponse get\_banks()

Get Banks

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get Banks
    api_response = api_instance.get_banks()
    print("The response of MasterDataApi->get_banks:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_banks: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**BankListResponse**](banklistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_cities**

> CityListResponse get\_cities()

Get Cities

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get Cities
    api_response = api_instance.get_cities()
    print("The response of MasterDataApi->get_cities:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_cities: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**CityListResponse**](citylistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_countries**

> CountryListResponse get\_countries()

Get Countries

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get Countries
    api_response = api_instance.get_countries()
    print("The response of MasterDataApi->get_countries:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_countries: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**CountryListResponse**](countrylistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_currencies**

> CurrencyListResponse get\_currencies()

Get Currencies

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get Currencies
    api_response = api_instance.get_currencies()
    print("The response of MasterDataApi->get_currencies:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_currencies: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**CurrencyListResponse**](currencylistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_education\_levels**

> EducationLevelListResponse get\_education\_levels(page, size, query)

Get Education Levels

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                | |--------------------|---------------------|--------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator with multiple values. Each value should separated with delimiters `;` |  (optional)

try:
    # Get Education Levels
    api_response = api_instance.get_education_levels(page=page, size=size, query=query)
    print("The response of MasterDataApi->get_education_levels:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_education_levels: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**EducationLevelListResponse**](educationlevellistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_employment\_status\_type**

> EmploymentStatusTypeListResponse get\_employment\_status\_type(name, employment\_status\_number\_type, default\_data)

Get Employment Status Type

#### Search Query | Supported Keys | Supported Operators | Notes | |----------------------------|---------------------|----------------------------| | name | `:` | Like operator | | employmentStatusNumberType | `:` | Like operator | | defaultData | `:` | Equal operator |

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
name = 'name_example' # str |  (optional)
employment_status_number_type = 'employment_status_number_type_example' # str |  (optional)
default_data = 'default_data_example' # str |  (optional)

try:
    # Get Employment Status Type
    api_response = api_instance.get_employment_status_type(name=name, employment_status_number_type=employment_status_number_type, default_data=default_data)
    print("The response of MasterDataApi->get_employment_status_type:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_employment_status_type: %s\n" % e)
```

#### Parameters

| Name                                 | Type    | Description | Notes       |
| ------------------------------------ | ------- | ----------- | ----------- |
| **name**                             | **str** |             | \[optional] |
| **employment\_status\_number\_type** | **str** |             | \[optional] |
| **default\_data**                    | **str** |             | \[optional] |

#### Return type

[**EmploymentStatusTypeListResponse**](employmentstatustypelistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_employment\_type**

> EmploymentTypeListResponse get\_employment\_type()

Get Employment Type

#### Search Query | Supported Keys | Supported Operators | Notes | |-----------------------|---------------------|----------------------------| | name | `:` | Like operator | | employmentGroupCode | `:` | Like operator | | permanent | `:` | Equal operator | | otherLeaveStatus.code | `:` | Equal operator |

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get Employment Type
    api_response = api_instance.get_employment_type()
    print("The response of MasterDataApi->get_employment_type:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_employment_type: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**EmploymentTypeListResponse**](employmenttypelistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_family\_relations**

> FamilyMemberRelationListResponse get\_family\_relations()

Get Family Relations

#### Search Query | Supported Keys | Supported Operators | Notes | |-------------------------|---------------------|----------------------------| | name | `:` | Like operator |

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get Family Relations
    api_response = api_instance.get_family_relations()
    print("The response of MasterDataApi->get_family_relations:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_family_relations: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**FamilyMemberRelationListResponse**](familymemberrelationlistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_field\_of\_studies**

> FieldOfStudyListResponse get\_field\_of\_studies(page, size, query)

Get Field Of Study

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;295b44b6-f435-11e6-bc64-92361f002671' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                | |--------------------|---------------------|--------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator with multiple values. Each value should separated with delimiters `;` |  (optional)

try:
    # Get Field Of Study
    api_response = api_instance.get_field_of_studies(page=page, size=size, query=query)
    print("The response of MasterDataApi->get_field_of_studies:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_field_of_studies: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**FieldOfStudyListResponse**](fieldofstudylistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_historical\_educations**

> EducationListResponse get\_historical\_educations(page, size, query)

Get Historical Educations

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;f38f5618-bc6c-11e6-80f5-76304dec7ec6' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                | |--------------------|---------------------|--------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator with multiple values. Each value should separated with delimiters `;` | | employee.id        | `:`                 | Equal operator with multiple values. Each value should separated with delimiters `;` |  (optional)

try:
    # Get Historical Educations
    api_response = api_instance.get_historical_educations(page=page, size=size, query=query)
    print("The response of MasterDataApi->get_historical_educations:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_historical_educations: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**EducationListResponse**](educationlistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_identity\_card**

> IdentityCardListResponse get\_identity\_card()

Get Identity Card

#### Search Query | Supported Keys | Supported Operators | Notes | |-------------------------|---------------------|----------------------------| | name | `:` | Like operator |

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get Identity Card
    api_response = api_instance.get_identity_card()
    print("The response of MasterDataApi->get_identity_card:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_identity_card: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**IdentityCardListResponse**](identitycardlistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_institutions**

> InstitutionListResponse get\_institutions(page, size, query)

Get Institutions

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:e18f5618-bc6c-11e6-80f5-76304dec7eb1;37364434-f4c9-11e6-bc64-92361f002671' # str | ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                | |--------------------|---------------------|--------------------------------------------------------------------------------------| | id                 | `:`                 | Equal operator with multiple values. Each value should separated with delimiters `;` |  (optional)

try:
    # Get Institutions
    api_response = api_instance.get_institutions(page=page, size=size, query=query)
    print("The response of MasterDataApi->get_institutions:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_institutions: %s\n" % e)
```

#### Parameters

| Name      | Type    | Description      | Notes                        |
| --------- | ------- | ---------------- | ---------------------------- |
| **page**  | **int** | Page number      | \[optional] \[default to 0]  |
| **size**  | **int** | Page size        | \[optional] \[default to 10] |
| **query** | **str** | ### Search Query | Supported Keys               |

#### Return type

[**InstitutionListResponse**](institutionlistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_religions**

> ReligionListResponse get\_religions()

Get Religions

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get Religions
    api_response = api_instance.get_religions()
    print("The response of MasterDataApi->get_religions:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_religions: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**ReligionListResponse**](religionlistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_states**

> StateListResponse get\_states()

Get States

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)

try:
    # Get States
    api_response = api_instance.get_states()
    print("The response of MasterDataApi->get_states:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->get_states: %s\n" % e)
```

#### Parameters

This endpoint does not need any parameter.

#### Return type

[**StateListResponse**](statelistresponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: Not defined
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_employment\_type**

> EmploymentTypeResponse update\_employment\_type(id, employment\_type\_request)

Update Employment Type

#### Example

```python
from catapa import Catapa, MasterDataApi, ApiException
from pprint import pprint

# Step 1: Initialize the Catapa client with your credentials
# The client automatically handles OAuth2 authentication and token refresh
client = Catapa(
    tenant="your-tenant-id",
    client_id="your-client-id",
    client_secret="your-client-secret"
)

# Step 2: Create an instance of the API class
# Tokens are automatically refreshed on every API call (5-minute buffer before expiration)
api_instance = MasterDataApi(client)
id = 'id_example' # str | 
employment_type_request = EmploymentTypeRequest() # EmploymentTypeRequest |  (optional)

try:
    # Update Employment Type
    api_response = api_instance.update_employment_type(id, employment_type_request=employment_type_request)
    print("The response of MasterDataApi->update_employment_type:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MasterDataApi->update_employment_type: %s\n" % e)
```

#### Parameters

| Name                          | Type                                                  | Description | Notes       |
| ----------------------------- | ----------------------------------------------------- | ----------- | ----------- |
| **id**                        | **str**                                               |             |             |
| **employment\_type\_request** | [**EmploymentTypeRequest**](employmenttyperequest.md) |             | \[optional] |

#### Return type

[**EmploymentTypeResponse**](employmenttyperesponse.md)

#### Authorization

[BearerAuth](../#BearerAuth)

#### HTTP request headers

* **Content-Type**: application/json
* **Accept**: application/json

#### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | Bad Request | -                |

[\[Back to top\]](masterdataapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
