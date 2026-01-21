# ContactInformationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**mobile_phone** | **str** |  | [optional] 
**email** | **str** | deprecated | [optional] 
**work_email** | **str** |  | [optional] 
**personal_email** | **str** |  | [optional] 
**original_address** | **str** |  | [optional] 
**original_address_phone_number** | **str** |  | [optional] 
**original_address_detail** | [**AddressDetailResponse**](AddressDetailResponse.md) |  | [optional] 
**facebook** | **str** |  | [optional] 
**linked_in** | **str** |  | [optional] 
**effective_date** | **date** | YYYY-MM-DD | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 
**residential_address** | [**AddressDetailResponse**](AddressDetailResponse.md) |  | [optional] 
**emergency_contact** | [**EmergencyContactResponse**](EmergencyContactResponse.md) |  | [optional] 
**employee** | [**EmployeeFullResponse**](EmployeeFullResponse.md) |  | [optional] 

## Example

```python
from catapa import ContactInformationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ContactInformationResponse from a JSON string
contact_information_response_instance = ContactInformationResponse.from_json(json)
# print the JSON string representation of the object
print(ContactInformationResponse.to_json())

# convert the object into a dict
contact_information_response_dict = contact_information_response_instance.to_dict()
# create an instance of ContactInformationResponse from a dict
contact_information_response_from_dict = ContactInformationResponse.from_dict(contact_information_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



