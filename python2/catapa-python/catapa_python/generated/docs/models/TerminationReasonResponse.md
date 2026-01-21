# TerminationReasonResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**name** | **str** |  | [optional] 
**termination_pph21_reason** | **str** |  | [optional] 
**termination_bpjs_manpower_reason** | **str** |  | [optional] 
**termination_reason_category** | **str** |  | [optional] 
**severance** | **bool** |  | [optional] 

## Example

```python
from catapa import TerminationReasonResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationReasonResponse from a JSON string
termination_reason_response_instance = TerminationReasonResponse.from_json(json)
# print the JSON string representation of the object
print(TerminationReasonResponse.to_json())

# convert the object into a dict
termination_reason_response_dict = termination_reason_response_instance.to_dict()
# create an instance of TerminationReasonResponse from a dict
termination_reason_response_from_dict = TerminationReasonResponse.from_dict(termination_reason_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



