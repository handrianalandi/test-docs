# PayrollProcessSnapshotWorkflowActivityResponse

## Properties

| Name                | Type                                                                                                  | Description |
| :------------------ | :---------------------------------------------------------------------------------------------------- | :---------- |
| `id`                | `str`                                                                                                 |             |
| `effective_date`    | `date`                                                                                                |             |
| `created_date`      | `float`                                                                                               |             |
| `updated_date`      | `float`                                                                                               |             |
| `workflow_template` | [`PayrollProcessSnapshotWorkflowTemplateResponse`](PayrollProcessSnapshotWorkflowTemplateResponse.md) |             |
| `workflow_reason`   | [`PayrollProcessSnapshotWorkflowReasonResponse`](PayrollProcessSnapshotWorkflowReasonResponse.md)     |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayrollProcessSnapshotWorkflowActivityResponse

payroll_process_snapshot_workflow_activity_response = PayrollProcessSnapshotWorkflowActivityResponse(
    id="''",
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    created_date=1.337,
    updated_date=1.337,
    workflow_template=None,  # [PayrollProcessSnapshotWorkflowTemplateResponse](PayrollProcessSnapshotWorkflowTemplateResponse.md)
    workflow_reason=None,  # [PayrollProcessSnapshotWorkflowReasonResponse](PayrollProcessSnapshotWorkflowReasonResponse.md)
)
```

### Working with JSON

```python
from catapa import PayrollProcessSnapshotWorkflowActivityResponse

# Parse from JSON
json_str = '{"id": "example"}'
payroll_process_snapshot_workflow_activity_response = (
    PayrollProcessSnapshotWorkflowActivityResponse.from_json(json_str)
)

# Convert to JSON
print(payroll_process_snapshot_workflow_activity_response.to_json())
```

### Working with dictionaries

```python
from catapa import PayrollProcessSnapshotWorkflowActivityResponse

# Convert to/from dictionary
data_dict = payroll_process_snapshot_workflow_activity_response.to_dict()
payroll_process_snapshot_workflow_activity_response = (
    PayrollProcessSnapshotWorkflowActivityResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(payroll_process_snapshot_workflow_activity_response.id)
# Update properties
payroll_process_snapshot_workflow_activity_response.id = "new_value"
```
