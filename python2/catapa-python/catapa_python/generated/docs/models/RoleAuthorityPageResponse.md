# RoleAuthorityPageResponse


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
from catapa import RoleAuthorityPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RoleAuthorityPageResponse from a JSON string
role_authority_page_response_instance = RoleAuthorityPageResponse.from_json(json)
# print the JSON string representation of the object
print(RoleAuthorityPageResponse.to_json())

# convert the object into a dict
role_authority_page_response_dict = role_authority_page_response_instance.to_dict()
# create an instance of RoleAuthorityPageResponse from a dict
role_authority_page_response_from_dict = RoleAuthorityPageResponse.from_dict(role_authority_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



