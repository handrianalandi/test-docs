# RecurringPeriodEndResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**year** | **float** |  | [optional] 
**month** | **float** |  | [optional] 

## Example

```python
from catapa import RecurringPeriodEndResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RecurringPeriodEndResponse from a JSON string
recurring_period_end_response_instance = RecurringPeriodEndResponse.from_json(json)
# print the JSON string representation of the object
print(RecurringPeriodEndResponse.to_json())

# convert the object into a dict
recurring_period_end_response_dict = recurring_period_end_response_instance.to_dict()
# create an instance of RecurringPeriodEndResponse from a dict
recurring_period_end_response_from_dict = RecurringPeriodEndResponse.from_dict(recurring_period_end_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



