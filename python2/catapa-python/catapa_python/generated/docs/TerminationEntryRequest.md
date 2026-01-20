# TerminationEntryRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**termination_code** | **str** |  | [optional] 
**payroll_method** | **str** |  | 
**termination_reason_id** | **str** |  | 
**request_date** | **date** | YYYY-MM-DD | 
**bpjs_manpower_end_date** | **date** | YYYY-MM-DD | 
**service_period_by** | **str** |  | [optional] 
**pph21_membership_end_date** | **date** | YYYY-MM-DD | 
**bpjs_healthcare_end_date** | **date** | YYYY-MM-DD | 
**effective_date** | **date** | YYYY-MM-DD | 
**rehire** | **bool** | Deprecated field that no longer has any effect on terminated employee pages | 

## Example

```python
from catapa import TerminationEntryRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationEntryRequest from a JSON string
termination_entry_request_instance = TerminationEntryRequest.from_json(json)
# print the JSON string representation of the object
print(TerminationEntryRequest.to_json())

# convert the object into a dict
termination_entry_request_dict = termination_entry_request_instance.to_dict()
# create an instance of TerminationEntryRequest from a dict
termination_entry_request_from_dict = TerminationEntryRequest.from_dict(termination_entry_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



