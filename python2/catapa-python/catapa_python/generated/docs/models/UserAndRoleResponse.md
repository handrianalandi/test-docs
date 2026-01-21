# UserAndRoleResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**username** | **str** |  | 
**email** | **str** |  | [optional] 
**employee** | [**EmployeeIdNameResponse**](EmployeeIdNameResponse.md) |  | [optional] 
**roles** | [**List[RoleResponse]**](RoleResponse.md) |  | 

## Example

```python
from catapa import UserAndRoleResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UserAndRoleResponse from a JSON string
user_and_role_response_instance = UserAndRoleResponse.from_json(json)
# print the JSON string representation of the object
print(UserAndRoleResponse.to_json())

# convert the object into a dict
user_and_role_response_dict = user_and_role_response_instance.to_dict()
# create an instance of UserAndRoleResponse from a dict
user_and_role_response_from_dict = UserAndRoleResponse.from_dict(user_and_role_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



