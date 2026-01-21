# TimeZoneResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**offset** | **str** |  | [optional] 

## Example

```python
from catapa import TimeZoneResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TimeZoneResponse from a JSON string
time_zone_response_instance = TimeZoneResponse.from_json(json)
# print the JSON string representation of the object
print(TimeZoneResponse.to_json())

# convert the object into a dict
time_zone_response_dict = time_zone_response_instance.to_dict()
# create an instance of TimeZoneResponse from a dict
time_zone_response_from_dict = TimeZoneResponse.from_dict(time_zone_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



