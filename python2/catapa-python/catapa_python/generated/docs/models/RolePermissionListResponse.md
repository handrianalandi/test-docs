# RolePermissionListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[RolePermissionResponse]**](RolePermissionResponse.md) | List of role permissions | [optional] 

## Example

```python
from catapa import RolePermissionListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RolePermissionListResponse from a JSON string
role_permission_list_response_instance = RolePermissionListResponse.from_json(json)
# print the JSON string representation of the object
print(RolePermissionListResponse.to_json())

# convert the object into a dict
role_permission_list_response_dict = role_permission_list_response_instance.to_dict()
# create an instance of RolePermissionListResponse from a dict
role_permission_list_response_from_dict = RolePermissionListResponse.from_dict(role_permission_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



