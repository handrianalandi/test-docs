# PositionCostCenterResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**effective_date** | **str** |  | 
**cost_center** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**position** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 

## Example

```python
from catapa import PositionCostCenterResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionCostCenterResponse from a JSON string
position_cost_center_response_instance = PositionCostCenterResponse.from_json(json)
# print the JSON string representation of the object
print(PositionCostCenterResponse.to_json())

# convert the object into a dict
position_cost_center_response_dict = position_cost_center_response_instance.to_dict()
# create an instance of PositionCostCenterResponse from a dict
position_cost_center_response_from_dict = PositionCostCenterResponse.from_dict(position_cost_center_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



