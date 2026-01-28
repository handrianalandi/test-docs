# PtkpCategoryPageResponse


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
**content** | [**List[PtkpCategoryResponse]**](PtkpCategoryResponse.md) |  | 

## Example

```python
from catapa import PtkpCategoryPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PtkpCategoryPageResponse from a JSON string
ptkp_category_page_response_instance = PtkpCategoryPageResponse.from_json(json)
# print the JSON string representation of the object
print(PtkpCategoryPageResponse.to_json())

# convert the object into a dict
ptkp_category_page_response_dict = ptkp_category_page_response_instance.to_dict()
# create an instance of PtkpCategoryPageResponse from a dict
ptkp_category_page_response_from_dict = PtkpCategoryPageResponse.from_dict(ptkp_category_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



