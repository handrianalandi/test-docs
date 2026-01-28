# TerminationEntryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**termination_code** | **str** |  | 
**effective_date** | **str** |  | 
**payroll_method** | **str** |  | 
**termination_reason** | [**TerminationReasonResponse**](TerminationReasonResponse.md) |  | 
**bpjs_manpower_end_date** | **str** |  | 
**bpjs_healthcare_end_date** | **str** |  | 
**pph21_membership_end_date** | **str** |  | 
**request_date** | **str** |  | 
**service_period_by** | **str** |  | 
**rehire** | **bool** |  | 
**approval_status** | **str** |  | 

## Example

```python
from catapa import TerminationEntryResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationEntryResponse from a JSON string
termination_entry_response_instance = TerminationEntryResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationEntryResponse.to_json())

# convert the object into a dict
termination_entry_response_dict = termination_entry_response_instance.to_dict()
# create an instance of TerminationEntryResponse from a dict
termination_entry_response_from_dict = TerminationEntryResponse.from_dict(termination_entry_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



