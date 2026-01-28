# SubLocationPageResponse


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
**content** | [**List[SubLocationResponse]**](SubLocationResponse.md) |  | 

## Example

```python
from catapa import SubLocationPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SubLocationPageResponse from a JSON string
sub_location_page_response_instance = SubLocationPageResponse.from_json(json)
# print the JSON string representation of the object
print(SubLocationPageResponse.to_json())

# convert the object into a dict
sub_location_page_response_dict = sub_location_page_response_instance.to_dict()
# create an instance of SubLocationPageResponse from a dict
sub_location_page_response_from_dict = SubLocationPageResponse.from_dict(sub_location_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



