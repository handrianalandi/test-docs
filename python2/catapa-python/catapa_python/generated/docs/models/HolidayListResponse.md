# HolidayListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[HolidayItemResponse]**](HolidayItemResponse.md) |  | [optional] 

## Example

```python
from catapa import HolidayListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of HolidayListResponse from a JSON string
holiday_list_response_instance = HolidayListResponse.from_json(json)
# print the JSON string representation of the object
print(HolidayListResponse.to_json())

# convert the object into a dict
holiday_list_response_dict = holiday_list_response_instance.to_dict()
# create an instance of HolidayListResponse from a dict
holiday_list_response_from_dict = HolidayListResponse.from_dict(holiday_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



