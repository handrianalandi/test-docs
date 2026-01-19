# EmployeeBpjsMembershipApi

## EmployeeBpjsMembershipApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                     | HTTP request                                                        | Description                       |
| ---------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- | --------------------------------- |
| [**get\_bpjs\_healthcare\_membership**](employeebpjsmembershipapi.md#get_bpjs_healthcare_membership)       | **GET** /core/v1/employees/{employeeId}/bpjs-healthcare-memberships | Get BPJS Healthcare Membership    |
| [**get\_bpjs\_manpower\_membership**](employeebpjsmembershipapi.md#get_bpjs_manpower_membership)           | **GET** /core/v1/employees/{employeeId}/bpjs-manpower-memberships   | Get BPJS Manpower Membership      |
| [**update\_bpjs\_healthcare\_membership**](employeebpjsmembershipapi.md#update_bpjs_healthcare_membership) | **PUT** /core/v1/employees/{employeeId}/bpjs-healthcare-memberships | Update BPJS Healthcare Membership |
| [**update\_bpjs\_manpower\_membership**](employeebpjsmembershipapi.md#update_bpjs_manpower_membership)     | **PUT** /core/v1/employees/{employeeId}/bpjs-manpower-memberships   | Update BPJS Manpower Membership   |

## **get\_bpjs\_healthcare\_membership**

> BpjsHealthcareMembershipResponse get\_bpjs\_healthcare\_membership(employee\_id)

Get BPJS Healthcare Membership

#### Example

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

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **employee\_id** | **str** |             |       |

#### Return type

[**BpjsHealthcareMembershipResponse**](bpjshealthcaremembershipresponse.md)

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

[\[Back to top\]](employeebpjsmembershipapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_bpjs\_manpower\_membership**

> BpjsManpowerMembershipResponse get\_bpjs\_manpower\_membership(employee\_id)

Get BPJS Manpower Membership

#### Example

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

#### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **employee\_id** | **str** |             |       |

#### Return type

[**BpjsManpowerMembershipResponse**](bpjsmanpowermembershipresponse.md)

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

[\[Back to top\]](employeebpjsmembershipapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_bpjs\_healthcare\_membership**

> BpjsHealthcareMembershipResponse update\_bpjs\_healthcare\_membership(employee\_id, bpjs\_healthcare\_membership\_request)

Update BPJS Healthcare Membership

#### Example

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

#### Parameters

| Name                                      | Type                                                                      | Description | Notes       |
| ----------------------------------------- | ------------------------------------------------------------------------- | ----------- | ----------- |
| **employee\_id**                          | **str**                                                                   |             |             |
| **bpjs\_healthcare\_membership\_request** | [**BpjsHealthcareMembershipRequest**](bpjshealthcaremembershiprequest.md) |             | \[optional] |

#### Return type

[**BpjsHealthcareMembershipResponse**](bpjshealthcaremembershipresponse.md)

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

[\[Back to top\]](employeebpjsmembershipapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **update\_bpjs\_manpower\_membership**

> BpjsManpowerMembershipResponse update\_bpjs\_manpower\_membership(employee\_id, bpjs\_manpower\_membership\_request)

Update BPJS Manpower Membership

#### Example

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

#### Parameters

| Name                                    | Type                                                                  | Description | Notes       |
| --------------------------------------- | --------------------------------------------------------------------- | ----------- | ----------- |
| **employee\_id**                        | **str**                                                               |             |             |
| **bpjs\_manpower\_membership\_request** | [**BpjsManpowerMembershipRequest**](bpjsmanpowermembershiprequest.md) |             | \[optional] |

#### Return type

[**BpjsManpowerMembershipResponse**](bpjsmanpowermembershipresponse.md)

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

[\[Back to top\]](employeebpjsmembershipapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
