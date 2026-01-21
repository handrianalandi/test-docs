# EducationListResponse


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
from catapa import EducationListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EducationListResponse from a JSON string
education_list_response_instance = EducationListResponse.from_json(json)
# print the JSON string representation of the object
print(EducationListResponse.to_json())

# convert the object into a dict
education_list_response_dict = education_list_response_instance.to_dict()
# create an instance of EducationListResponse from a dict
education_list_response_from_dict = EducationListResponse.from_dict(education_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



