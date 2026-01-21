# FieldOfStudyListResponse


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
**content** | [**List[FieldOfStudyResponse]**](FieldOfStudyResponse.md) |  | [optional] 

## Example

```python
from catapa import FieldOfStudyListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FieldOfStudyListResponse from a JSON string
field_of_study_list_response_instance = FieldOfStudyListResponse.from_json(json)
# print the JSON string representation of the object
print(FieldOfStudyListResponse.to_json())

# convert the object into a dict
field_of_study_list_response_dict = field_of_study_list_response_instance.to_dict()
# create an instance of FieldOfStudyListResponse from a dict
field_of_study_list_response_from_dict = FieldOfStudyListResponse.from_dict(field_of_study_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



