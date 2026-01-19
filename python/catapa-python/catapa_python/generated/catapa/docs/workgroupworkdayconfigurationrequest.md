# WorkgroupWorkdayConfigurationRequest

## Properties

| Name                         | Type                          | Description | Notes |
| ---------------------------- | ----------------------------- | ----------- | ----- |
| **shift\_pattern\_template** | [**IdRequest**](idrequest.md) |             |       |
| **start\_date**              | **str**                       |             |       |
| **end\_date**                | **str**                       |             |       |
| **include\_holiday**         | **bool**                      |             |       |
| **start\_sequence**          | **float**                     |             |       |
| **workgroup**                | [**IdRequest**](idrequest.md) |             |       |

## Example

```python
from catapa import WorkgroupWorkdayConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of WorkgroupWorkdayConfigurationRequest from a JSON string
workgroup_workday_configuration_request_instance = WorkgroupWorkdayConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(WorkgroupWorkdayConfigurationRequest.to_json())

# convert the object into a dict
workgroup_workday_configuration_request_dict = workgroup_workday_configuration_request_instance.to_dict()
# create an instance of WorkgroupWorkdayConfigurationRequest from a dict
workgroup_workday_configuration_request_from_dict = WorkgroupWorkdayConfigurationRequest.from_dict(workgroup_workday_configuration_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
