# EducationPageResponse


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
**content** | [**List[EducationResponse]**](EducationResponse.md) |  | [optional] 

## Example

```python
from catapa import EducationPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EducationPageResponse from a JSON string
education_page_response_instance = EducationPageResponse.from_json(json)
# print the JSON string representation of the object
print(EducationPageResponse.to_json())

# convert the object into a dict
education_page_response_dict = education_page_response_instance.to_dict()
# create an instance of EducationPageResponse from a dict
education_page_response_from_dict = EducationPageResponse.from_dict(education_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



