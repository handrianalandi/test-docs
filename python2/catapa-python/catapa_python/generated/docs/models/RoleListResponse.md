# RoleListResponse


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
**content** | [**List[RoleIdNameResponse]**](RoleIdNameResponse.md) | List of roles | [optional] 

## Example

```python
from catapa import RoleListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RoleListResponse from a JSON string
role_list_response_instance = RoleListResponse.from_json(json)
# print the JSON string representation of the object
print(RoleListResponse.to_json())

# convert the object into a dict
role_list_response_dict = role_list_response_instance.to_dict()
# create an instance of RoleListResponse from a dict
role_list_response_from_dict = RoleListResponse.from_dict(role_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



