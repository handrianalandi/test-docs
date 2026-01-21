# TimeManagementApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!  
> **✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to the `base_url` specified in the Catapa client constructor (default: *https://api.catapa.com*)

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_attendance_machine_data**](TimeManagementApi.md#create_attendance_machine_data) | **POST** /timemanagement/v1/fingerprints | Create Attendance Machine Data
[**create_employee_roster_configuration**](TimeManagementApi.md#create_employee_roster_configuration) | **POST** /timemanagement/v1/employee-workday-configurations | Create Employee Roster Configuration
[**create_leave_balance**](TimeManagementApi.md#create_leave_balance) | **POST** /timemanagement/v1/leave-balances | Create Leave Balance
[**create_other_leave_balance**](TimeManagementApi.md#create_other_leave_balance) | **POST** /timemanagement/v1/other-leave-balances | Create Other Leave Balance
[**create_shift_pattern_template**](TimeManagementApi.md#create_shift_pattern_template) | **POST** /timemanagement/v1/shift-pattern-templates | Create Shift Pattern Template
[**create_workgroup_roster_configuration**](TimeManagementApi.md#create_workgroup_roster_configuration) | **POST** /timemanagement/v1/workgroup-workday-configurations | Create Workgroup Roster Configuration
[**delete_employee_roster_configuration**](TimeManagementApi.md#delete_employee_roster_configuration) | **DELETE** /timemanagement/v1/employee-workday-configurations/{id} | Delete Employee Roster Configuration
[**delete_shift_pattern_template**](TimeManagementApi.md#delete_shift_pattern_template) | **DELETE** /timemanagement/v1/shift-pattern-templates/{id} | Delete Shift Pattern Template
[**delete_workgroup_roster_configuration**](TimeManagementApi.md#delete_workgroup_roster_configuration) | **DELETE** /timemanagement/v1/workgroup-workday-configurations/{id} | Delete Workgroup Roster Configuration
[**read_attendance**](TimeManagementApi.md#read_attendance) | **GET** /timemanagement/v1/attendances | Read Attendance
[**read_attendance_recapitulation_detail**](TimeManagementApi.md#read_attendance_recapitulation_detail) | **GET** /timemanagement/v1/attendance-recapitulations/details | Read Attendance Recapitulation Detail
[**read_employee_roster_configuration**](TimeManagementApi.md#read_employee_roster_configuration) | **GET** /timemanagement/v1/employee-workday-configurations | Read Employee Roster Configuration
[**read_employee_roster_configuration_by_id**](TimeManagementApi.md#read_employee_roster_configuration_by_id) | **GET** /timemanagement/v1/employee-workday-configurations/{id} | Read Employee Roster Configuration By Id
[**read_holiday**](TimeManagementApi.md#read_holiday) | **GET** /timemanagement/v1/holidays | Read Holiday
[**read_leave_balance**](TimeManagementApi.md#read_leave_balance) | **GET** /timemanagement/v1/leave-balances | Read Leave Balance
[**read_other_leave_balance**](TimeManagementApi.md#read_other_leave_balance) | **GET** /timemanagement/v1/other-leave-balances | Read Other Leave Balance
[**read_shift_pattern_template**](TimeManagementApi.md#read_shift_pattern_template) | **GET** /timemanagement/v1/shift-pattern-templates | Read Shift Pattern Template
[**read_shift_pattern_template_by_id**](TimeManagementApi.md#read_shift_pattern_template_by_id) | **GET** /timemanagement/v1/shift-pattern-templates/{id} | Read Shift Pattern Template By Id
[**read_workgroup_roster_configuration**](TimeManagementApi.md#read_workgroup_roster_configuration) | **GET** /timemanagement/v1/workgroup-workday-configurations | Read Workgroup Roster Configuration
[**read_workgroup_roster_configuration_by_id**](TimeManagementApi.md#read_workgroup_roster_configuration_by_id) | **GET** /timemanagement/v1/workgroup-workday-configurations/{id} | Read Workgroup Roster Configuration By ID
[**update_employee_roster_configuration**](TimeManagementApi.md#update_employee_roster_configuration) | **PUT** /timemanagement/v1/employee-workday-configurations/{id} | Update Employee Roster Configuration
[**update_shift_pattern_template**](TimeManagementApi.md#update_shift_pattern_template) | **PUT** /timemanagement/v1/shift-pattern-templates/{id} | Update Shift Pattern Template
[**update_workgroup_roster_configuration**](TimeManagementApi.md#update_workgroup_roster_configuration) | **PUT** /timemanagement/v1/workgroup-workday-configurations/{id} | Update Workgroup Roster Configuration


# **create_attendance_machine_data**
> FingerprintResponse create_attendance_machine_data(fingerprint_item_request)

Create Attendance Machine Data


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
fingerprint_item_request = List[FingerprintItemRequest]() # List[FingerprintItemRequest] |  (optional)

try:
    # Create Attendance Machine Data
    api_response = api_instance.create_attendance_machine_data(fingerprint_item_request=fingerprint_item_request)
    print("The response of TimeManagementApi->create_attendance_machine_data:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->create_attendance_machine_data: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fingerprint_item_request** | [**List[FingerprintItemRequest]**](FingerprintItemRequest.md)|  | [optional] 

### Return type

[**FingerprintResponse**](FingerprintResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_employee_roster_configuration**
> EmployeeWorkdayConfigurationResponse create_employee_roster_configuration(employee_workday_configuration_request)

Create Employee Roster Configuration


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
employee_workday_configuration_request = EmployeeWorkdayConfigurationRequest() # EmployeeWorkdayConfigurationRequest |  (optional)

try:
    # Create Employee Roster Configuration
    api_response = api_instance.create_employee_roster_configuration(employee_workday_configuration_request=employee_workday_configuration_request)
    print("The response of TimeManagementApi->create_employee_roster_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->create_employee_roster_configuration: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **employee_workday_configuration_request** | [**EmployeeWorkdayConfigurationRequest**](EmployeeWorkdayConfigurationRequest.md)|  | [optional] 

### Return type

[**EmployeeWorkdayConfigurationResponse**](EmployeeWorkdayConfigurationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_leave_balance**
> LeaveBalanceItemResponse create_leave_balance(leave_balance_request)

Create Leave Balance


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
leave_balance_request = LeaveBalanceRequest() # LeaveBalanceRequest |  (optional)

try:
    # Create Leave Balance
    api_response = api_instance.create_leave_balance(leave_balance_request=leave_balance_request)
    print("The response of TimeManagementApi->create_leave_balance:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->create_leave_balance: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **leave_balance_request** | [**LeaveBalanceRequest**](LeaveBalanceRequest.md)|  | [optional] 

### Return type

[**LeaveBalanceItemResponse**](LeaveBalanceItemResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_other_leave_balance**
> OtherLeaveBalanceCreateResponse create_other_leave_balance(other_leave_balance_request)

Create Other Leave Balance


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
other_leave_balance_request = OtherLeaveBalanceRequest() # OtherLeaveBalanceRequest |  (optional)

try:
    # Create Other Leave Balance
    api_response = api_instance.create_other_leave_balance(other_leave_balance_request=other_leave_balance_request)
    print("The response of TimeManagementApi->create_other_leave_balance:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->create_other_leave_balance: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **other_leave_balance_request** | [**OtherLeaveBalanceRequest**](OtherLeaveBalanceRequest.md)|  | [optional] 

### Return type

[**OtherLeaveBalanceCreateResponse**](OtherLeaveBalanceCreateResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_shift_pattern_template**
> ShiftPatternTemplateListItemResponse create_shift_pattern_template(shift_pattern_template_request)

Create Shift Pattern Template


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
shift_pattern_template_request = ShiftPatternTemplateRequest() # ShiftPatternTemplateRequest |  (optional)

try:
    # Create Shift Pattern Template
    api_response = api_instance.create_shift_pattern_template(shift_pattern_template_request=shift_pattern_template_request)
    print("The response of TimeManagementApi->create_shift_pattern_template:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->create_shift_pattern_template: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shift_pattern_template_request** | [**ShiftPatternTemplateRequest**](ShiftPatternTemplateRequest.md)|  | [optional] 

### Return type

[**ShiftPatternTemplateListItemResponse**](ShiftPatternTemplateListItemResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **create_workgroup_roster_configuration**
> WorkgroupWorkdayConfigurationResponse create_workgroup_roster_configuration(workgroup_workday_configuration_request)

Create Workgroup Roster Configuration


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
workgroup_workday_configuration_request = WorkgroupWorkdayConfigurationRequest() # WorkgroupWorkdayConfigurationRequest |  (optional)

try:
    # Create Workgroup Roster Configuration
    api_response = api_instance.create_workgroup_roster_configuration(workgroup_workday_configuration_request=workgroup_workday_configuration_request)
    print("The response of TimeManagementApi->create_workgroup_roster_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->create_workgroup_roster_configuration: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workgroup_workday_configuration_request** | [**WorkgroupWorkdayConfigurationRequest**](WorkgroupWorkdayConfigurationRequest.md)|  | [optional] 

### Return type

[**WorkgroupWorkdayConfigurationResponse**](WorkgroupWorkdayConfigurationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **delete_employee_roster_configuration**
> object delete_employee_roster_configuration(id)

Delete Employee Roster Configuration


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
id = 'id_example' # str | 

try:
    # Delete Employee Roster Configuration
    api_response = api_instance.delete_employee_roster_configuration(id)
    print("The response of TimeManagementApi->delete_employee_roster_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->delete_employee_roster_configuration: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **delete_shift_pattern_template**
> object delete_shift_pattern_template(id)

Delete Shift Pattern Template


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
id = 'id_example' # str | 

try:
    # Delete Shift Pattern Template
    api_response = api_instance.delete_shift_pattern_template(id)
    print("The response of TimeManagementApi->delete_shift_pattern_template:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->delete_shift_pattern_template: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **delete_workgroup_roster_configuration**
> object delete_workgroup_roster_configuration(id)

Delete Workgroup Roster Configuration


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
id = 'id_example' # str | 

try:
    # Delete Workgroup Roster Configuration
    api_response = api_instance.delete_workgroup_roster_configuration(id)
    print("The response of TimeManagementApi->delete_workgroup_roster_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->delete_workgroup_roster_configuration: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

**object**

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_attendance**
> AttendanceListResponse read_attendance()

Read Attendance

### Search Query
| Supported Keys                | Supported Operators | Notes                                             |
| ----------------------------- | ------------------- | ------------------------------------------------- |
| employee.identificationNumber | :                   | Like                                              |
| date                          | \><br><             | Greater than or equal to<br>Less than or equal to |



### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)

try:
    # Read Attendance
    api_response = api_instance.read_attendance()
    print("The response of TimeManagementApi->read_attendance:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_attendance: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**AttendanceListResponse**](AttendanceListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_attendance_recapitulation_detail**
> AttendanceRecapitulationDetailListResponse read_attendance_recapitulation_detail()

Read Attendance Recapitulation Detail

### Search Query
| Supported Keys   | Supported Operators | Notes                                                                           |
| ---------------- | ------------------- | ------------------------------------------------------------------------------- |
| employee.id      | :                   | Equal to                                                                        |
| date             | \><br><             | Greater than or equal to<br>Less than or equal to                               |
| attendances.type | :                   | Equal to, supported values: ABSENT, ANNUAL\_LEAVE, COMPENSATORY\_LEAVE, PRESENT |



### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)

try:
    # Read Attendance Recapitulation Detail
    api_response = api_instance.read_attendance_recapitulation_detail()
    print("The response of TimeManagementApi->read_attendance_recapitulation_detail:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_attendance_recapitulation_detail: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**AttendanceRecapitulationDetailListResponse**](AttendanceRecapitulationDetailListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_employee_roster_configuration**
> EmployeeWorkdayConfigurationListResponse read_employee_roster_configuration()

Read Employee Roster Configuration

### Search Query
| Supported Keys | Supported Operators | Notes                                             |
| -------------- | ------------------- | ------------------------------------------------- |
| startDate      | \><br><             | Greater than or equal to<br>Less than or equal to |
| endDate        | \><br><             | Greater than or equal to<br>Less than or equal to |



### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)

try:
    # Read Employee Roster Configuration
    api_response = api_instance.read_employee_roster_configuration()
    print("The response of TimeManagementApi->read_employee_roster_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_employee_roster_configuration: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**EmployeeWorkdayConfigurationListResponse**](EmployeeWorkdayConfigurationListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_employee_roster_configuration_by_id**
> EmployeeWorkdayConfigurationResponse read_employee_roster_configuration_by_id(id)

Read Employee Roster Configuration By Id


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
id = 'id_example' # str | 

try:
    # Read Employee Roster Configuration By Id
    api_response = api_instance.read_employee_roster_configuration_by_id(id)
    print("The response of TimeManagementApi->read_employee_roster_configuration_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_employee_roster_configuration_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**EmployeeWorkdayConfigurationResponse**](EmployeeWorkdayConfigurationResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_holiday**
> HolidayListResponse read_holiday()

Read Holiday

### Search Query
| Supported Keys | Supported Operators | Notes                                             |
| -------------- | ------------------- | ------------------------------------------------- |
| holidayDate    | \><br><             | Greater than or equal to<br>Less than or equal to |
| name           | :                   | Equal Operator                                    |



### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)

try:
    # Read Holiday
    api_response = api_instance.read_holiday()
    print("The response of TimeManagementApi->read_holiday:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_holiday: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**HolidayListResponse**](HolidayListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_leave_balance**
> LeaveBalanceListResponse read_leave_balance()

Read Leave Balance

### Search Query
| Supported Keys                | Supported Operators | Notes                                                      |
| ----------------------------- | ------------------- | ---------------------------------------------------------- |
| employee.identificationNumber | :                   | Like                                                       |
| year                          | :<br>><br><          |Equal<br>Greater than or equal to<br>Less than or equal to |
| active                        | :                   | Equal                                                      |
| extended                      | :                   | Equal                                                      |



### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)

try:
    # Read Leave Balance
    api_response = api_instance.read_leave_balance()
    print("The response of TimeManagementApi->read_leave_balance:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_leave_balance: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**LeaveBalanceListResponse**](LeaveBalanceListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_other_leave_balance**
> OtherLeaveBalanceListResponse read_other_leave_balance()

Read Other Leave Balance

### Search Query
| Supported Keys                | Supported Operators | Notes |
| ----------------------------- | ------------------- | ----- |
| employee.id                   | :                   | Equal |
| employee.identificationNumber | :                   | Equal |
| year                          | :                   | Equal |
| otherLeaveStatus.code         | :                   | Equal |



### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)

try:
    # Read Other Leave Balance
    api_response = api_instance.read_other_leave_balance()
    print("The response of TimeManagementApi->read_other_leave_balance:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_other_leave_balance: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**OtherLeaveBalanceListResponse**](OtherLeaveBalanceListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_shift_pattern_template**
> ShiftPatternTemplateListResponse read_shift_pattern_template()

Read Shift Pattern Template

### Search Query
| Supported Keys | Supported Operators | Notes         |
| -------------- | ------------------- | ------------- |
| name           | :                   | Like operator |



### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)

try:
    # Read Shift Pattern Template
    api_response = api_instance.read_shift_pattern_template()
    print("The response of TimeManagementApi->read_shift_pattern_template:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_shift_pattern_template: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**ShiftPatternTemplateListResponse**](ShiftPatternTemplateListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_shift_pattern_template_by_id**
> ShiftPatternTemplateItemResponse read_shift_pattern_template_by_id(id)

Read Shift Pattern Template By Id


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
id = 'id_example' # str | 

try:
    # Read Shift Pattern Template By Id
    api_response = api_instance.read_shift_pattern_template_by_id(id)
    print("The response of TimeManagementApi->read_shift_pattern_template_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_shift_pattern_template_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**ShiftPatternTemplateItemResponse**](ShiftPatternTemplateItemResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_workgroup_roster_configuration**
> WorkgroupWorkdayConfigurationListResponse read_workgroup_roster_configuration()

Read Workgroup Roster Configuration

### Search Query
| Supported Keys | Supported Operators | Notes                                             |
| -------------- | ------------------- | ------------------------------------------------- |
| startDate      | \><br><             | Greater than or equal to<br>Less than or equal to |
| endDate        | \><br><             | Greater than or equal to<br>Less than or equal to |



### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)

try:
    # Read Workgroup Roster Configuration
    api_response = api_instance.read_workgroup_roster_configuration()
    print("The response of TimeManagementApi->read_workgroup_roster_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_workgroup_roster_configuration: %s\n" % e)
```


### Parameters

This endpoint does not need any parameter.

### Return type

[**WorkgroupWorkdayConfigurationListResponse**](WorkgroupWorkdayConfigurationListResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **read_workgroup_roster_configuration_by_id**
> WorkgroupWorkdayConfigurationResponse read_workgroup_roster_configuration_by_id(id)

Read Workgroup Roster Configuration By ID


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
id = 'id_example' # str | 

try:
    # Read Workgroup Roster Configuration By ID
    api_response = api_instance.read_workgroup_roster_configuration_by_id(id)
    print("The response of TimeManagementApi->read_workgroup_roster_configuration_by_id:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->read_workgroup_roster_configuration_by_id: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 

### Return type

[**WorkgroupWorkdayConfigurationResponse**](WorkgroupWorkdayConfigurationResponse.md)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_employee_roster_configuration**
> EmployeeWorkdayConfigurationResponse update_employee_roster_configuration(id, employee_workday_configuration_request)

Update Employee Roster Configuration


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
id = 'id_example' # str | 
employee_workday_configuration_request = EmployeeWorkdayConfigurationRequest() # EmployeeWorkdayConfigurationRequest |  (optional)

try:
    # Update Employee Roster Configuration
    api_response = api_instance.update_employee_roster_configuration(id, employee_workday_configuration_request=employee_workday_configuration_request)
    print("The response of TimeManagementApi->update_employee_roster_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->update_employee_roster_configuration: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **employee_workday_configuration_request** | [**EmployeeWorkdayConfigurationRequest**](EmployeeWorkdayConfigurationRequest.md)|  | [optional] 

### Return type

[**EmployeeWorkdayConfigurationResponse**](EmployeeWorkdayConfigurationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_shift_pattern_template**
> ShiftPatternTemplateItemResponse update_shift_pattern_template(id, shift_pattern_template_request)

Update Shift Pattern Template


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
id = 'id_example' # str | 
shift_pattern_template_request = ShiftPatternTemplateRequest() # ShiftPatternTemplateRequest |  (optional)

try:
    # Update Shift Pattern Template
    api_response = api_instance.update_shift_pattern_template(id, shift_pattern_template_request=shift_pattern_template_request)
    print("The response of TimeManagementApi->update_shift_pattern_template:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->update_shift_pattern_template: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **shift_pattern_template_request** | [**ShiftPatternTemplateRequest**](ShiftPatternTemplateRequest.md)|  | [optional] 

### Return type

[**ShiftPatternTemplateItemResponse**](ShiftPatternTemplateItemResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# **update_workgroup_roster_configuration**
> WorkgroupWorkdayConfigurationResponse update_workgroup_roster_configuration(id, workgroup_workday_configuration_request)

Update Workgroup Roster Configuration


### Example


```python
from catapa import Catapa, TimeManagementApi, ApiException
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
api_instance = TimeManagementApi(client)
id = 'id_example' # str | 
workgroup_workday_configuration_request = WorkgroupWorkdayConfigurationRequest() # WorkgroupWorkdayConfigurationRequest |  (optional)

try:
    # Update Workgroup Roster Configuration
    api_response = api_instance.update_workgroup_roster_configuration(id, workgroup_workday_configuration_request=workgroup_workday_configuration_request)
    print("The response of TimeManagementApi->update_workgroup_roster_configuration:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TimeManagementApi->update_workgroup_roster_configuration: %s\n" % e)
```


### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**|  | 
 **workgroup_workday_configuration_request** | [**WorkgroupWorkdayConfigurationRequest**](WorkgroupWorkdayConfigurationRequest.md)|  | [optional] 

### Return type

[**WorkgroupWorkdayConfigurationResponse**](WorkgroupWorkdayConfigurationResponse.md)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

