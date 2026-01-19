# OrganizationApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to *https://api.catapa.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_sub_location**](OrganizationApi.md#add_sub_location) | **POST** /core/v1/sub-locations | Add Sub Location
[**create_company**](OrganizationApi.md#create_company) | **POST** /core/v1/companies | Create Company
[**create_cost_center**](OrganizationApi.md#create_cost_center) | **POST** /core/v1/cost-centers | Create Cost Center
[**create_job_level**](OrganizationApi.md#create_job_level) | **POST** /core/v1/job-levels | Create Job Level
[**create_job_title**](OrganizationApi.md#create_job_title) | **POST** /core/v1/job-titles | Create Job Title
[**create_job_title_with_job_levels**](OrganizationApi.md#create_job_title_with_job_levels) | **POST** /core/v1/job-titles/create | Create Job Title with Job Levels
[**create_location**](OrganizationApi.md#create_location) | **POST** /core/v1/locations | Create Location
[**create_organization**](OrganizationApi.md#create_organization) | **POST** /core/v1/organizations | Create Organization
[**create_organization_group**](OrganizationApi.md#create_organization_group) | **POST** /core/v1/organization-groups | Create Organization Group
[**create_organization_hierarchies**](OrganizationApi.md#create_organization_hierarchies) | **POST** /core/v1/organization-hierarchies | Create Organization Hierarchies
[**delete_sub_location**](OrganizationApi.md#delete_sub_location) | **DELETE** /core/v1/sub-locations | Delete Sub Location
[**get_companies**](OrganizationApi.md#get_companies) | **GET** /core/v1/companies/list | Get Companies
[**get_company**](OrganizationApi.md#get_company) | **GET** /core/v1/companies | Get Company
[**get_company_groups**](OrganizationApi.md#get_company_groups) | **GET** /core/v1/company-groups | Get Company Groups
[**get_cost_center**](OrganizationApi.md#get_cost_center) | **GET** /core/v1/cost-centers | Get Cost Center
[**get_job_level**](OrganizationApi.md#get_job_level) | **GET** /core/v1/job-levels | Get Job Level
[**get_job_title**](OrganizationApi.md#get_job_title) | **GET** /core/v1/job-titles | Get Job Title
[**get_job_title_job_level_mappings**](OrganizationApi.md#get_job_title_job_level_mappings) | **GET** /core/v1/job-title-levels | Get Job Title Job Level Mappings
[**get_location_group**](OrganizationApi.md#get_location_group) | **GET** /core/v1/location-groups | Get Location Group
[**get_locations**](OrganizationApi.md#get_locations) | **GET** /core/v1/locations | Get Location
[**get_operational_groups**](OrganizationApi.md#get_operational_groups) | **GET** /core/v1/operational-groups | Get Operational Groups
[**get_organization**](OrganizationApi.md#get_organization) | **GET** /core/v1/organizations | Get Organization
[**get_organization_group**](OrganizationApi.md#get_organization_group) | **GET** /core/v1/organization-groups | Get Organization Group
[**get_organization_heads**](OrganizationApi.md#get_organization_heads) | **GET** /core/v1/organizations/heads | Get Organization Heads
[**get_organization_hierarchies**](OrganizationApi.md#get_organization_hierarchies) | **GET** /core/v1/organization-hierarchies | Get Organization Hierarchies
[**get_organization_histories**](OrganizationApi.md#get_organization_histories) | **GET** /core/v1/organizations/histories | Get Organization Histories
[**get_organization_superiors**](OrganizationApi.md#get_organization_superiors) | **GET** /core/v1/organizations/superiors | Get Organization Superiors
[**get_position_cost_centers**](OrganizationApi.md#get_position_cost_centers) | **GET** /core/v1/positions/cost-centers | Get Position Cost Centers
[**get_position_histories**](OrganizationApi.md#get_position_histories) | **GET** /core/v1/positions/histories | Get Position Histories
[**get_position_vacancy_statuses**](OrganizationApi.md#get_position_vacancy_statuses) | **GET** /core/v1/positions/vacancy-statuses | Get Position Vacancy Statuses
[**get_positions**](OrganizationApi.md#get_positions) | **GET** /core/v1/positions | Get Positions
[**get_sub_locations**](OrganizationApi.md#get_sub_locations) | **GET** /core/v1/sub-locations | Get Sub Location
[**update_cost_center**](OrganizationApi.md#update_cost_center) | **PUT** /core/v1/cost-centers/{id} | Update Cost Center


# **add_sub_location**
> SubLocationResponse add_sub_location(sub_location_request)

Add Sub Location

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
sub_location_request = SubLocationRequest() # SubLocationRequest |  (optional)

try:
    # Add Sub Location
    api_response = api_instance.add_sub_location(sub_location_request=sub_location_request)
    print("The response of OrganizationApi->add_sub_location:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->add_sub_location: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sub_location_request** | [**SubLocationRequest**](SubLocationRequest.md)|  | [optional] 

### Return type

[**SubLocationResponse**](SubLocationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_company**
> CompanyDetailResponse create_company(request, file)

Create Company

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
request = CompanyDetailRequest() # CompanyDetailRequest | 
file = None # bytearray | Upload the company logo. Allowed file types: `jpg`, `jpeg`, `png`, and `svg`. The Content-Type must be `image/jpeg`, `image/png`, or `image/svg+xml`. The maximum file size is `4MB`. (optional)

try:
    # Create Company
    api_response = api_instance.create_company(request, file=file)
    print("The response of OrganizationApi->create_company:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->create_company: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CompanyDetailRequest**](CompanyDetailRequest.md)|  | 
 **file** | **bytearray**| Upload the company logo. Allowed file types: &#x60;jpg&#x60;, &#x60;jpeg&#x60;, &#x60;png&#x60;, and &#x60;svg&#x60;. The Content-Type must be &#x60;image/jpeg&#x60;, &#x60;image/png&#x60;, or &#x60;image/svg+xml&#x60;. The maximum file size is &#x60;4MB&#x60;. | [optional] 

### Return type

[**CompanyDetailResponse**](CompanyDetailResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_cost_center**
> CostCenterListItemResponse create_cost_center(cost_center_request)

Create Cost Center

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
cost_center_request = CostCenterRequest() # CostCenterRequest |  (optional)

try:
    # Create Cost Center
    api_response = api_instance.create_cost_center(cost_center_request=cost_center_request)
    print("The response of OrganizationApi->create_cost_center:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->create_cost_center: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cost_center_request** | [**CostCenterRequest**](CostCenterRequest.md)|  | [optional] 

### Return type

[**CostCenterListItemResponse**](CostCenterListItemResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_job_level**
> JobLevelResponse create_job_level(job_level_request)

Create Job Level

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
job_level_request = JobLevelRequest() # JobLevelRequest |  (optional)

try:
    # Create Job Level
    api_response = api_instance.create_job_level(job_level_request=job_level_request)
    print("The response of OrganizationApi->create_job_level:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->create_job_level: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_level_request** | [**JobLevelRequest**](JobLevelRequest.md)|  | [optional] 

### Return type

[**JobLevelResponse**](JobLevelResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_job_title**
> JobTitleResponse create_job_title(job_title_request_deprecated)

Create Job Title

⚠️ **This endpoint is deprecated.**       Please use [Create Job Title with Job Levels](https://api-docs.catapa.com/#tag/organization/operation/createJobTitleWithJobLevels) instead. 

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
job_title_request_deprecated = JobTitleRequestDeprecated() # JobTitleRequestDeprecated |  (optional)

try:
    # Create Job Title
    api_response = api_instance.create_job_title(job_title_request_deprecated=job_title_request_deprecated)
    print("The response of OrganizationApi->create_job_title:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->create_job_title: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_title_request_deprecated** | [**JobTitleRequestDeprecated**](JobTitleRequestDeprecated.md)|  | [optional] 

### Return type

[**JobTitleResponse**](JobTitleResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_job_title_with_job_levels**
> JobTitleWithJobLevelsResponse create_job_title_with_job_levels(job_title_request)

Create Job Title with Job Levels

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
job_title_request = JobTitleRequest() # JobTitleRequest |  (optional)

try:
    # Create Job Title with Job Levels
    api_response = api_instance.create_job_title_with_job_levels(job_title_request=job_title_request)
    print("The response of OrganizationApi->create_job_title_with_job_levels:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->create_job_title_with_job_levels: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_title_request** | [**JobTitleRequest**](JobTitleRequest.md)|  | [optional] 

### Return type

[**JobTitleWithJobLevelsResponse**](JobTitleWithJobLevelsResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_location**
> LocationResponse create_location(location_create_request)

Create Location

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
location_create_request = LocationCreateRequest() # LocationCreateRequest |  (optional)

try:
    # Create Location
    api_response = api_instance.create_location(location_create_request=location_create_request)
    print("The response of OrganizationApi->create_location:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->create_location: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location_create_request** | [**LocationCreateRequest**](LocationCreateRequest.md)|  | [optional] 

### Return type

[**LocationResponse**](LocationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_organization**
> OrganizationResponse create_organization(organization_request)

Create Organization

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
organization_request = OrganizationRequest() # OrganizationRequest |  (optional)

try:
    # Create Organization
    api_response = api_instance.create_organization(organization_request=organization_request)
    print("The response of OrganizationApi->create_organization:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->create_organization: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_request** | [**OrganizationRequest**](OrganizationRequest.md)|  | [optional] 

### Return type

[**OrganizationResponse**](OrganizationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_organization_group**
> IdCodeNameResponse create_organization_group(organization_group_request)

Create Organization Group

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
organization_group_request = OrganizationGroupRequest() # OrganizationGroupRequest |  (optional)

try:
    # Create Organization Group
    api_response = api_instance.create_organization_group(organization_group_request=organization_group_request)
    print("The response of OrganizationApi->create_organization_group:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->create_organization_group: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_group_request** | [**OrganizationGroupRequest**](OrganizationGroupRequest.md)|  | [optional] 

### Return type

[**IdCodeNameResponse**](IdCodeNameResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_organization_hierarchies**
> OrganizationHierarchyResponse create_organization_hierarchies(organization_hierarchy_request)

Create Organization Hierarchies

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
organization_hierarchy_request = OrganizationHierarchyRequest() # OrganizationHierarchyRequest |  (optional)

try:
    # Create Organization Hierarchies
    api_response = api_instance.create_organization_hierarchies(organization_hierarchy_request=organization_hierarchy_request)
    print("The response of OrganizationApi->create_organization_hierarchies:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->create_organization_hierarchies: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_hierarchy_request** | [**OrganizationHierarchyRequest**](OrganizationHierarchyRequest.md)|  | [optional] 

### Return type

[**OrganizationHierarchyResponse**](OrganizationHierarchyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **delete_sub_location**
> BulkOperationResponse delete_sub_location()

Delete Sub Location

This endpoint expects a JSON array in the request body,  where each item is an object containing an `id` field representing the sub-location to delete. The array must contain at least 1 item. **Request body schema:** ```json [   { \"id\": \"string\" } ] ``` **Example payload:** ```json [   { \"id\": \"a31aa166-70be-4303-81e4-5ada93b5213a\" } ] ``` 

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)

try:
    # Delete Sub Location
    api_response = api_instance.delete_sub_location()
    print("The response of OrganizationApi->delete_sub_location:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->delete_sub_location: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**BulkOperationResponse**](BulkOperationResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_companies**
> CompanyListResponse get_companies(page, size, query)

Get Companies

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'name:Catapa' # str | ### Search query   | Supported Keys         | Supported Operators | Notes                                                         | |------------------------|---------------------|---------------------------------------------------------------| | name                   | `:`                 | Equal operator                                                | | companySuperior.id     | `:`                 | Equal operator                                                |  (optional)

try:
    # Get Companies
    api_response = api_instance.get_companies(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_companies:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_companies: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search query   | Supported Keys         | Supported Operators | Notes                                                         | |------------------------|---------------------|---------------------------------------------------------------| | name                   | &#x60;:&#x60;                 | Equal operator                                                | | companySuperior.id     | &#x60;:&#x60;                 | Equal operator                                                |  | [optional] 

### Return type

[**CompanyListResponse**](CompanyListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_company**
> CompanyDetailResponse get_company()

Get Company

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)

try:
    # Get Company
    api_response = api_instance.get_company()
    print("The response of OrganizationApi->get_company:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_company: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**CompanyDetailResponse**](CompanyDetailResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_company_groups**
> CompanyGroupListResponse get_company_groups(page, size, query)

Get Company Groups

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'code:CG-1' # str | ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | code            | `:`                 | Like operator                                                                             | | name            | `:`                 | Like operator                                                                             |  (optional)

try:
    # Get Company Groups
    api_response = api_instance.get_company_groups(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_company_groups:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_company_groups: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | code            | &#x60;:&#x60;                 | Like operator                                                                             | | name            | &#x60;:&#x60;                 | Like operator                                                                             |  | [optional] 

### Return type

[**CompanyGroupListResponse**](CompanyGroupListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_cost_center**
> CostCenterListResponse get_cost_center()

Get Cost Center

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)

try:
    # Get Cost Center
    api_response = api_instance.get_cost_center()
    print("The response of OrganizationApi->get_cost_center:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_cost_center: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**CostCenterListResponse**](CostCenterListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_job_level**
> JobLevelListResponse get_job_level()

Get Job Level

### Search Query | Supported Keys | Supported Operators | Notes                                                                             | |----------------|---------------------|-----------------------------------------------------------------------------------| | name           | `:`                 | Like operator                                                                     | | code           | `:`                 | Like operator                                                                     | | jobPosistionId | `:`                 | Like operator                                                                     | | level          | `:`<br/>`>`<br/>`<` | Equal operator<br/>Greater than or equal operator<br/>Less than or equal operator | 

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)

try:
    # Get Job Level
    api_response = api_instance.get_job_level()
    print("The response of OrganizationApi->get_job_level:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_job_level: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**JobLevelListResponse**](JobLevelListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_job_title**
> JobTitleListResponse get_job_title(page, size, query)

Get Job Title

minJobLevel and maxJobLevel are deprecated. check Tenant Job Hierarchy Policy setting, it may cause error to this endpoint 

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'query_example' # str | ### Search Query | Supported Keys | Supported Operators | Notes                      | |----------------|---------------------|----------------------------| | name           | `:`                 | Like operator              | | code           | `:`                 | Like operator              | | minJobLevelId  | `:`                 | Equal operator(Deprecated) | | maxJobLevelId  | `:`                 | Equal operator(Deprecated) |  (optional)

try:
    # Get Job Title
    api_response = api_instance.get_job_title(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_job_title:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_job_title: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys | Supported Operators | Notes                      | |----------------|---------------------|----------------------------| | name           | &#x60;:&#x60;                 | Like operator              | | code           | &#x60;:&#x60;                 | Like operator              | | minJobLevelId  | &#x60;:&#x60;                 | Equal operator(Deprecated) | | maxJobLevelId  | &#x60;:&#x60;                 | Equal operator(Deprecated) |  | [optional] 

### Return type

[**JobTitleListResponse**](JobTitleListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_job_title_job_level_mappings**
> JobTitleLevelMappingListResponse get_job_title_job_level_mappings(page, size, query)

Get Job Title Job Level Mappings

minJobLevel and MaxJobLevel are deprecated. 

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'jobTitle.id:ff6ba12f-adc2-4d9e-910c-9a9a91b062b9;ff6ba12f-adc2-4d9e-910c-9a9a91b06200' # str | ### Search Query | Supported Keys | Supported Operators | Notes                                                                                     | |----------------|---------------------|-------------------------------------------------------------------------------------------| | jobLevel.code  | `:`                 | Like operator                                                                             | | jobLevel.name  | `:`                 | Like operator                                                                             | | jobTitle.id    | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | jobLevel.id    | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |  (optional)

try:
    # Get Job Title Job Level Mappings
    api_response = api_instance.get_job_title_job_level_mappings(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_job_title_job_level_mappings:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_job_title_job_level_mappings: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys | Supported Operators | Notes                                                                                     | |----------------|---------------------|-------------------------------------------------------------------------------------------| | jobLevel.code  | &#x60;:&#x60;                 | Like operator                                                                             | | jobLevel.name  | &#x60;:&#x60;                 | Like operator                                                                             | | jobTitle.id    | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | jobLevel.id    | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter |  | [optional] 

### Return type

[**JobTitleLevelMappingListResponse**](JobTitleLevelMappingListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_location_group**
> LocationGroupListResponse get_location_group()

Get Location Group

### Search Query | Supported Keys | Supported Operators | Notes                      | |----------------|---------------------|----------------------------| | name           | `:`                 | Like operator              | | code           | `:`                 | Like operator              | 

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)

try:
    # Get Location Group
    api_response = api_instance.get_location_group()
    print("The response of OrganizationApi->get_location_group:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_location_group: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**LocationGroupListResponse**](LocationGroupListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_locations**
> LocationListResponse get_locations(page, size, query)

Get Location

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'code:JKT' # str | ### Search query   | Supported Keys    | Supported Operators | Notes                                                                                                              | |-------------------|---------------------|-------------------------------------------------------------------------------------------------------------------| | name              | `:`                 | Like operator                                                                                                      | | code              | `:`                 | Like operator                                                                                                      | | zipCode           | `:`                 | Equal operator                                                                                                     | | phone             | `:`                 | Equal operator                                                                                                     | | address           | `:`                 | Equal operator                                                                                                     | | locationGroupId   | `:`                 | Equal operator                                                                                                     | | cityId            | `:`                 | Equal operator                                                                                                     |  (optional)

try:
    # Get Location
    api_response = api_instance.get_locations(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_locations:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_locations: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search query   | Supported Keys    | Supported Operators | Notes                                                                                                              | |-------------------|---------------------|-------------------------------------------------------------------------------------------------------------------| | name              | &#x60;:&#x60;                 | Like operator                                                                                                      | | code              | &#x60;:&#x60;                 | Like operator                                                                                                      | | zipCode           | &#x60;:&#x60;                 | Equal operator                                                                                                     | | phone             | &#x60;:&#x60;                 | Equal operator                                                                                                     | | address           | &#x60;:&#x60;                 | Equal operator                                                                                                     | | locationGroupId   | &#x60;:&#x60;                 | Equal operator                                                                                                     | | cityId            | &#x60;:&#x60;                 | Equal operator                                                                                                     |  | [optional] 

### Return type

[**LocationListResponse**](LocationListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_operational_groups**
> OperationalGroupListResponse get_operational_groups(page, size, query)

Get Operational Groups

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:a31aa166-70be-4303-81e4-5ada93b5213a' # str | ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | name            | `:`                 | Like operator                                                                             | | code            | `:`                 | Like operator                                                                             |  (optional)

try:
    # Get Operational Groups
    api_response = api_instance.get_operational_groups(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_operational_groups:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_operational_groups: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | name            | &#x60;:&#x60;                 | Like operator                                                                             | | code            | &#x60;:&#x60;                 | Like operator                                                                             |  | [optional] 

### Return type

[**OperationalGroupListResponse**](OperationalGroupListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_organization**
> OrganizationListResponse get_organization()

Get Organization

### Search Query   | Supported Keys          | Supported Operators | Notes                                                                           |   |-------------------------|---------------------|---------------------------------------------------------------------------------|   | id                      | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |   | name                    | `:`                 | Like operator                                                                   |   | code                    | `:`                 | Like operator                                                                   |   | type                    | `:`                 | Equal operator                                                                  |   | organizationGroupId     | `:`                 | Equal operator                                                                  |   | organizationHierarchyId | `:`                 | Equal operator                                                                  |   | organizationParentId    | `:`                 | Equal operator                                                                  |   | haveParent              | `:`                 | Equal operator                                                                  |   | organizationChildrenId  | `:`                 | Equal operator                                                                  |   | level                   | `:`<br>`<`<br>`>`   | Equal operator<br>Less than or equal operator<br>Greater than or equal operator |   | company.id              | `:`                 | Equal operator                                                                  |   | effectiveDate           | `<`<br>`>`          | Less than or equal operator<br>Greater than or equal operator                   |   | endDate                 | `<`<br>`>`          | Less than or equal operator<br>Greater than or equal operator                   |   | endDateIsNull           | `:`                 | Equal operator                                                                  | 

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)

try:
    # Get Organization
    api_response = api_instance.get_organization()
    print("The response of OrganizationApi->get_organization:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_organization: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**OrganizationListResponse**](OrganizationListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_organization_group**
> OrganizationGroupListResponse get_organization_group()

Get Organization Group

### Search Query | Supported Keys | Supported Operators | Notes                      | |----------------|---------------------|----------------------------| | name           | `:`                 | Like operator              | | code           | `:`                 | Like operator              | 

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)

try:
    # Get Organization Group
    api_response = api_instance.get_organization_group()
    print("The response of OrganizationApi->get_organization_group:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_organization_group: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**OrganizationGroupListResponse**](OrganizationGroupListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_organization_heads**
> OrganizationHeadListResponse get_organization_heads(page, size, query)

Get Organization Heads

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21' # str | ### Search Query   | Supported Keys          | Supported Operators | Notes                                                                                     |   |-------------------------|---------------------|-------------------------------------------------------------------------------------------|   | id                      | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |   | organization.company.id | `:`                 | Equal operator                                                                            |   | organization.id         | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |  (optional)

try:
    # Get Organization Heads
    api_response = api_instance.get_organization_heads(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_organization_heads:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_organization_heads: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query   | Supported Keys          | Supported Operators | Notes                                                                                     |   |-------------------------|---------------------|-------------------------------------------------------------------------------------------|   | id                      | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter |   | organization.company.id | &#x60;:&#x60;                 | Equal operator                                                                            |   | organization.id         | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter |  | [optional] 

### Return type

[**OrganizationHeadListResponse**](OrganizationHeadListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_organization_hierarchies**
> OrganizationHierarchyListResponse get_organization_hierarchies()

Get Organization Hierarchies

### Search Query | Supported Keys | Supported Operators | Notes                                                                           | |----------------|---------------------|---------------------------------------------------------------------------------| | name           | `:`                 | Like operator                                                                   | | code           | `:`                 | Like operator                                                                   | | color          | `:`                 | Like operator                                                                   | | level          | `:`<br>`<`<br>`>`   | Equal operator<br>Less than or equal operator<br>Greater than or equal operator | 

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)

try:
    # Get Organization Hierarchies
    api_response = api_instance.get_organization_hierarchies()
    print("The response of OrganizationApi->get_organization_hierarchies:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_organization_hierarchies: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**OrganizationHierarchyListResponse**](OrganizationHierarchyListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_organization_histories**
> OrganizationHistoryListResponse get_organization_histories(page, size, query)

Get Organization Histories

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21' # str | ### Search Query | Supported Keys       | Supported Operators | Notes                                                                                     | |---------------------|---------------------|-------------------------------------------------------------------------------------------| | id                  | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | organization.id     | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | type                | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | organization.company.id          | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | organizationGroup.id| `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | effectiveDate       | `>`, `<`            | Greater than or equal / Less than or equal operators<br/>Date format: YYYY-MM-DD         | | endDate             | `>`, `<`            | Greater than or equal / Less than or equal operators<br/>Date format: YYYY-MM-DD         |  (optional)

try:
    # Get Organization Histories
    api_response = api_instance.get_organization_histories(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_organization_histories:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_organization_histories: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys       | Supported Operators | Notes                                                                                     | |---------------------|---------------------|-------------------------------------------------------------------------------------------| | id                  | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | organization.id     | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | type                | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | organization.company.id          | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | organizationGroup.id| &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | effectiveDate       | &#x60;&gt;&#x60;, &#x60;&lt;&#x60;            | Greater than or equal / Less than or equal operators&lt;br/&gt;Date format: YYYY-MM-DD         | | endDate             | &#x60;&gt;&#x60;, &#x60;&lt;&#x60;            | Greater than or equal / Less than or equal operators&lt;br/&gt;Date format: YYYY-MM-DD         |  | [optional] 

### Return type

[**OrganizationHistoryListResponse**](OrganizationHistoryListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_organization_superiors**
> OrganizationSuperiorListResponse get_organization_superiors(page, size, query)

Get Organization Superiors

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:org-001;org-002' # str | ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | organization.id | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | superior.id     | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | effectiveDate   | `gte`, `lte`        | Greater than or equal / Less than or equal operators<br/>Date format: YYYY-MM-DD         |  (optional)

try:
    # Get Organization Superiors
    api_response = api_instance.get_organization_superiors(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_organization_superiors:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_organization_superiors: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | organization.id | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | superior.id     | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | effectiveDate   | &#x60;gte&#x60;, &#x60;lte&#x60;        | Greater than or equal / Less than or equal operators&lt;br/&gt;Date format: YYYY-MM-DD         |  | [optional] 

### Return type

[**OrganizationSuperiorListResponse**](OrganizationSuperiorListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_position_cost_centers**
> PositionCostCenterListResponse get_position_cost_centers(page, size, query)

Get Position Cost Centers

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21' # str | ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | position.id     | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |  (optional)

try:
    # Get Position Cost Centers
    api_response = api_instance.get_position_cost_centers(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_position_cost_centers:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_position_cost_centers: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | position.id     | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter |  | [optional] 

### Return type

[**PositionCostCenterListResponse**](PositionCostCenterListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_position_histories**
> PositionHistoryListResponse get_position_histories(page, size, query)

Get Position Histories

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21' # str | ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | position.id     | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | organization.id | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |  (optional)

try:
    # Get Position Histories
    api_response = api_instance.get_position_histories(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_position_histories:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_position_histories: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | position.id     | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | organization.id | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter |  | [optional] 

### Return type

[**PositionHistoryListResponse**](PositionHistoryListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_position_vacancy_statuses**
> PositionVacancyStatusListResponse get_position_vacancy_statuses(page, size, query)

Get Position Vacancy Statuses

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:a31aa166-70be-4303-81e4-5ada93b5213a;0332e2b1-ba56-4a33-9d8a-6e66a4acde21' # str | ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | position.id     | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | vacancyStatus   | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |  (optional)

try:
    # Get Position Vacancy Statuses
    api_response = api_instance.get_position_vacancy_statuses(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_position_vacancy_statuses:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_position_vacancy_statuses: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | position.id     | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | vacancyStatus   | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter |  | [optional] 

### Return type

[**PositionVacancyStatusListResponse**](PositionVacancyStatusListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_positions**
> PositionListResponse get_positions(page, size, query)

Get Positions

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'query_example' # str | Get a list of positions with pagination support. ### Search Query   | Supported Keys          | Supported Operators | Notes                                                                           |   |-------------------------|---------------------|---------------------------------------------------------------------------------|   | id                      | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter |   | name                    | `:`                 | Like operator                                                                   |   | code                    | `:`                 | Like operator                                                                   |  (optional)

try:
    # Get Positions
    api_response = api_instance.get_positions(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_positions:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_positions: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| Get a list of positions with pagination support. ### Search Query   | Supported Keys          | Supported Operators | Notes                                                                           |   |-------------------------|---------------------|---------------------------------------------------------------------------------|   | id                      | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter |   | name                    | &#x60;:&#x60;                 | Like operator                                                                   |   | code                    | &#x60;:&#x60;                 | Like operator                                                                   |  | [optional] 

### Return type

[**PositionListResponse**](PositionListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **get_sub_locations**
> SubLocationListResponse get_sub_locations(page, size, query)

Get Sub Location

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
page = 0 # int | Page number (optional) (default to 0)
size = 10 # int | Page size (optional) (default to 10)
query = 'id:a31aa166-70be-4303-81e4-5ada93b5213a' # str | ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | `:`                 | Equal operator<br/>Support multiple values with each value separated by the `;` delimiter | | name            | `:`                 | Like operator                                                                             | | code            | `:`                 | Like operator                                                                             | | location.id     | `:`                 | Equal operator                                                                            |  (optional)

try:
    # Get Sub Location
    api_response = api_instance.get_sub_locations(page=page, size=size, query=query)
    print("The response of OrganizationApi->get_sub_locations:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->get_sub_locations: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **size** | **int**| Page size | [optional] [default to 10]
 **query** | **str**| ### Search Query | Supported Keys  | Supported Operators | Notes                                                                                     | |-----------------|---------------------|-------------------------------------------------------------------------------------------| | id              | &#x60;:&#x60;                 | Equal operator&lt;br/&gt;Support multiple values with each value separated by the &#x60;;&#x60; delimiter | | name            | &#x60;:&#x60;                 | Like operator                                                                             | | code            | &#x60;:&#x60;                 | Like operator                                                                             | | location.id     | &#x60;:&#x60;                 | Equal operator                                                                            |  | [optional] 

### Return type

[**SubLocationListResponse**](SubLocationListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_cost_center**
> CostCenterListItemResponse update_cost_center(id, cost_center_request)

Update Cost Center

### Example


```python
from catapa import Catapa, OrganizationApi, ApiException
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
api_instance = OrganizationApi(client)
id = 'id_example' # str | 
cost_center_request = CostCenterRequest() # CostCenterRequest |  (optional)

try:
    # Update Cost Center
    api_response = api_instance.update_cost_center(id, cost_center_request=cost_center_request)
    print("The response of OrganizationApi->update_cost_center:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationApi->update_cost_center: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **cost_center_request** | [**CostCenterRequest**](CostCenterRequest.md)|  | [optional] 

### Return type

[**CostCenterListItemResponse**](CostCenterListItemResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

