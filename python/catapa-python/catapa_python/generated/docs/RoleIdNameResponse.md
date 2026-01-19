# RoleIdNameResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Role ID | [optional] 
**name** | **str** | Role Name | [optional] 

## Example

```python
from catapa import RoleIdNameResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RoleIdNameResponse from a JSON string
role_id_name_response_instance = RoleIdNameResponse.from_json(json)
# print the JSON string representation of the object
print(RoleIdNameResponse.to_json())

# convert the object into a dict
role_id_name_response_dict = role_id_name_response_instance.to_dict()
# create an instance of RoleIdNameResponse from a dict
role_id_name_response_from_dict = RoleIdNameResponse.from_dict(role_id_name_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



