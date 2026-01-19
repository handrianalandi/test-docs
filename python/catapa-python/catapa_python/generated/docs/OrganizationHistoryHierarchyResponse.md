# OrganizationHistoryHierarchyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**level** | **int** |  | [optional] 

## Example

```python
from catapa import OrganizationHistoryHierarchyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationHistoryHierarchyResponse from a JSON string
organization_history_hierarchy_response_instance = OrganizationHistoryHierarchyResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationHistoryHierarchyResponse.to_json())

# convert the object into a dict
organization_history_hierarchy_response_dict = organization_history_hierarchy_response_instance.to_dict()
# create an instance of OrganizationHistoryHierarchyResponse from a dict
organization_history_hierarchy_response_from_dict = OrganizationHistoryHierarchyResponse.from_dict(organization_history_hierarchy_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



