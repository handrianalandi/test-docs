# AdditionalAssignmentApprovalResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**action** | **str** |  | 
**approval_status** | **str** |  | 
**rejection_reason** | **str** |  | 
**employment_status_type** | [**EmploymentStatusTypeResponse**](EmploymentStatusTypeResponse.md) |  | 
**employment_type** | [**EmploymentTypeResponse**](EmploymentTypeResponse.md) |  | 
**effective_date** | **str** |  | 
**end_date** | **str** |  | 
**sign_date** | **str** |  | 
**created_by** | **str** |  | 
**created_date** | **float** |  | 
**updated_by** | **str** |  | 
**updated_date** | **float** |  | 
**organization** | [**OrganizationResponse**](OrganizationResponse.md) |  | 
**position** | [**PositionResponse**](PositionResponse.md) |  | 
**job_level** | [**JobLevelResponse**](JobLevelResponse.md) |  | 
**job_title** | [**JobTitleResponse**](JobTitleResponse.md) |  | 
**location** | [**LocationResponse**](LocationResponse.md) |  | 
**cost_center** | [**CostCenterResponse**](CostCenterResponse.md) |  | 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | 
**sub_location** | [**AdditionalAssignmentApprovaleSubLocationResponse**](AdditionalAssignmentApprovaleSubLocationResponse.md) |  | 
**operational_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | 
**additional_assignment** | [**AdditionalAssignmentResponse**](AdditionalAssignmentResponse.md) |  | 

## Example

```python
from catapa import AdditionalAssignmentApprovalResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalAssignmentApprovalResponse from a JSON string
additional_assignment_approval_response_instance = AdditionalAssignmentApprovalResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalAssignmentApprovalResponse.to_json())

# convert the object into a dict
additional_assignment_approval_response_dict = additional_assignment_approval_response_instance.to_dict()
# create an instance of AdditionalAssignmentApprovalResponse from a dict
additional_assignment_approval_response_from_dict = AdditionalAssignmentApprovalResponse.from_dict(additional_assignment_approval_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



