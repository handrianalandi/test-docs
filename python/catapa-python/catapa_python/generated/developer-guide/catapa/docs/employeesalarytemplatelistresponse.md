# EmployeeSalaryTemplateListResponse

## Properties

| Name                     | Type                                                                            | Description | Notes       |
| ------------------------ | ------------------------------------------------------------------------------- | ----------- | ----------- |
| **total\_pages**         | **int**                                                                         |             | \[optional] |
| **last**                 | **bool**                                                                        |             | \[optional] |
| **total\_elements**      | **int**                                                                         |             | \[optional] |
| **number\_of\_elements** | **int**                                                                         |             | \[optional] |
| **has\_content**         | **bool**                                                                        |             | \[optional] |
| **sort**                 | [**List\[SortProperty\]**](sortproperty.md)                                     |             | \[optional] |
| **first**                | **bool**                                                                        |             | \[optional] |
| **size**                 | **int**                                                                         |             | \[optional] |
| **number**               | **int**                                                                         |             | \[optional] |
| **content**              | [**List\[EmployeeSalaryTemplateResponse\]**](employeesalarytemplateresponse.md) |             | \[optional] |

## Example

```python
from catapa import EmployeeSalaryTemplateListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeSalaryTemplateListResponse from a JSON string
employee_salary_template_list_response_instance = EmployeeSalaryTemplateListResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeSalaryTemplateListResponse.to_json())

# convert the object into a dict
employee_salary_template_list_response_dict = employee_salary_template_list_response_instance.to_dict()
# create an instance of EmployeeSalaryTemplateListResponse from a dict
employee_salary_template_list_response_from_dict = EmployeeSalaryTemplateListResponse.from_dict(employee_salary_template_list_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
