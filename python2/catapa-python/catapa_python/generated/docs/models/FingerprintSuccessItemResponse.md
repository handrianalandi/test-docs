# FingerprintSuccessItemResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_number** | **str** |  | [optional] 
**time** | **str** |  | [optional] 
**var_date** | **str** |  | [optional] 

## Example

```python
from catapa import FingerprintSuccessItemResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FingerprintSuccessItemResponse from a JSON string
fingerprint_success_item_response_instance = FingerprintSuccessItemResponse.from_json(json)
# print the JSON string representation of the object
print(FingerprintSuccessItemResponse.to_json())

# convert the object into a dict
fingerprint_success_item_response_dict = fingerprint_success_item_response_instance.to_dict()
# create an instance of FingerprintSuccessItemResponse from a dict
fingerprint_success_item_response_from_dict = FingerprintSuccessItemResponse.from_dict(fingerprint_success_item_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



