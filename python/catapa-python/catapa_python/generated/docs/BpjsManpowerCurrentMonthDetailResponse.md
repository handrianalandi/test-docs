# BpjsManpowerCurrentMonthDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_cutoff_date** | **str** |  | [optional] 
**end_cutoff_date** | **str** |  | [optional] 
**jkk_amount** | **float** |  | [optional] 
**jkm_amount** | **float** |  | [optional] 
**jhtpk_amount** | **float** |  | [optional] 
**jhtp_amount** | **float** |  | [optional] 
**jppk_amount** | **float** |  | [optional] 
**jpp_amount** | **float** |  | [optional] 
**jkp_amount** | **float** |  | [optional] 

## Example

```python
from catapa import BpjsManpowerCurrentMonthDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of BpjsManpowerCurrentMonthDetailResponse from a JSON string
bpjs_manpower_current_month_detail_response_instance = BpjsManpowerCurrentMonthDetailResponse.from_json(json)
# print the JSON string representation of the object
print(BpjsManpowerCurrentMonthDetailResponse.to_json())

# convert the object into a dict
bpjs_manpower_current_month_detail_response_dict = bpjs_manpower_current_month_detail_response_instance.to_dict()
# create an instance of BpjsManpowerCurrentMonthDetailResponse from a dict
bpjs_manpower_current_month_detail_response_from_dict = BpjsManpowerCurrentMonthDetailResponse.from_dict(bpjs_manpower_current_month_detail_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



