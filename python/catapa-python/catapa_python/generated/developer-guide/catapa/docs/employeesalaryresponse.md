# EmployeeSalaryResponse

## Properties

| Name                         | Type                                                                    | Description | Notes       |
| ---------------------------- | ----------------------------------------------------------------------- | ----------- | ----------- |
| **salary\_item\_id**         | **str**                                                                 |             | \[optional] |
| **salary\_item\_code**       | **str**                                                                 |             | \[optional] |
| **amount**                   | **float**                                                               |             | \[optional] |
| **recurring\_configuration** | [**RecurringConfigurationResponse**](recurringconfigurationresponse.md) |             | \[optional] |

## Example

```python
from catapa import EmployeeSalaryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeSalaryResponse from a JSON string
employee_salary_response_instance = EmployeeSalaryResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeSalaryResponse.to_json())

# convert the object into a dict
employee_salary_response_dict = employee_salary_response_instance.to_dict()
# create an instance of EmployeeSalaryResponse from a dict
employee_salary_response_from_dict = EmployeeSalaryResponse.from_dict(employee_salary_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
