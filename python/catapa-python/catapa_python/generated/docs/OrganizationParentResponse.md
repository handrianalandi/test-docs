# OrganizationParentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**effective_date** | **date** | YYYY-MM-DD | [optional] 
**end_date** | **date** | YYYY-MM-DD | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 
**organization_hierarchy** | [**OrganizationHierarchyResponse**](OrganizationHierarchyResponse.md) |  | [optional] 
**organization_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 
**organization_parent** | **object** |  | [optional] 
**company** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 

## Example

```python
from catapa import OrganizationParentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationParentResponse from a JSON string
organization_parent_response_instance = OrganizationParentResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationParentResponse.to_json())

# convert the object into a dict
organization_parent_response_dict = organization_parent_response_instance.to_dict()
# create an instance of OrganizationParentResponse from a dict
organization_parent_response_from_dict = OrganizationParentResponse.from_dict(organization_parent_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



