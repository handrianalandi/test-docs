# LocationPageResponse


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
**content** | [**List[LocationResponse]**](LocationResponse.md) |  | [optional] 

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



