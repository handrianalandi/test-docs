# SeverancePlanResponseWithDetail


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
**details** | [**List[SeverancePlanDetailResponse]**](SeverancePlanDetailResponse.md) |  | 
**payment_plans** | [**List[SeverancePaymentPlanResponse]**](SeverancePaymentPlanResponse.md) |  | 

## Example

```python
from catapa import SeverancePlanResponseWithDetail

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanResponseWithDetail from a JSON string
severance_plan_response_with_detail_instance = SeverancePlanResponseWithDetail.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanResponseWithDetail.to_json())

# convert the object into a dict
severance_plan_response_with_detail_dict = severance_plan_response_with_detail_instance.to_dict()
# create an instance of SeverancePlanResponseWithDetail from a dict
severance_plan_response_with_detail_from_dict = SeverancePlanResponseWithDetail.from_dict(severance_plan_response_with_detail_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



