# CostCenterResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from catapa import CostCenterResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CostCenterResponse from a JSON string
cost_center_response_instance = CostCenterResponse.from_json(json)
# print the JSON string representation of the object
print(CostCenterResponse.to_json())

# convert the object into a dict
cost_center_response_dict = cost_center_response_instance.to_dict()
# create an instance of CostCenterResponse from a dict
cost_center_response_from_dict = CostCenterResponse.from_dict(cost_center_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



