# EmployeeIdentityCardRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identity_card_id** | **str** |  | 
**identity_card_number** | **str** | Alphanumeric | 
**expired_date** | **date** |  | [optional] 

## Example

```python
from catapa import EmployeeIdentityCardRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeIdentityCardRequest from a JSON string
employee_identity_card_request_instance = EmployeeIdentityCardRequest.from_json(json)
# print the JSON string representation of the object
print(EmployeeIdentityCardRequest.to_json())

# convert the object into a dict
employee_identity_card_request_dict = employee_identity_card_request_instance.to_dict()
# create an instance of EmployeeIdentityCardRequest from a dict
employee_identity_card_request_from_dict = EmployeeIdentityCardRequest.from_dict(employee_identity_card_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



