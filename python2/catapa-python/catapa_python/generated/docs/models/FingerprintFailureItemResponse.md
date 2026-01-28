# FingerprintFailureItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**message** | **str** |  | 
**params** | [**EmployeeIdentificationNumberResponse**](EmployeeIdentificationNumberResponse.md) |  | 

## Example

```python
from catapa import FingerprintFailureItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FingerprintFailureItemResponse from a JSON string
fingerprint_failure_item_response_instance = FingerprintFailureItemResponse.from_json(json)
# print the JSON string representation of the object
print(FingerprintFailureItemResponse.to_json())

# convert the object into a dict
fingerprint_failure_item_response_dict = fingerprint_failure_item_response_instance.to_dict()
# create an instance of FingerprintFailureItemResponse from a dict
fingerprint_failure_item_response_from_dict = FingerprintFailureItemResponse.from_dict(fingerprint_failure_item_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



