# TerminationReasonRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**tax_reason** | [**IdRequest**](IdRequest.md) |  | 
**bpjs_manpower_reason** | [**IdRequest**](IdRequest.md) |  | 
**reason_category** | [**IdRequest**](IdRequest.md) |  | 
**severance** | **bool** |  | [optional] [default to False]

## Example

```python
from catapa import TerminationReasonRequest

# TODO update the JSON string below
json = "{}"
# create an instance of TerminationReasonRequest from a JSON string
termination_reason_request_instance = TerminationReasonRequest.from_json(json)
# print the JSON string representation of the object
print(TerminationReasonRequest.to_json())

# convert the object into a dict
termination_reason_request_dict = termination_reason_request_instance.to_dict()
# create an instance of TerminationReasonRequest from a dict
termination_reason_request_from_dict = TerminationReasonRequest.from_dict(termination_reason_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



