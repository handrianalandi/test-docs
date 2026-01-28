# EducationLevelPageResponse


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
**content** | [**List[EducationLevelResponse]**](EducationLevelResponse.md) |  | 

## Example

```python
from catapa import EducationLevelPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EducationLevelPageResponse from a JSON string
education_level_page_response_instance = EducationLevelPageResponse.from_json(json)
# print the JSON string representation of the object
print(EducationLevelPageResponse.to_json())

# convert the object into a dict
education_level_page_response_dict = education_level_page_response_instance.to_dict()
# create an instance of EducationLevelPageResponse from a dict
education_level_page_response_from_dict = EducationLevelPageResponse.from_dict(education_level_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



