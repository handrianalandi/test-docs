# AdditionalAssignmentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**employment_status_type** | [**EmploymentStatusTypeResponse**](EmploymentStatusTypeResponse.md) |  | [optional] 
**employment_type** | [**EmploymentTypeResponse**](EmploymentTypeResponse.md) |  | [optional] 
**effective_date** | **str** |  | [optional] 
**end_date** | **str** |  | [optional] 
**sign_date** | **str** |  | [optional] 
**created_by** | **str** |  | [optional] 
**created_date** | **float** |  | [optional] 
**updated_by** | **str** |  | [optional] 
**updated_date** | **float** |  | [optional] 
**organization** | [**OrganizationResponse**](OrganizationResponse.md) |  | [optional] 
**position** | [**PositionResponse**](PositionResponse.md) |  | [optional] 
**job_level** | [**JobLevelResponse**](JobLevelResponse.md) |  | [optional] 
**job_title** | [**JobTitleResponse**](JobTitleResponse.md) |  | [optional] 
**location** | [**LocationResponse**](LocationResponse.md) |  | [optional] 
**cost_center** | [**CostCenterResponse**](CostCenterResponse.md) |  | [optional] 
**employee** | [**EmployeeSimpleResponse**](EmployeeSimpleResponse.md) |  | [optional] 
**sub_location** | [**SubLocationResponse**](SubLocationResponse.md) |  | [optional] 
**operational_group** | [**IdCodeNameResponse**](IdCodeNameResponse.md) |  | [optional] 

## Example

```python
from catapa import AdditionalAssignmentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdditionalAssignmentResponse from a JSON string
additional_assignment_response_instance = AdditionalAssignmentResponse.from_json(json)
# print the JSON string representation of the object
print(AdditionalAssignmentResponse.to_json())

# convert the object into a dict
additional_assignment_response_dict = additional_assignment_response_instance.to_dict()
# create an instance of AdditionalAssignmentResponse from a dict
additional_assignment_response_from_dict = AdditionalAssignmentResponse.from_dict(additional_assignment_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



