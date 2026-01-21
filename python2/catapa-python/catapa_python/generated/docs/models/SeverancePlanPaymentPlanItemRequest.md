# SeverancePlanPaymentPlanItemRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**planned_date** | **str** |  | 
**payment_date** | **str** |  | 
**amount** | **float** |  | 

## Example

```python
from catapa import SeverancePlanPaymentPlanItemRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePlanPaymentPlanItemRequest from a JSON string
severance_plan_payment_plan_item_request_instance = SeverancePlanPaymentPlanItemRequest.from_json(json)
# print the JSON string representation of the object
print(SeverancePlanPaymentPlanItemRequest.to_json())

# convert the object into a dict
severance_plan_payment_plan_item_request_dict = severance_plan_payment_plan_item_request_instance.to_dict()
# create an instance of SeverancePlanPaymentPlanItemRequest from a dict
severance_plan_payment_plan_item_request_from_dict = SeverancePlanPaymentPlanItemRequest.from_dict(severance_plan_payment_plan_item_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



