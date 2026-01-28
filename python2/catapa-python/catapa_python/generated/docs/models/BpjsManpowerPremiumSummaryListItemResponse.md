# BpjsManpowerPremiumSummaryListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**employee_identification_number** | **str** |  | 
**employee_name** | **str** |  | 
**monthly_wage** | **float** |  | 
**jkk_amount** | **float** |  | 
**jkm_amount** | **float** |  | 
**jhtpk_amount** | **float** |  | 
**jhtp_amount** | **float** |  | 
**jppk_amount** | **float** |  | 
**jpp_amount** | **float** |  | 
**jkp_amount** | **float** |  | 

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



