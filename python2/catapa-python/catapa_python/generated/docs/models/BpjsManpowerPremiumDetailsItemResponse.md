# BpjsManpowerPremiumDetailsItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_cutoff_date** | **str** |  | [optional] 
**end_cutoff_date** | **str** |  | [optional] 
**jkk_amount** | **float** | Amount can be null because the date period is not processed yet | [optional] 
**jkm_amount** | **float** | Amount can be null because the date period is not processed yet | [optional] 
**jhtpk_amount** | **float** | Amount can be null because the date period is not processed yet | [optional] 
**jhtp_amount** | **float** | Amount can be null because the date period is not processed yet | [optional] 
**jppk_amount** | **float** | Amount can be null because the date period is not processed yet | [optional] 
**jpp_amount** | **float** | Amount can be null because the date period is not processed yet | [optional] 
**jkp_amount** | **float** |  | [optional] 

## Example

```python
from catapa import BpjsManpowerPremiumDetailsItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerPremiumDetailsItemResponse from a JSON string
bpjs_manpower_premium_details_item_response_instance = BpjsManpowerPremiumDetailsItemResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerPremiumDetailsItemResponse.to_json())

# convert the object into a dict
bpjs_manpower_premium_details_item_response_dict = bpjs_manpower_premium_details_item_response_instance.to_dict()
# create an instance of BpjsManpowerPremiumDetailsItemResponse from a dict
bpjs_manpower_premium_details_item_response_from_dict = BpjsManpowerPremiumDetailsItemResponse.from_dict(bpjs_manpower_premium_details_item_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



