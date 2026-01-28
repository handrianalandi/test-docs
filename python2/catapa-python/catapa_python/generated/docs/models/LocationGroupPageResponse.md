# LocationGroupPageResponse


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
**content** | [**List[IdCodeNameResponse]**](IdCodeNameResponse.md) |  | 

## Example

```python
from catapa import LocationGroupPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of LocationGroupPageResponse from a JSON string
location_group_page_response_instance = LocationGroupPageResponse.from_json(json)
# print the JSON string representation of the object
print(LocationGroupPageResponse.to_json())

# convert the object into a dict
location_group_page_response_dict = location_group_page_response_instance.to_dict()
# create an instance of LocationGroupPageResponse from a dict
location_group_page_response_from_dict = LocationGroupPageResponse.from_dict(location_group_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



