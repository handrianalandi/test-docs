# BpjsManpowerPremiumDetailsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**employee_id** | **str** |  | 
**employee_identification_number** | **str** |  | 
**employee_name** | **str** |  | 
**monthly_wage** | **float** |  | 
**current_month_detail** | [**BpjsManpowerCurrentMonthDetailResponse**](BpjsManpowerCurrentMonthDetailResponse.md) |  | 
**details** | [**List[BpjsManpowerPremiumDetailsItemResponse]**](BpjsManpowerPremiumDetailsItemResponse.md) | Possible empty list | 

## Example

```python
from catapa import BpjsManpowerPremiumDetailsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerPremiumDetailsResponse from a JSON string
bpjs_manpower_premium_details_response_instance = BpjsManpowerPremiumDetailsResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerPremiumDetailsResponse.to_json())

# convert the object into a dict
bpjs_manpower_premium_details_response_dict = bpjs_manpower_premium_details_response_instance.to_dict()
# create an instance of BpjsManpowerPremiumDetailsResponse from a dict
bpjs_manpower_premium_details_response_from_dict = BpjsManpowerPremiumDetailsResponse.from_dict(bpjs_manpower_premium_details_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



