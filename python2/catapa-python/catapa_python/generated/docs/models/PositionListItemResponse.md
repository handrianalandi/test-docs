# PositionListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 

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



