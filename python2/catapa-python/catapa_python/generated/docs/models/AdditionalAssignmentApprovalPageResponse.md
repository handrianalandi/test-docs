# AdditionalAssignmentApprovalPageResponse


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
**content** | [**List[AdditionalAssignmentApprovalResponse]**](AdditionalAssignmentApprovalResponse.md) |  | 

## Example

```python
from catapa import AdditionalAssignmentApprovalPageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalAssignmentApprovalPageResponse from a JSON string
additional_assignment_approval_page_response_instance = AdditionalAssignmentApprovalPageResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalAssignmentApprovalPageResponse.to_json())

# convert the object into a dict
additional_assignment_approval_page_response_dict = additional_assignment_approval_page_response_instance.to_dict()
# create an instance of AdditionalAssignmentApprovalPageResponse from a dict
additional_assignment_approval_page_response_from_dict = AdditionalAssignmentApprovalPageResponse.from_dict(additional_assignment_approval_page_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



