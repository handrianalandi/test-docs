# EmployeeBpjsMembershipApi

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bpjs_healthcare_membership**](EmployeeBpjsMembershipApi.md#get_bpjs_healthcare_membership) | **GET** /core/v1/employees/{employeeId}/bpjs-healthcare-memberships | Get BPJS Healthcare Membership
[**get_bpjs_manpower_membership**](EmployeeBpjsMembershipApi.md#get_bpjs_manpower_membership) | **GET** /core/v1/employees/{employeeId}/bpjs-manpower-memberships | Get BPJS Manpower Membership
[**update_bpjs_healthcare_membership**](EmployeeBpjsMembershipApi.md#update_bpjs_healthcare_membership) | **PUT** /core/v1/employees/{employeeId}/bpjs-healthcare-memberships | Update BPJS Healthcare Membership
[**update_bpjs_manpower_membership**](EmployeeBpjsMembershipApi.md#update_bpjs_manpower_membership) | **PUT** /core/v1/employees/{employeeId}/bpjs-manpower-memberships | Update BPJS Manpower Membership


# **get_bpjs_healthcare_membership**
> BpjsHealthcareMembershipResponse get_bpjs_healthcare_membership(employee_id)

Get BPJS Healthcare Membership


### Example


```python
from catapa import Catapa, EmployeeBpjsMembershipApi, ApiException
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
api_instance = EmployeeBpjsMembershipApi(client)
employee_id = 'employee_id_example' # str | 

try:
    # Get BPJS Healthcare Membership
    api_response = api_instance.get_bpjs_healthcare_membership(employee_id)
    print("The response of EmployeeBpjsMembershipApi->get_bpjs_healthcare_membership:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeBpjsMembershipApi->get_bpjs_healthcare_membership: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 

### Return type

[**BpjsHealthcareMembershipResponse**](../models/BpjsHealthcareMembershipResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **get_bpjs_manpower_membership**
> BpjsManpowerMembershipResponse get_bpjs_manpower_membership(employee_id)

Get BPJS Manpower Membership


### Example


```python
from catapa import Catapa, EmployeeBpjsMembershipApi, ApiException
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
api_instance = EmployeeBpjsMembershipApi(client)
employee_id = 'employee_id_example' # str | 

try:
    # Get BPJS Manpower Membership
    api_response = api_instance.get_bpjs_manpower_membership(employee_id)
    print("The response of EmployeeBpjsMembershipApi->get_bpjs_manpower_membership:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeBpjsMembershipApi->get_bpjs_manpower_membership: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 

### Return type

[**BpjsManpowerMembershipResponse**](../models/BpjsManpowerMembershipResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_bpjs_healthcare_membership**
> BpjsHealthcareMembershipResponse update_bpjs_healthcare_membership(employee_id, bpjs_healthcare_membership_request)

Update BPJS Healthcare Membership


### Example


```python
from catapa import Catapa, EmployeeBpjsMembershipApi, ApiException
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
api_instance = EmployeeBpjsMembershipApi(client)
employee_id = 'employee_id_example' # str | 
bpjs_healthcare_membership_request = BpjsHealthcareMembershipRequest() # BpjsHealthcareMembershipRequest |  (optional)

try:
    # Update BPJS Healthcare Membership
    api_response = api_instance.update_bpjs_healthcare_membership(employee_id, bpjs_healthcare_membership_request=bpjs_healthcare_membership_request)
    print("The response of EmployeeBpjsMembershipApi->update_bpjs_healthcare_membership:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeBpjsMembershipApi->update_bpjs_healthcare_membership: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **bpjs_healthcare_membership_request** | [**BpjsHealthcareMembershipRequest**](../models/BpjsHealthcareMembershipRequest.md)|  | 

### Return type

[**BpjsHealthcareMembershipResponse**](../models/BpjsHealthcareMembershipResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)


# **update_bpjs_manpower_membership**
> BpjsManpowerMembershipResponse update_bpjs_manpower_membership(employee_id, bpjs_manpower_membership_request)

Update BPJS Manpower Membership


### Example


```python
from catapa import Catapa, EmployeeBpjsMembershipApi, ApiException
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
api_instance = EmployeeBpjsMembershipApi(client)
employee_id = 'employee_id_example' # str | 
bpjs_manpower_membership_request = BpjsManpowerMembershipRequest() # BpjsManpowerMembershipRequest |  (optional)

try:
    # Update BPJS Manpower Membership
    api_response = api_instance.update_bpjs_manpower_membership(employee_id, bpjs_manpower_membership_request=bpjs_manpower_membership_request)
    print("The response of EmployeeBpjsMembershipApi->update_bpjs_manpower_membership:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeBpjsMembershipApi->update_bpjs_manpower_membership: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_id** | **str**|  | 
 **bpjs_manpower_membership_request** | [**BpjsManpowerMembershipRequest**](../models/BpjsManpowerMembershipRequest.md)|  | 

### Return type

[**BpjsManpowerMembershipResponse**](../models/BpjsManpowerMembershipResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

