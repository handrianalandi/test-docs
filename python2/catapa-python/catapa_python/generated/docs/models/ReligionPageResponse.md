# ReligionPageResponse


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
**content** | [**List[ReligionResponse]**](ReligionResponse.md) |  | 

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



