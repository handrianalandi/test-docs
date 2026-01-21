# BpjsManpowerPremiumSummaryListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employee_identification_number** | **str** |  | [optional] 
**employee_name** | **str** |  | [optional] 
**monthly_wage** | **float** |  | [optional] 
**jkk_amount** | **float** |  | [optional] 
**jkm_amount** | **float** |  | [optional] 
**jhtpk_amount** | **float** |  | [optional] 
**jhtp_amount** | **float** |  | [optional] 
**jppk_amount** | **float** |  | [optional] 
**jpp_amount** | **float** |  | [optional] 
**jkp_amount** | **float** |  | [optional] 

## Example

```python
from catapa import BpjsManpowerPremiumSummaryListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerPremiumSummaryListItemResponse from a JSON string
bpjs_manpower_premium_summary_list_item_response_instance = BpjsManpowerPremiumSummaryListItemResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerPremiumSummaryListItemResponse.to_json())

# convert the object into a dict
bpjs_manpower_premium_summary_list_item_response_dict = bpjs_manpower_premium_summary_list_item_response_instance.to_dict()
# create an instance of BpjsManpowerPremiumSummaryListItemResponse from a dict
bpjs_manpower_premium_summary_list_item_response_from_dict = BpjsManpowerPremiumSummaryListItemResponse.from_dict(bpjs_manpower_premium_summary_list_item_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



