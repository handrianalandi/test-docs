# BpjsHealthcarePremiumSummaryListItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**employee_identification_number** | **str** |  | 
**employee_name** | **str** |  | 
**monthly_wage** | **float** |  | 
**company_amount** | **float** |  | 
**employee_amount** | **float** |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



