# SeverancePlanDetailResponse


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
from catapa import SeverancePlanDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanDetailResponse from a JSON string
severance_plan_detail_response_instance = SeverancePlanDetailResponse.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanDetailResponse.to_json())

# convert the object into a dict
severance_plan_detail_response_dict = severance_plan_detail_response_instance.to_dict()
# create an instance of SeverancePlanDetailResponse from a dict
severance_plan_detail_response_from_dict = SeverancePlanDetailResponse.from_dict(severance_plan_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



