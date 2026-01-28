# LocationPageResponse


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
**content** | [**List[LocationResponse]**](LocationResponse.md) |  | 

## Example

```python
from catapa import LocationPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of LocationPageResponse from a JSON string
location_page_response_instance = LocationPageResponse.from_json(json)
# print the JSON string representation of the object
print(LocationPageResponse.to_json())

# convert the object into a dict
location_page_response_dict = location_page_response_instance.to_dict()
# create an instance of LocationPageResponse from a dict
location_page_response_from_dict = LocationPageResponse.from_dict(location_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



