# FingerprintItemRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification_number** | **str** |  | 
**time** | **str** |  | 

## Example

```python
from catapa import FingerprintItemRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FingerprintItemRequest from a JSON string
fingerprint_item_request_instance = FingerprintItemRequest.from_json(json)
# print the JSON string representation of the object
print(FingerprintItemRequest.to_json())

# convert the object into a dict
fingerprint_item_request_dict = fingerprint_item_request_instance.to_dict()
# create an instance of FingerprintItemRequest from a dict
fingerprint_item_request_from_dict = FingerprintItemRequest.from_dict(fingerprint_item_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



