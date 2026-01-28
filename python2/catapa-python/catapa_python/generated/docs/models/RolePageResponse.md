# RolePageResponse


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
**content** | [**List[RoleIdNameResponse]**](RoleIdNameResponse.md) | List of roles | 

## Example

```python
from catapa import RolePageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RolePageResponse from a JSON string
role_page_response_instance = RolePageResponse.from_json(json)
# print the JSON string representation of the object
print(RolePageResponse.to_json())

# convert the object into a dict
role_page_response_dict = role_page_response_instance.to_dict()
# create an instance of RolePageResponse from a dict
role_page_response_from_dict = RolePageResponse.from_dict(role_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



