# OrganizationGroupPageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_pages** | **int** |  | 
**last** | **bool** |  | 
**total_elements** | **int** |  | 
**number_of_elements** | **int** |  | 
**sort** | [**List[SortProperty]**](SortProperty.md) |  | 
**first** | **bool** |  | 
**size** | **int** |  | 
**number** | **int** |  | 
**content** | [**List[IdCodeNameResponse]**](IdCodeNameResponse.md) |  | 

## Example

```python
from catapa import OrganizationGroupPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationGroupPageResponse from a JSON string
organization_group_page_response_instance = OrganizationGroupPageResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationGroupPageResponse.to_json())

# convert the object into a dict
organization_group_page_response_dict = organization_group_page_response_instance.to_dict()
# create an instance of OrganizationGroupPageResponse from a dict
organization_group_page_response_from_dict = OrganizationGroupPageResponse.from_dict(organization_group_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



