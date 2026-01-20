# RolePermissionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Permission identifier | [optional] 
**data_id** | **str** | Data identifier (e.g., organization ID, location ID, or \&quot;ALL\&quot;) | [optional] 
**data_type** | **str** | Type of data this permission applies to | [optional] 
**role** | [**RoleIdNameResponse**](RoleIdNameResponse.md) | Role associated with this permission | [optional] 
**organization_name** | **str** | Name of the organization (when dataType is ORGANIZATION) | [optional] 
**location_name** | **str** | Name of the location (when dataType is LOCATION) | [optional] 

## Example

```python
from catapa import RolePermissionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RolePermissionResponse from a JSON string
role_permission_response_instance = RolePermissionResponse.from_json(json)
# print the JSON string representation of the object
print(RolePermissionResponse.to_json())

# convert the object into a dict
role_permission_response_dict = role_permission_response_instance.to_dict()
# create an instance of RolePermissionResponse from a dict
role_permission_response_from_dict = RolePermissionResponse.from_dict(role_permission_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



