# HolidayPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[HolidayItemResponse]**](HolidayItemResponse.md) |  | 

## Example

```python
from catapa import HolidayPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of HolidayPageResponse from a JSON string
holiday_page_response_instance = HolidayPageResponse.from_json(json)
# print the JSON string representation of the object
print(HolidayPageResponse.to_json())

# convert the object into a dict
holiday_page_response_dict = holiday_page_response_instance.to_dict()
# create an instance of HolidayPageResponse from a dict
holiday_page_response_from_dict = HolidayPageResponse.from_dict(holiday_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



