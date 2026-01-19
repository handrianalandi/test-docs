# WorkgroupWorkdayConfigurationResponse

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
| **workgroup**                       | [**IdCodeNameResponse**](idcodenameresponse.md)                                         |             | \[optional] |

## Example

```python
from catapa import WorkgroupWorkdayConfigurationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkgroupWorkdayConfigurationResponse from a JSON string
workgroup_workday_configuration_response_instance = WorkgroupWorkdayConfigurationResponse.from_json(json)
# print the JSON string representation of the object
print(WorkgroupWorkdayConfigurationResponse.to_json())

# convert the object into a dict
workgroup_workday_configuration_response_dict = workgroup_workday_configuration_response_instance.to_dict()
# create an instance of WorkgroupWorkdayConfigurationResponse from a dict
workgroup_workday_configuration_response_from_dict = WorkgroupWorkdayConfigurationResponse.from_dict(workgroup_workday_configuration_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
