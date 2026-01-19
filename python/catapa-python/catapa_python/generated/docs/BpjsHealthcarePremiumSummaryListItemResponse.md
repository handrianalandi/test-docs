# BpjsHealthcarePremiumSummaryListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employee_identification_number** | **str** |  | [optional] 
**employee_name** | **str** |  | [optional] 
**monthly_wage** | **float** |  | [optional] 
**company_amount** | **float** |  | [optional] 
**employee_amount** | **float** |  | [optional] 

## Example

```python
from catapa import BpjsHealthcarePremiumSummaryListItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcarePremiumSummaryListItemResponse from a JSON string
bpjs_healthcare_premium_summary_list_item_response_instance = BpjsHealthcarePremiumSummaryListItemResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcarePremiumSummaryListItemResponse.to_json())

# convert the object into a dict
bpjs_healthcare_premium_summary_list_item_response_dict = bpjs_healthcare_premium_summary_list_item_response_instance.to_dict()
# create an instance of BpjsHealthcarePremiumSummaryListItemResponse from a dict
bpjs_healthcare_premium_summary_list_item_response_from_dict = BpjsHealthcarePremiumSummaryListItemResponse.from_dict(bpjs_healthcare_premium_summary_list_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



