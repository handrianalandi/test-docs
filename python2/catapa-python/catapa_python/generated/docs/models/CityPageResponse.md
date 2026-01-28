# CityPageResponse


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
**content** | [**List[CityResponse]**](CityResponse.md) |  | 

## Example

```python
from catapa import CityPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CityPageResponse from a JSON string
city_page_response_instance = CityPageResponse.from_json(json)
# print the JSON string representation of the object
print(CityPageResponse.to_json())

# convert the object into a dict
city_page_response_dict = city_page_response_instance.to_dict()
# create an instance of CityPageResponse from a dict
city_page_response_from_dict = CityPageResponse.from_dict(city_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



