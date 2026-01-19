# SeverancePaymentPlanResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**termination_entry_id** | **UUID** |  | [optional] 
**termination_entry_code** | **str** |  | [optional] 
**employee_id** | **UUID** |  | [optional] 
**employee_identification_number** | **str** |  | [optional] 
**employee_name** | **str** |  | [optional] 
**termination_reason_id** | **UUID** |  | [optional] 
**termination_reason_name** | **str** |  | [optional] 
**termination_date** | **date** |  | [optional] 
**planned_date** | **date** |  | [optional] 
**payment_date** | **date** |  | [optional] 
**payment_method** | **str** |  | [optional] 
**payment_option** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**non_taxable_amount** | **float** |  | [optional] 
**thp_amount** | **float** |  | [optional] 
**pph_amount** | **float** |  | [optional] 
**tax_allowance** | **float** |  | [optional] 

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
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



