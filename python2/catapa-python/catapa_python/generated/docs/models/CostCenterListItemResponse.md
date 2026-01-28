# CostCenterListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**description** | **str** |  | 
**company** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 

## Example

```python
from catapa import CostCenterListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CostCenterListItemResponse from a JSON string
cost_center_list_item_response_instance = CostCenterListItemResponse.from_json(json)
# print the JSON string representation of the object
print(CostCenterListItemResponse.to_json())

# convert the object into a dict
cost_center_list_item_response_dict = cost_center_list_item_response_instance.to_dict()
# create an instance of CostCenterListItemResponse from a dict
cost_center_list_item_response_from_dict = CostCenterListItemResponse.from_dict(cost_center_list_item_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



