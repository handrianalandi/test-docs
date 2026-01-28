# MasterDataApi

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_city**](MasterDataApi.md#create_city) | **POST** /core/v1/cities | Create City
[**create_country**](MasterDataApi.md#create_country) | **POST** /core/v1/countries | Create Country
[**create_employment_type**](MasterDataApi.md#create_employment_type) | **POST** /core/v1/employment-types | Create Employment Type
[**create_religion**](MasterDataApi.md#create_religion) | **POST** /core/v1/religions | Create Religion
[**get_bank_branches**](MasterDataApi.md#get_bank_branches) | **GET** /core/v1/bank-branches | Get Bank Branches
[**get_banks**](MasterDataApi.md#get_banks) | **GET** /core/v1/banks | Get Banks
[**get_cities**](MasterDataApi.md#get_cities) | **GET** /core/v1/cities | Get Cities
[**get_countries**](MasterDataApi.md#get_countries) | **GET** /core/v1/countries | Get Countries
[**get_currencies**](MasterDataApi.md#get_currencies) | **GET** /core/v1/currencies | Get Currencies
[**get_education_levels**](MasterDataApi.md#get_education_levels) | **GET** /core/v1/education-levels | Get Education Levels
[**get_employment_status_type**](MasterDataApi.md#get_employment_status_type) | **GET** /core/v1/employment-status-types | Get Employment Status Type
[**get_employment_type**](MasterDataApi.md#get_employment_type) | **GET** /core/v1/employment-types | Get Employment Type
[**get_family_relations**](MasterDataApi.md#get_family_relations) | **GET** /core/v1/family-relations | Get Family Relations
[**get_field_of_studies**](MasterDataApi.md#get_field_of_studies) | **GET** /core/v1/field-of-studies | Get Field Of Study
[**get_historical_educations**](MasterDataApi.md#get_historical_educations) | **GET** /core/v1/educations | Get Historical Educations
[**get_identity_card**](MasterDataApi.md#get_identity_card) | **GET** /core/v1/identity-cards | Get Identity Card
[**get_institutions**](MasterDataApi.md#get_institutions) | **GET** /core/v1/institutions | Get Institutions
[**get_religions**](MasterDataApi.md#get_religions) | **GET** /core/v1/religions | Get Religions
[**get_states**](MasterDataApi.md#get_states) | **GET** /core/v1/states | Get States
[**update_employment_type**](MasterDataApi.md#update_employment_type) | **PUT** /core/v1/employment-types/{id} | Update Employment Type


# **create_city**
> CityResponse create_city(create_city_request)

Create City


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_city_request** | [**CreateCityRequest**](../models/CreateCityRequest.md)|  | 

### Return type

[**CityResponse**](../models/CityResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **create_country**
> CountryResponse create_country(country_request)

Create Country


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country_request** | [**CountryRequest**](../models/CountryRequest.md)|  | 

### Return type

[**CountryResponse**](../models/CountryResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **create_employment_type**
> EmploymentTypeResponse create_employment_type(employment_type_request)

Create Employment Type


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employment_type_request** | [**EmploymentTypeRequest**](../models/EmploymentTypeRequest.md)|  | 

### Return type

[**EmploymentTypeResponse**](../models/EmploymentTypeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **create_religion**
> ReligionResponse create_religion(religion_request)

Create Religion


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **religion_request** | [**ReligionRequest**](../models/ReligionRequest.md)|  | 

### Return type

[**ReligionResponse**](../models/ReligionResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_bank_branches**
> BankBranchPageResponse get_bank_branches()

Get Bank Branches

### Search Query
| Supported Keys     | Supported Operators | Notes                                                                                    |
|--------------------|---------------------|------------------------------------------------------------------------------------------|
| id                 | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter|



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**BankBranchPageResponse**](../models/BankBranchPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_banks**
> BankPageResponse get_banks()

Get Banks


### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**BankPageResponse**](../models/BankPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_cities**
> CityPageResponse get_cities()

Get Cities


### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**CityPageResponse**](../models/CityPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_countries**
> CountryPageResponse get_countries()

Get Countries


### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**CountryPageResponse**](../models/CountryPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_currencies**
> CurrencyPageResponse get_currencies()

Get Currencies


### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**CurrencyPageResponse**](../models/CurrencyPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_education_levels**
> EducationLevelPageResponse get_education_levels(page, size, query)

Get Education Levels


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [default to 0]
 **size** | **int**| Page size | [default to 10]
 **query** | **str**| ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                | |--------------------|---------------------|--------------------------------------------------------------------------------------| | id                 | &#x60;:&#x60;                 | Equal operator with multiple values. Each value should separated with delimiters &#x60;;&#x60; |  | 

### Return type

[**EducationLevelPageResponse**](../models/EducationLevelPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employment_status_type**
> EmploymentStatusTypePageResponse get_employment_status_type(name, employment_status_number_type, default_data)

Get Employment Status Type

### Search Query
| Supported Keys             | Supported Operators | Notes                      |
|----------------------------|---------------------|----------------------------|
| name                       | `:`                 | Like operator              |
| employmentStatusNumberType | `:`                 | Like operator              |
| defaultData                | `:`                 | Equal operator             |



### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**|  | 
 **employment_status_number_type** | **str**|  | 
 **default_data** | **str**|  | 

### Return type

[**EmploymentStatusTypePageResponse**](../models/EmploymentStatusTypePageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_employment_type**
> EmploymentTypePageResponse get_employment_type()

Get Employment Type

### Search Query
| Supported Keys        | Supported Operators | Notes                      |
|-----------------------|---------------------|----------------------------|
| name                  | `:`                 | Like operator              |
| employmentGroupCode   | `:`                 | Like operator              |
| permanent             | `:`                 | Equal operator             |
| otherLeaveStatus.code | `:`                 | Equal operator             |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**EmploymentTypePageResponse**](../models/EmploymentTypePageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_family_relations**
> FamilyMemberRelationPageResponse get_family_relations()

Get Family Relations

### Search Query
| Supported Keys          | Supported Operators | Notes                      |
|-------------------------|---------------------|----------------------------|
| name                    | `:`                 | Like operator              |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**FamilyMemberRelationPageResponse**](../models/FamilyMemberRelationPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_field_of_studies**
> FieldOfStudyPageResponse get_field_of_studies(page, size, query)

Get Field Of Study


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [default to 0]
 **size** | **int**| Page size | [default to 10]
 **query** | **str**| ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                | |--------------------|---------------------|--------------------------------------------------------------------------------------| | id                 | &#x60;:&#x60;                 | Equal operator with multiple values. Each value should separated with delimiters &#x60;;&#x60; |  | 

### Return type

[**FieldOfStudyPageResponse**](../models/FieldOfStudyPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_historical_educations**
> EducationPageResponse get_historical_educations(page, size, query)

Get Historical Educations


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [default to 0]
 **size** | **int**| Page size | [default to 10]
 **query** | **str**| ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                | |--------------------|---------------------|--------------------------------------------------------------------------------------| | id                 | &#x60;:&#x60;                 | Equal operator with multiple values. Each value should separated with delimiters &#x60;;&#x60; | | employee.id        | &#x60;:&#x60;                 | Equal operator with multiple values. Each value should separated with delimiters &#x60;;&#x60; |  | 

### Return type

[**EducationPageResponse**](../models/EducationPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_identity_card**
> IdentityCardPageResponse get_identity_card()

Get Identity Card

### Search Query
| Supported Keys          | Supported Operators | Notes                      |
|-------------------------|---------------------|----------------------------|
| name                    | `:`                 | Like operator              |



### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**IdentityCardPageResponse**](../models/IdentityCardPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_institutions**
> InstitutionPageResponse get_institutions(page, size, query)

Get Institutions


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [default to 0]
 **size** | **int**| Page size | [default to 10]
 **query** | **str**| ### Search Query | Supported Keys     | Supported Operators | Notes                                                                                | |--------------------|---------------------|--------------------------------------------------------------------------------------| | id                 | &#x60;:&#x60;                 | Equal operator with multiple values. Each value should separated with delimiters &#x60;;&#x60; |  | 

### Return type

[**InstitutionPageResponse**](../models/InstitutionPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_religions**
> ReligionPageResponse get_religions()

Get Religions


### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**ReligionPageResponse**](../models/ReligionPageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_states**
> StatePageResponse get_states()

Get States


### Example


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


### Parameters

This endpoint does not need any parameter.

### Return type

[**StatePageResponse**](../models/StatePageResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_employment_type**
> EmploymentTypeResponse update_employment_type(id, employment_type_request)

Update Employment Type


### Example


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


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **employment_type_request** | [**EmploymentTypeRequest**](../models/EmploymentTypeRequest.md)|  | 

### Return type

[**EmploymentTypeResponse**](../models/EmploymentTypeResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

