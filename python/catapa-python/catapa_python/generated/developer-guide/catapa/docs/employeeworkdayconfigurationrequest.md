# EmployeeWorkdayConfigurationRequest

## Properties

| Name                         | Type                          | Description | Notes |
| ---------------------------- | ----------------------------- | ----------- | ----- |
| **start\_date**              | **str**                       |             |       |
| **end\_date**                | **str**                       |             |       |
| **shift\_pattern\_template** | [**IdRequest**](idrequest.md) |             |       |
| **start\_sequence**          | **float**                     |             |       |
| **include\_holiday**         | **bool**                      |             |       |
| **include\_missing\_shift**  | **bool**                      |             |       |
| **employee**                 | [**IdRequest**](idrequest.md) |             |       |

## Example

```python
from catapa import EmployeeWorkdayConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeWorkdayConfigurationRequest from a JSON string
employee_workday_configuration_request_instance = EmployeeWorkdayConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeWorkdayConfigurationRequest.to_json())

# convert the object into a dict
employee_workday_configuration_request_dict = employee_workday_configuration_request_instance.to_dict()
# create an instance of EmployeeWorkdayConfigurationRequest from a dict
employee_workday_configuration_request_from_dict = EmployeeWorkdayConfigurationRequest.from_dict(employee_workday_configuration_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
