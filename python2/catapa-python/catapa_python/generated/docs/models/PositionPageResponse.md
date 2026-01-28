# PositionPageResponse


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
**content** | [**List[PositionListItemResponse]**](PositionListItemResponse.md) |  | 

## Example

```python
from catapa import PositionPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionPageResponse from a JSON string
position_page_response_instance = PositionPageResponse.from_json(json)
# print the JSON string representation of the object
print(PositionPageResponse.to_json())

# convert the object into a dict
position_page_response_dict = position_page_response_instance.to_dict()
# create an instance of PositionPageResponse from a dict
position_page_response_from_dict = PositionPageResponse.from_dict(position_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



