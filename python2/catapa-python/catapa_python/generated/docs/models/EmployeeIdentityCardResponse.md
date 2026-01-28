# EmployeeIdentityCardResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**identity_card** | [**IdentityCardResponse**](IdentityCardResponse.md) |  | 
**identity_card_number** | **str** |  | 
**expired_date** | **str** |  | 

## Example

```python
from catapa import EmployeeIdentityCardResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeIdentityCardResponse from a JSON string
employee_identity_card_response_instance = EmployeeIdentityCardResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeIdentityCardResponse.to_json())

# convert the object into a dict
employee_identity_card_response_dict = employee_identity_card_response_instance.to_dict()
# create an instance of EmployeeIdentityCardResponse from a dict
employee_identity_card_response_from_dict = EmployeeIdentityCardResponse.from_dict(employee_identity_card_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



