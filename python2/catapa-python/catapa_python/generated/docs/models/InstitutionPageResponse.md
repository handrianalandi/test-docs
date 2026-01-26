# InstitutionPageResponse


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
**content** | [**List[InstitutionResponse]**](InstitutionResponse.md) |  | [optional] 

## Example

```python
from catapa import InstitutionPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of InstitutionPageResponse from a JSON string
institution_page_response_instance = InstitutionPageResponse.from_json(json)
# print the JSON string representation of the object
print(InstitutionPageResponse.to_json())

# convert the object into a dict
institution_page_response_dict = institution_page_response_instance.to_dict()
# create an instance of InstitutionPageResponse from a dict
institution_page_response_from_dict = InstitutionPageResponse.from_dict(institution_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



