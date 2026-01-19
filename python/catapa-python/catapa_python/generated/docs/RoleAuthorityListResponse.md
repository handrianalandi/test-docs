# RoleAuthorityListResponse


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
**content** | [**List[RoleAuthorityResponse]**](RoleAuthorityResponse.md) | List of role authorities | [optional] 

## Example

```python
from catapa import RoleAuthorityListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RoleAuthorityListResponse from a JSON string
role_authority_list_response_instance = RoleAuthorityListResponse.from_json(json)
# print the JSON string representation of the object
print(RoleAuthorityListResponse.to_json())

# convert the object into a dict
role_authority_list_response_dict = role_authority_list_response_instance.to_dict()
# create an instance of RoleAuthorityListResponse from a dict
role_authority_list_response_from_dict = RoleAuthorityListResponse.from_dict(role_authority_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



