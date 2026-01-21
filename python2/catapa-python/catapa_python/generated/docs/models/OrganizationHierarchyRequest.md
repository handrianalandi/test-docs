# OrganizationHierarchyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**name** | **str** |  | 
**color** | **str** | Hexadecimal color code, e.g. &#x60;#62A4D5&#x60; | [optional] 
**level** | **float** |  | 

## Example

```python
from catapa import OrganizationHierarchyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationHierarchyRequest from a JSON string
organization_hierarchy_request_instance = OrganizationHierarchyRequest.from_json(json)
# print the JSON string representation of the object
print(OrganizationHierarchyRequest.to_json())

# convert the object into a dict
organization_hierarchy_request_dict = organization_hierarchy_request_instance.to_dict()
# create an instance of OrganizationHierarchyRequest from a dict
organization_hierarchy_request_from_dict = OrganizationHierarchyRequest.from_dict(organization_hierarchy_request_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



