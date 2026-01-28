# PositionCostCenterPageResponse


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
**content** | [**List[PositionCostCenterResponse]**](PositionCostCenterResponse.md) |  | 

## Example

```python
from catapa import PositionCostCenterPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PositionCostCenterPageResponse from a JSON string
position_cost_center_page_response_instance = PositionCostCenterPageResponse.from_json(json)
# print the JSON string representation of the object
print(PositionCostCenterPageResponse.to_json())

# convert the object into a dict
position_cost_center_page_response_dict = position_cost_center_page_response_instance.to_dict()
# create an instance of PositionCostCenterPageResponse from a dict
position_cost_center_page_response_from_dict = PositionCostCenterPageResponse.from_dict(position_cost_center_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



