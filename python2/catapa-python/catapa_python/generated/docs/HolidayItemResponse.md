# HolidayItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**holiday_date** | **date** | Date of the holiday | [optional] 
**name** | **str** | Name of the holiday | [optional] 

## Example

```python
from catapa import HolidayItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of HolidayItemResponse from a JSON string
holiday_item_response_instance = HolidayItemResponse.from_json(json)
# print the JSON string representation of the object
print(HolidayItemResponse.to_json())

# convert the object into a dict
holiday_item_response_dict = holiday_item_response_instance.to_dict()
# create an instance of HolidayItemResponse from a dict
holiday_item_response_from_dict = HolidayItemResponse.from_dict(holiday_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



