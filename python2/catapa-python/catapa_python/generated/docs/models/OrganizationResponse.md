# OrganizationResponse


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
**organization_parent** | [**OrganizationParentResponse**](OrganizationParentResponse.md) |  | 
**company** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 

## Example

```python
from catapa import OrganizationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationResponse from a JSON string
organization_response_instance = OrganizationResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationResponse.to_json())

# convert the object into a dict
organization_response_dict = organization_response_instance.to_dict()
# create an instance of OrganizationResponse from a dict
organization_response_from_dict = OrganizationResponse.from_dict(organization_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



