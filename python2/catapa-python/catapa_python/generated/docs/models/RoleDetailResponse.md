# RoleDetailResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Role identifier | 
**name** | **str** | Role name | 
**description** | **str** | Role description | 
**role_type** | **str** | Type of role | 
**cascade_organization_permission** | **bool** | Whether organization permissions cascade to child organizations | 
**authorities** | [**List[AuthorityDetailResponse]**](AuthorityDetailResponse.md) | List of authorities assigned to this role | 

## Example

```python
from catapa import RoleDetailResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RoleDetailResponse from a JSON string
role_detail_response_instance = RoleDetailResponse.from_json(json)
# print the JSON string representation of the object
print(RoleDetailResponse.to_json())

# convert the object into a dict
role_detail_response_dict = role_detail_response_instance.to_dict()
# create an instance of RoleDetailResponse from a dict
role_detail_response_from_dict = RoleDetailResponse.from_dict(role_detail_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



