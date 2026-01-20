# SeverancePlanDetailItemRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 
**category** | **str** |  | 
**amount** | **float** |  | 
**pph21_item_method** | **str** |  | 

## Example

```python
from catapa import SeverancePlanDetailItemRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanDetailItemRequest from a JSON string
severance_plan_detail_item_request_instance = SeverancePlanDetailItemRequest.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanDetailItemRequest.to_json())

# convert the object into a dict
severance_plan_detail_item_request_dict = severance_plan_detail_item_request_instance.to_dict()
# create an instance of SeverancePlanDetailItemRequest from a dict
severance_plan_detail_item_request_from_dict = SeverancePlanDetailItemRequest.from_dict(severance_plan_detail_item_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



