# FamilyApprovalPageResponse


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
**content** | [**List[FamilyApprovalListItemResponse]**](FamilyApprovalListItemResponse.md) |  | [optional] 

## Example

```python
from catapa import FamilyApprovalPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of FamilyApprovalPageResponse from a JSON string
family_approval_page_response_instance = FamilyApprovalPageResponse.from_json(json)
# print the JSON string representation of the object
print(FamilyApprovalPageResponse.to_json())

# convert the object into a dict
family_approval_page_response_dict = family_approval_page_response_instance.to_dict()
# create an instance of FamilyApprovalPageResponse from a dict
family_approval_page_response_from_dict = FamilyApprovalPageResponse.from_dict(family_approval_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



