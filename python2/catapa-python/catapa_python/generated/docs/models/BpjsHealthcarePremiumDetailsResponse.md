# BpjsHealthcarePremiumDetailsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_id** | **str** |  | 
**employee_identification_number** | **str** |  | 
**employee_name** | **str** |  | 
**monthly_wage** | **float** |  | 
**current_month_detail** | [**BpjsHealthcareCurrentMonthDetailResponse**](BpjsHealthcareCurrentMonthDetailResponse.md) |  | 
**details** | [**List[BpjsHealthcarePremiumDetailsItemResponse]**](BpjsHealthcarePremiumDetailsItemResponse.md) |  | 

## Example

```python
from catapa import BpjsHealthcarePremiumDetailsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcarePremiumDetailsResponse from a JSON string
bpjs_healthcare_premium_details_response_instance = BpjsHealthcarePremiumDetailsResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcarePremiumDetailsResponse.to_json())

# convert the object into a dict
bpjs_healthcare_premium_details_response_dict = bpjs_healthcare_premium_details_response_instance.to_dict()
# create an instance of BpjsHealthcarePremiumDetailsResponse from a dict
bpjs_healthcare_premium_details_response_from_dict = BpjsHealthcarePremiumDetailsResponse.from_dict(bpjs_healthcare_premium_details_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



