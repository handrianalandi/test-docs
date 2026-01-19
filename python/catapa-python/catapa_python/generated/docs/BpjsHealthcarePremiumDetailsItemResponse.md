# BpjsHealthcarePremiumDetailsItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_cutoff_date** | **str** |  | [optional] 
**end_cutoff_date** | **str** |  | [optional] 
**company_amount** | **float** | Value can be null if the date period is not processed yet | [optional] 
**employee_amount** | **float** | Value can be null if the date period is not processed yet | [optional] 

## Example

```python
from catapa import BpjsHealthcarePremiumDetailsItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcarePremiumDetailsItemResponse from a JSON string
bpjs_healthcare_premium_details_item_response_instance = BpjsHealthcarePremiumDetailsItemResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcarePremiumDetailsItemResponse.to_json())

# convert the object into a dict
bpjs_healthcare_premium_details_item_response_dict = bpjs_healthcare_premium_details_item_response_instance.to_dict()
# create an instance of BpjsHealthcarePremiumDetailsItemResponse from a dict
bpjs_healthcare_premium_details_item_response_from_dict = BpjsHealthcarePremiumDetailsItemResponse.from_dict(bpjs_healthcare_premium_details_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



