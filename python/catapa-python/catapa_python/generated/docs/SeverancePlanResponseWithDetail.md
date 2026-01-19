# SeverancePlanResponseWithDetail


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**kpp** | [**KppSimpleResponse**](KppSimpleResponse.md) |  | [optional] 
**payment_method** | **str** |  | [optional] 
**pph21_method** | **str** |  | [optional] 
**payment_option** | **str** |  | [optional] 
**total** | **float** |  | [optional] 
**total_thp** | **float** |  | [optional] 
**total_pph** | **float** |  | [optional] 
**tax_allowance** | **float** |  | [optional] 
**details** | [**List[SeverancePlanDetailResponse]**](SeverancePlanDetailResponse.md) |  | [optional] 
**payment_plans** | [**List[SeverancePaymentPlanResponse]**](SeverancePaymentPlanResponse.md) |  | [optional] 

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
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



