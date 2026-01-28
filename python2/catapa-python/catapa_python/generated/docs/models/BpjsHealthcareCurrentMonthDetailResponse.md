# BpjsHealthcareCurrentMonthDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_cutoff_date** | **str** |  | 
**end_cutoff_date** | **str** |  | 
**company_amount** | **float** |  | 
**employee_amount** | **float** |  | 

## Example

```python
from catapa import BpjsHealthcareCurrentMonthDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsHealthcareCurrentMonthDetailResponse from a JSON string
bpjs_healthcare_current_month_detail_response_instance = BpjsHealthcareCurrentMonthDetailResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsHealthcareCurrentMonthDetailResponse.to_json())

# convert the object into a dict
bpjs_healthcare_current_month_detail_response_dict = bpjs_healthcare_current_month_detail_response_instance.to_dict()
# create an instance of BpjsHealthcareCurrentMonthDetailResponse from a dict
bpjs_healthcare_current_month_detail_response_from_dict = BpjsHealthcareCurrentMonthDetailResponse.from_dict(bpjs_healthcare_current_month_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



