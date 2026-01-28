# SeverancePaymentPlanResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**termination_entry_id** | **UUID** |  | 
**termination_entry_code** | **str** |  | 
**employee_id** | **UUID** |  | 
**employee_identification_number** | **str** |  | 
**employee_name** | **str** |  | 
**termination_reason_id** | **UUID** |  | 
**termination_reason_name** | **str** |  | 
**termination_date** | **date** |  | 
**planned_date** | **date** |  | 
**payment_date** | **date** |  | 
**payment_method** | **str** |  | 
**payment_option** | **str** |  | 
**amount** | **float** |  | 
**non_taxable_amount** | **float** |  | 
**thp_amount** | **float** |  | 
**pph_amount** | **float** |  | 
**tax_allowance** | **float** |  | 

## Example

```python
from catapa import SeverancePaymentPlanResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SeverancePaymentPlanResponse from a JSON string
severance_payment_plan_response_instance = SeverancePaymentPlanResponse.from_json(json)
# print the JSON string representation of the object
print(SeverancePaymentPlanResponse.to_json())

# convert the object into a dict
severance_payment_plan_response_dict = severance_payment_plan_response_instance.to_dict()
# create an instance of SeverancePaymentPlanResponse from a dict
severance_payment_plan_response_from_dict = SeverancePaymentPlanResponse.from_dict(severance_payment_plan_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



