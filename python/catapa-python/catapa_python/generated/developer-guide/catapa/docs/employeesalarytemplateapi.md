# EmployeeSalaryTemplateApi

## EmployeeSalaryTemplateApi

> **💡 Quick Start:** Use the `catapa.Catapa` wrapper for automatic OAuth2 authentication and token refresh!\
> &#xNAN;**✨ Auto-refresh:** Tokens are automatically refreshed before they expire (5-minute buffer) - no manual token management needed!

All URIs are relative to _https://api.catapa.com_

| Method                                                                                                                    | HTTP request                                                        | Description                               |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------- | ----------------------------------------- |
| [**createor\_update\_employee\_salary\_template**](employeesalarytemplateapi.md#createor_update_employee_salary_template) | **PATCH** /core/v1/employees/{id}/employee-salary-templates         | Create or Update Employee Salary Template |
| [**get\_effective\_employee\_salary\_template**](employeesalarytemplateapi.md#get_effective_employee_salary_template)     | **GET** /core/v1/employees/{id}/employee-salary-templates/effective | Get Effective Employee Salary Template    |
| [**get\_latest\_employee\_salary\_template**](employeesalarytemplateapi.md#get_latest_employee_salary_template)           | **GET** /core/v1/employees/{id}/employee-salary-templates           | Get Latest Employee Salary Template       |

## **createor\_update\_employee\_salary\_template**

> EmployeeSalaryTemplateUpdateResponse createor\_update\_employee\_salary\_template(id, employee\_salary\_template\_request)

Create or Update Employee Salary Template

#### Example

```python
from catapa import Catapa, EmployeeSalaryTemplateApi, ApiException
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
api_instance = EmployeeSalaryTemplateApi(client)
id = 'c2424497-9c63-46d1-88e4-6b4ebe399866' # str | 
employee_salary_template_request = EmployeeSalaryTemplateRequest() # EmployeeSalaryTemplateRequest |  (optional)

try:
    # Create or Update Employee Salary Template
    api_response = api_instance.createor_update_employee_salary_template(id, employee_salary_template_request=employee_salary_template_request)
    print("The response of EmployeeSalaryTemplateApi->createor_update_employee_salary_template:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeSalaryTemplateApi->createor_update_employee_salary_template: %s\n" % e)
```

#### Parameters

| Name                                    | Type                                                                  | Description | Notes       |
| --------------------------------------- | --------------------------------------------------------------------- | ----------- | ----------- |
| **id**                                  | **str**                                                               |             |             |
| **employee\_salary\_template\_request** | [**EmployeeSalaryTemplateRequest**](employeesalarytemplaterequest.md) |             | \[optional] |

#### Return type

[**EmployeeSalaryTemplateUpdateResponse**](employeesalarytemplateupdateresponse.md)

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

[\[Back to top\]](employeesalarytemplateapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_effective\_employee\_salary\_template**

> EmployeeSalaryTemplateListResponse get\_effective\_employee\_salary\_template(id, year, month)

Get Effective Employee Salary Template

#### Example

```python
from catapa import Catapa, EmployeeSalaryTemplateApi, ApiException
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
api_instance = EmployeeSalaryTemplateApi(client)
id = 'id_example' # str | 
year = 3.4 # float |  (optional)
month = 3.4 # float |  (optional)

try:
    # Get Effective Employee Salary Template
    api_response = api_instance.get_effective_employee_salary_template(id, year=year, month=month)
    print("The response of EmployeeSalaryTemplateApi->get_effective_employee_salary_template:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeSalaryTemplateApi->get_effective_employee_salary_template: %s\n" % e)
```

#### Parameters

| Name      | Type      | Description | Notes       |
| --------- | --------- | ----------- | ----------- |
| **id**    | **str**   |             |             |
| **year**  | **float** |             | \[optional] |
| **month** | **float** |             | \[optional] |

#### Return type

[**EmployeeSalaryTemplateListResponse**](employeesalarytemplatelistresponse.md)

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

[\[Back to top\]](employeesalarytemplateapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)

## **get\_latest\_employee\_salary\_template**

> EmployeeSalaryTemplateResponse get\_latest\_employee\_salary\_template(id)

Get Latest Employee Salary Template

#### Example

```python
from catapa import Catapa, EmployeeSalaryTemplateApi, ApiException
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
api_instance = EmployeeSalaryTemplateApi(client)
id = 'id_example' # str | 

try:
    # Get Latest Employee Salary Template
    api_response = api_instance.get_latest_employee_salary_template(id)
    print("The response of EmployeeSalaryTemplateApi->get_latest_employee_salary_template:\n")
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EmployeeSalaryTemplateApi->get_latest_employee_salary_template: %s\n" % e)
```

#### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** |             |       |

#### Return type

[**EmployeeSalaryTemplateResponse**](employeesalarytemplateresponse.md)

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

[\[Back to top\]](employeesalarytemplateapi.md) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to Model list\]](../#documentation-for-models) [\[Back to README\]](../)
