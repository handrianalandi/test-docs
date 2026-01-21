# EmployeeIdentityCardListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**List[EmployeeIdentityCardResponse]**](EmployeeIdentityCardResponse.md) |  | [optional] 

## Example

```python
from catapa import EmployeeIdentityCardListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EmployeeIdentityCardListResponse from a JSON string
employee_identity_card_list_response_instance = EmployeeIdentityCardListResponse.from_json(json)
# print the JSON string representation of the object
print(EmployeeIdentityCardListResponse.to_json())

# convert the object into a dict
employee_identity_card_list_response_dict = employee_identity_card_list_response_instance.to_dict()
# create an instance of EmployeeIdentityCardListResponse from a dict
employee_identity_card_list_response_from_dict = EmployeeIdentityCardListResponse.from_dict(employee_identity_card_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



