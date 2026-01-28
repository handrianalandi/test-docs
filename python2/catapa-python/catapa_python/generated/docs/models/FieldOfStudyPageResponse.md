# FieldOfStudyPageResponse


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
**content** | [**List[FieldOfStudyResponse]**](FieldOfStudyResponse.md) |  | 

## Example

```python
from catapa import FieldOfStudyPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FieldOfStudyPageResponse from a JSON string
field_of_study_page_response_instance = FieldOfStudyPageResponse.from_json(json)
# print the JSON string representation of the object
print(FieldOfStudyPageResponse.to_json())

# convert the object into a dict
field_of_study_page_response_dict = field_of_study_page_response_instance.to_dict()
# create an instance of FieldOfStudyPageResponse from a dict
field_of_study_page_response_from_dict = FieldOfStudyPageResponse.from_dict(field_of_study_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



