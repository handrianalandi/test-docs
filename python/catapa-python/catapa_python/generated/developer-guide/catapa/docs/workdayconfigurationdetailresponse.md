# WorkdayConfigurationDetailResponse

## Properties

| Name         | Type                                  | Description | Notes       |
| ------------ | ------------------------------------- | ----------- | ----------- |
| **shift**    | [**ShiftResponse**](shiftresponse.md) |             | \[optional] |
| **sequence** | **float**                             |             | \[optional] |

## Example

```python
from catapa import WorkdayConfigurationDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkdayConfigurationDetailResponse from a JSON string
workday_configuration_detail_response_instance = WorkdayConfigurationDetailResponse.from_json(json)
# print the JSON string representation of the object
print(WorkdayConfigurationDetailResponse.to_json())

# convert the object into a dict
workday_configuration_detail_response_dict = workday_configuration_detail_response_instance.to_dict()
# create an instance of WorkdayConfigurationDetailResponse from a dict
workday_configuration_detail_response_from_dict = WorkdayConfigurationDetailResponse.from_dict(workday_configuration_detail_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
