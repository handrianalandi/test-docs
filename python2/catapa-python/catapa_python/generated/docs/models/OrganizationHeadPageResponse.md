# OrganizationHeadPageResponse


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
**content** | [**List[OrganizationHeadResponse]**](OrganizationHeadResponse.md) |  | 

## Example

```python
from catapa import OrganizationHeadPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationHeadPageResponse from a JSON string
organization_head_page_response_instance = OrganizationHeadPageResponse.from_json(json)
# print the JSON string representation of the object
print(OrganizationHeadPageResponse.to_json())

# convert the object into a dict
organization_head_page_response_dict = organization_head_page_response_instance.to_dict()
# create an instance of OrganizationHeadPageResponse from a dict
organization_head_page_response_from_dict = OrganizationHeadPageResponse.from_dict(organization_head_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



