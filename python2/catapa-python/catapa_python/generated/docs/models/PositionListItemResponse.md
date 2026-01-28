# PositionListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 

## Example

```python
from catapa import PositionListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionListItemResponse from a JSON string
position_list_item_response_instance = PositionListItemResponse.from_json(json)
# print the JSON string representation of the object
print(PositionListItemResponse.to_json())

# convert the object into a dict
position_list_item_response_dict = position_list_item_response_instance.to_dict()
# create an instance of PositionListItemResponse from a dict
position_list_item_response_from_dict = PositionListItemResponse.from_dict(position_list_item_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



