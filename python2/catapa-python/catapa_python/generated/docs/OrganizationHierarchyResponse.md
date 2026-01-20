# OrganizationHierarchyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**color** | **str** |  | [optional] 
**level** | **int** |  | [optional] 

## Example

```python
from catapa import OrganizationHierarchyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationHierarchyResponse from a JSON string
organization_hierarchy_response_instance = OrganizationHierarchyResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationHierarchyResponse.to_json())

# convert the object into a dict
organization_hierarchy_response_dict = organization_hierarchy_response_instance.to_dict()
# create an instance of OrganizationHierarchyResponse from a dict
organization_hierarchy_response_from_dict = OrganizationHierarchyResponse.from_dict(organization_hierarchy_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



