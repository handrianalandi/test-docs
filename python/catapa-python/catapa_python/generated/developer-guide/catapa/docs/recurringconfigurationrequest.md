# RecurringConfigurationRequest

## Properties

| Name                       | Type                                                          | Description | Notes |
| -------------------------- | ------------------------------------------------------------- | ----------- | ----- |
| **max\_recurring\_times**  | **float**                                                     |             |       |
| **period\_interval**       | **float**                                                     |             |       |
| **recurring\_end\_type**   | **str**                                                       |             |       |
| **recurring\_period\_end** | [**RecurringPeriodEndRequest**](recurringperiodendrequest.md) |             |       |

## Example

```python
from catapa import RecurringConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RecurringConfigurationRequest from a JSON string
recurring_configuration_request_instance = RecurringConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(RecurringConfigurationRequest.to_json())

# convert the object into a dict
recurring_configuration_request_dict = recurring_configuration_request_instance.to_dict()
# create an instance of RecurringConfigurationRequest from a dict
recurring_configuration_request_from_dict = RecurringConfigurationRequest.from_dict(recurring_configuration_request_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
