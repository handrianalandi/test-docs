# CostCenterSimpleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 

## Example

```python
from catapa import CostCenterSimpleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CostCenterSimpleResponse from a JSON string
cost_center_simple_response_instance = CostCenterSimpleResponse.from_json(json)
# print the JSON string representation of the object
print(CostCenterSimpleResponse.to_json())

# convert the object into a dict
cost_center_simple_response_dict = cost_center_simple_response_instance.to_dict()
# create an instance of CostCenterSimpleResponse from a dict
cost_center_simple_response_from_dict = CostCenterSimpleResponse.from_dict(cost_center_simple_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



