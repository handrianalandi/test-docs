# ReligionPageResponse


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
**content** | [**List[ReligionResponse]**](ReligionResponse.md) |  | [optional] 

## Example

```python
from catapa import ReligionPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ReligionPageResponse from a JSON string
religion_page_response_instance = ReligionPageResponse.from_json(json)
# print the JSON string representation of the object
print(ReligionPageResponse.to_json())

# convert the object into a dict
religion_page_response_dict = religion_page_response_instance.to_dict()
# create an instance of ReligionPageResponse from a dict
religion_page_response_from_dict = ReligionPageResponse.from_dict(religion_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



