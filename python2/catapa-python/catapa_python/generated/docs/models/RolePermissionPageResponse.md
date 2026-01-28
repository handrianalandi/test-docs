# RolePermissionPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[RolePermissionResponse]**](RolePermissionResponse.md) | List of role permissions | 

## Example

```python
from catapa import RolePermissionPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RolePermissionPageResponse from a JSON string
role_permission_page_response_instance = RolePermissionPageResponse.from_json(json)
# print the JSON string representation of the object
print(RolePermissionPageResponse.to_json())

# convert the object into a dict
role_permission_page_response_dict = role_permission_page_response_instance.to_dict()
# create an instance of RolePermissionPageResponse from a dict
role_permission_page_response_from_dict = RolePermissionPageResponse.from_dict(role_permission_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



