# CostCenterRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 
**description** | **str** |  | [optional] 

## Example

```python
from catapa import CostCenterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CostCenterRequest from a JSON string
cost_center_request_instance = CostCenterRequest.from_json(json)
# print the JSON string representation of the object
print(CostCenterRequest.to_json())

# convert the object into a dict
cost_center_request_dict = cost_center_request_instance.to_dict()
# create an instance of CostCenterRequest from a dict
cost_center_request_from_dict = CostCenterRequest.from_dict(cost_center_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



