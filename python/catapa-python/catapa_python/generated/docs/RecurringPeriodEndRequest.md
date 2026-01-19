# RecurringPeriodEndRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**year** | **float** |  | 
**month** | **float** |  | 

## Example

```python
from catapa import RecurringPeriodEndRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RecurringPeriodEndRequest from a JSON string
recurring_period_end_request_instance = RecurringPeriodEndRequest.from_json(json)
# print the JSON string representation of the object
print(RecurringPeriodEndRequest.to_json())

# convert the object into a dict
recurring_period_end_request_dict = recurring_period_end_request_instance.to_dict()
# create an instance of RecurringPeriodEndRequest from a dict
recurring_period_end_request_from_dict = RecurringPeriodEndRequest.from_dict(recurring_period_end_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



