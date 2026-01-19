# PayrollProcessSnapshotWorkflowReasonResponse

## Properties

| Name         | Type                                            | Description | Notes       |
| ------------ | ----------------------------------------------- | ----------- | ----------- |
| **id**       | **str**                                         |             | \[optional] |
| **code**     | **str**                                         |             | \[optional] |
| **name**     | **str**                                         |             | \[optional] |
| **category** | [**IdCodeNameResponse**](idcodenameresponse.md) |             | \[optional] |

## Example

```python
from catapa import PayrollProcessSnapshotWorkflowReasonResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PayrollProcessSnapshotWorkflowReasonResponse from a JSON string
payroll_process_snapshot_workflow_reason_response_instance = PayrollProcessSnapshotWorkflowReasonResponse.from_json(json)
# print the JSON string representation of the object
print(PayrollProcessSnapshotWorkflowReasonResponse.to_json())

# convert the object into a dict
payroll_process_snapshot_workflow_reason_response_dict = payroll_process_snapshot_workflow_reason_response_instance.to_dict()
# create an instance of PayrollProcessSnapshotWorkflowReasonResponse from a dict
payroll_process_snapshot_workflow_reason_response_from_dict = PayrollProcessSnapshotWorkflowReasonResponse.from_dict(payroll_process_snapshot_workflow_reason_response_dict)
```

[\[Back to Model list\]](../#documentation-for-models) [\[Back to API list\]](../#documentation-for-api-endpoints) [\[Back to README\]](../)
