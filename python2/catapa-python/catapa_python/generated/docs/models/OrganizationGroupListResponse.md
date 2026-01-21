# OrganizationGroupListResponse


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
**content** | [**List[IdCodeNameResponse]**](IdCodeNameResponse.md) |  | [optional] 

## Example

```python
from catapa import OrganizationGroupListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationGroupListResponse from a JSON string
organization_group_list_response_instance = OrganizationGroupListResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationGroupListResponse.to_json())

# convert the object into a dict
organization_group_list_response_dict = organization_group_list_response_instance.to_dict()
# create an instance of OrganizationGroupListResponse from a dict
organization_group_list_response_from_dict = OrganizationGroupListResponse.from_dict(organization_group_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



