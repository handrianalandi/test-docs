# AdditionalAssignmentApprovalListResponse


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
**content** | [**List[AdditionalAssignmentApprovalResponse]**](AdditionalAssignmentApprovalResponse.md) |  | [optional] 

## Example

```python
from catapa import AdditionalAssignmentApprovalListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalAssignmentApprovalListResponse from a JSON string
additional_assignment_approval_list_response_instance = AdditionalAssignmentApprovalListResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalAssignmentApprovalListResponse.to_json())

# convert the object into a dict
additional_assignment_approval_list_response_dict = additional_assignment_approval_list_response_instance.to_dict()
# create an instance of AdditionalAssignmentApprovalListResponse from a dict
additional_assignment_approval_list_response_from_dict = AdditionalAssignmentApprovalListResponse.from_dict(additional_assignment_approval_list_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



