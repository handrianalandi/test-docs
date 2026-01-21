# RecurringConfigurationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**month_interval** | **float** |  | [optional] 
**recurring_end_type** | **str** |  | [optional] 
**max_recurring_times** | **float** |  | [optional] 
**recurring_period_end** | [**RecurringPeriodEndResponse**](RecurringPeriodEndResponse.md) |  | [optional] 

## Example

```python
from catapa import RecurringConfigurationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RecurringConfigurationResponse from a JSON string
recurring_configuration_response_instance = RecurringConfigurationResponse.from_json(json)
# print the JSON string representation of the object
print(RecurringConfigurationResponse.to_json())

# convert the object into a dict
recurring_configuration_response_dict = recurring_configuration_response_instance.to_dict()
# create an instance of RecurringConfigurationResponse from a dict
recurring_configuration_response_from_dict = RecurringConfigurationResponse.from_dict(recurring_configuration_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



