# OrganizationHierarchyListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | [optional] 
**last** | **bool** |  | [optional] 
**total_elements** | **int** |  | [optional] 
**number_of_elements** | **int** |  | [optional] 
**has_content** | **bool** |  | [optional] 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | [optional] 
**first** | **bool** |  | [optional] 
**size** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**content** | [**List[OrganizationHierarchyResponse]**](OrganizationHierarchyResponse.md) |  | [optional] 

## Example

```python
from catapa import OrganizationHierarchyListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationHierarchyListResponse from a JSON string
organization_hierarchy_list_response_instance = OrganizationHierarchyListResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationHierarchyListResponse.to_json())

# convert the object into a dict
organization_hierarchy_list_response_dict = organization_hierarchy_list_response_instance.to_dict()
# create an instance of OrganizationHierarchyListResponse from a dict
organization_hierarchy_list_response_from_dict = OrganizationHierarchyListResponse.from_dict(organization_hierarchy_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



