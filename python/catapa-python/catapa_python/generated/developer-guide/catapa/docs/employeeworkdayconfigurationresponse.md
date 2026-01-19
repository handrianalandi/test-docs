# EmployeeWorkdayConfigurationResponse

## Properties

| Name                                | Type                                                                                    | Description | Notes       |
| ----------------------------------- | --------------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                              | **str**                                                                                 |             | \[optional] |
| **start\_date**                     | **str**                                                                                 |             | \[optional] |
| **end\_date**                       | **str**                                                                                 |             | \[optional] |
| **shift\_pattern\_template**        | [**ShiftPatternTemplateSimpleResponse**](shiftpatterntemplatesimpleresponse.md)         |             | \[optional] |
| **workday\_configuration\_details** | [**List\[WorkdayConfigurationDetailResponse\]**](workdayconfigurationdetailresponse.md) |             | \[optional] |
| **start\_sequence**                 | **float**                                                                               |             | \[optional] |
| **start\_shift**                    | [**ShiftResponse**](shiftresponse.md)                                                   |             | \[optional] |
| **include\_holiday**                | **bool**                                                                                |             | \[optional] |
| **include\_missing\_shift**         | **bool**                                                                                |             | \[optional] |
| **employee**                        | [**EmployeeSimpleResponse**](employeesimpleresponse.md)                                 |             | \[optional] |

## Example

```python
from catapa import EmployeeWorkdayConfigurationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeWorkdayConfigurationResponse from a JSON string
employee_workday_configuration_response_instance = EmployeeWorkdayConfigurationResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeWorkdayConfigurationResponse.to_json())

# convert the object into a dict
employee_workday_configuration_response_dict = employee_workday_configuration_response_instance.to_dict()
# create an instance of EmployeeWorkdayConfigurationResponse from a dict
employee_workday_configuration_response_from_dict = EmployeeWorkdayConfigurationResponse.from_dict(employee_workday_configuration_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
