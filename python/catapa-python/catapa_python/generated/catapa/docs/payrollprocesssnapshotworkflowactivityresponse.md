# PayrollProcessSnapshotWorkflowActivityResponse

## Properties

| Name                   | Type                                                                                                    | Description | Notes       |
| ---------------------- | ------------------------------------------------------------------------------------------------------- | ----------- | ----------- |
| **id**                 | **str**                                                                                                 |             | \[optional] |
| **effective\_date**    | **date**                                                                                                |             | \[optional] |
| **created\_date**      | **float**                                                                                               |             | \[optional] |
| **updated\_date**      | **float**                                                                                               |             | \[optional] |
| **workflow\_template** | [**PayrollProcessSnapshotWorkflowTemplateResponse**](payrollprocesssnapshotworkflowtemplateresponse.md) |             | \[optional] |
| **workflow\_reason**   | [**PayrollProcessSnapshotWorkflowReasonResponse**](payrollprocesssnapshotworkflowreasonresponse.md)     |             | \[optional] |

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

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
