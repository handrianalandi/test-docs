# EmergencyContactResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**relation** | **str** |  | [optional] 
**phone** | **str** |  | [optional] 

## Example

```python
from catapa import EmergencyContactResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmergencyContactResponse from a JSON string
emergency_contact_response_instance = EmergencyContactResponse.from_json(json)
# print the JSON string representation of the object
print(EmergencyContactResponse.to_json())

# convert the object into a dict
emergency_contact_response_dict = emergency_contact_response_instance.to_dict()
# create an instance of EmergencyContactResponse from a dict
emergency_contact_response_from_dict = EmergencyContactResponse.from_dict(emergency_contact_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



