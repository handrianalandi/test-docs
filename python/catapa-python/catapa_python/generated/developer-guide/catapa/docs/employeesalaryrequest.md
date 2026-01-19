# EmployeeSalaryRequest

## Properties

| Name                         | Type                                                                  | Description | Notes |
| ---------------------------- | --------------------------------------------------------------------- | ----------- | ----- |
| **salary\_item\_id**         | **str**                                                               |             |       |
| **amount**                   | **float**                                                             |             |       |
| **formula**                  | **str**                                                               |             |       |
| **recurring\_configuration** | [**RecurringConfigurationRequest**](recurringconfigurationrequest.md) |             |       |

## Example

```python
from catapa import EmployeeSalaryRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeSalaryRequest from a JSON string
employee_salary_request_instance = EmployeeSalaryRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeSalaryRequest.to_json())

# convert the object into a dict
employee_salary_request_dict = employee_salary_request_instance.to_dict()
# create an instance of EmployeeSalaryRequest from a dict
employee_salary_request_from_dict = EmployeeSalaryRequest.from_dict(employee_salary_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
