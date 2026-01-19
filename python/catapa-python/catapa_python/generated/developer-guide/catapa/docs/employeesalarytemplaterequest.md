# EmployeeSalaryTemplateRequest

## Properties

| Name                       | Type                                                          | Description | Notes |
| -------------------------- | ------------------------------------------------------------- | ----------- | ----- |
| **effective\_date**        | **str**                                                       |             |       |
| **employee\_salaries**     | [**List\[EmployeeSalaryRequest\]**](employeesalaryrequest.md) |             |       |
| **proportional**           | **bool**                                                      |             |       |
| **retroactive**            | **bool**                                                      |             |       |
| **salary\_decree\_number** | **str**                                                       |             |       |
| **salary\_template\_id**   | **str**                                                       |             |       |

## Example

```python
from catapa import EmployeeSalaryTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeSalaryTemplateRequest from a JSON string
employee_salary_template_request_instance = EmployeeSalaryTemplateRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeSalaryTemplateRequest.to_json())

# convert the object into a dict
employee_salary_template_request_dict = employee_salary_template_request_instance.to_dict()
# create an instance of EmployeeSalaryTemplateRequest from a dict
employee_salary_template_request_from_dict = EmployeeSalaryTemplateRequest.from_dict(employee_salary_template_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
