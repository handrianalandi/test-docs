# ContactInformationResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**mobile_phone** | **str** |  | 
**email** | **str** | deprecated | 
**work_email** | **str** |  | 
**personal_email** | **str** |  | 
**original_address** | **str** |  | 
**original_address_phone_number** | **str** |  | 
**original_address_detail** | [**AddressDetailResponse**](AddressDetailResponse.md) |  | 
**facebook** | **str** |  | 
**linked_in** | **str** |  | 
**effective_date** | **date** | YYYY-MM-DD | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 
**residential_address** | [**AddressDetailResponse**](AddressDetailResponse.md) |  | 
**emergency_contact** | [**EmergencyContactResponse**](EmergencyContactResponse.md) |  | 
**employee** | [**EmployeeFullResponse**](EmployeeFullResponse.md) |  | 

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



