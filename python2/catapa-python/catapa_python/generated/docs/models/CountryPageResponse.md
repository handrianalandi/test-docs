# CountryPageResponse


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
**content** | [**List[CountryResponse]**](CountryResponse.md) |  | 

## Example

```python
from catapa import CountryPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CountryPageResponse from a JSON string
country_page_response_instance = CountryPageResponse.from_json(json)
# print the JSON string representation of the object
print(CountryPageResponse.to_json())

# convert the object into a dict
country_page_response_dict = country_page_response_instance.to_dict()
# create an instance of CountryPageResponse from a dict
country_page_response_from_dict = CountryPageResponse.from_dict(country_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



