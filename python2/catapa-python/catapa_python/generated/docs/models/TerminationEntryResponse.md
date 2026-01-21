# TerminationEntryResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**termination_code** | **str** |  | [optional] 
**effective_date** | **str** |  | [optional] 
**payroll_method** | **str** |  | [optional] 
**termination_reason** | [**TerminationReasonResponse**](TerminationReasonResponse.md) |  | [optional] 
**bpjs_manpower_end_date** | **str** |  | [optional] 
**bpjs_healthcare_end_date** | **str** |  | [optional] 
**pph21_membership_end_date** | **str** |  | [optional] 
**request_date** | **str** |  | [optional] 
**service_period_by** | **str** |  | [optional] 
**rehire** | **bool** |  | [optional] 
**approval_status** | **str** |  | [optional] 

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



