# SeverancePlanResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | 
**payment_method** | **str** |  | 
**pph21_method** | **str** |  | 
**payment_option** | **str** |  | 
**total** | **float** |  | 
**total_thp** | **float** |  | 
**total_pph** | **float** |  | 
**tax_allowance** | **float** |  | 

## Example

```python
from catapa import SeverancePlanResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanResponse from a JSON string
severance_plan_response_instance = SeverancePlanResponse.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanResponse.to_json())

# convert the object into a dict
severance_plan_response_dict = severance_plan_response_instance.to_dict()
# create an instance of SeverancePlanResponse from a dict
severance_plan_response_from_dict = SeverancePlanResponse.from_dict(severance_plan_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



