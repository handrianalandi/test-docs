# EmployeeSalaryTemplateResponse

## Properties

| Name                       | Type                                                            | Description | Notes       |
| -------------------------- | --------------------------------------------------------------- | ----------- | ----------- |
| **id**                     | **str**                                                         |             | \[optional] |
| **effective\_date**        | **str**                                                         |             | \[optional] |
| **proportional**           | **bool**                                                        |             | \[optional] |
| **retroactive**            | **bool**                                                        |             | \[optional] |
| **salary\_decree\_number** | **str**                                                         |             | \[optional] |
| **salary\_template\_id**   | **str**                                                         |             | \[optional] |
| **employee\_salaries**     | [**List\[EmployeeSalaryResponse\]**](employeesalaryresponse.md) |             | \[optional] |

## Example

```python
from catapa import EmployeeSalaryTemplateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeSalaryTemplateResponse from a JSON string
employee_salary_template_response_instance = EmployeeSalaryTemplateResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeSalaryTemplateResponse.to_json())

# convert the object into a dict
employee_salary_template_response_dict = employee_salary_template_response_instance.to_dict()
# create an instance of EmployeeSalaryTemplateResponse from a dict
employee_salary_template_response_from_dict = EmployeeSalaryTemplateResponse.from_dict(employee_salary_template_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
