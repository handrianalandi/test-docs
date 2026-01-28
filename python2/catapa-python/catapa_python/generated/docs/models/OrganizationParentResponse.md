# OrganizationParentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**code** | **str** |  | 
**name** | **str** |  | 
**type** | **str** |  | 
**effective_date** | **date** | YYYY-MM-DD | 
**end_date** | **date** | YYYY-MM-DD | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 
**organization_hierarchy** | [**OrganizationHierarchyResponse**](OrganizationHierarchyResponse.md) |  | 
**organization_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**organization_parent** | **object** |  | 
**company** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 

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
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



