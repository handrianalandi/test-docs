# PayrollProcessSnapshotWorkflowActivityResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**effective_date** | **date** |  | 
**created_date** | **float** |  | 
**updated_date** | **float** |  | 
**workflow_template** | [**PayrollProcessSnapshotWorkflowTemplateResponse**](PayrollProcessSnapshotWorkflowTemplateResponse.md) |  | 
**workflow_reason** | [**PayrollProcessSnapshotWorkflowReasonResponse**](PayrollProcessSnapshotWorkflowReasonResponse.md) |  | 

## Example

```python
from catapa import PayrollProcessSnapshotWorkflowActivityResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayrollProcessSnapshotWorkflowActivityResponse from a JSON string
payroll_process_snapshot_workflow_activity_response_instance = PayrollProcessSnapshotWorkflowActivityResponse.from_json(json)
# print the JSON string representation of the object
print(PayrollProcessSnapshotWorkflowActivityResponse.to_json())

# convert the object into a dict
payroll_process_snapshot_workflow_activity_response_dict = payroll_process_snapshot_workflow_activity_response_instance.to_dict()
# create an instance of PayrollProcessSnapshotWorkflowActivityResponse from a dict
payroll_process_snapshot_workflow_activity_response_from_dict = PayrollProcessSnapshotWorkflowActivityResponse.from_dict(payroll_process_snapshot_workflow_activity_response_dict)
```
[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)



