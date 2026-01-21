# ContactInformationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** |  | [optional] 
**mobile_phone** | **str** | e.g. &#x60;+6281234567890&#x60; | [optional] 
**original_address** | **str** |  | [optional] 

## Example

```python
from catapa import ContactInformationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ContactInformationRequest from a JSON string
contact_information_request_instance = ContactInformationRequest.from_json(json)
# print the JSON string representation of the object
print(ContactInformationRequest.to_json())

# convert the object into a dict
contact_information_request_dict = contact_information_request_instance.to_dict()
# create an instance of ContactInformationRequest from a dict
contact_information_request_from_dict = ContactInformationRequest.from_dict(contact_information_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



