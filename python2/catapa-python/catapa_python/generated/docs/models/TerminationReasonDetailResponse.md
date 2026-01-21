# TerminationReasonDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**termination_pph21_reason** | **str** | Use taxReason instead | [optional] 
**termination_bpjs_manpower_reason** | **str** | Use bpjsManpowerReason instead | [optional] 
**termination_reason_category** | **str** | Use reasonCategory instead | [optional] 
**tax_reason** | [**TerminationTaxReasonResponse**](TerminationTaxReasonResponse.md) |  | [optional] 
**bpjs_manpower_reason** | [**TerminationBPJSManpowerReasonResponse**](TerminationBPJSManpowerReasonResponse.md) |  | [optional] 
**reason_category** | [**TerminationReasonCategoryResponse**](TerminationReasonCategoryResponse.md) |  | [optional] 
**severance** | **bool** |  | [optional] 

## Example

```python
from catapa import TerminationReasonDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationReasonDetailResponse from a JSON string
termination_reason_detail_response_instance = TerminationReasonDetailResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationReasonDetailResponse.to_json())

# convert the object into a dict
termination_reason_detail_response_dict = termination_reason_detail_response_instance.to_dict()
# create an instance of TerminationReasonDetailResponse from a dict
termination_reason_detail_response_from_dict = TerminationReasonDetailResponse.from_dict(termination_reason_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



