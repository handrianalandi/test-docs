# PayrollProcessSnapshotWorkflowReasonResponse

## Properties

| Name       | Type                                          | Description |
| :--------- | :-------------------------------------------- | :---------- |
| `id`       | `str`                                         |             |
| `code`     | `str`                                         |             |
| `name`     | `str`                                         |             |
| `category` | [`IdCodeNameResponse`](IdCodeNameResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayrollProcessSnapshotWorkflowReasonResponse

payroll_process_snapshot_workflow_reason_response = (
    PayrollProcessSnapshotWorkflowReasonResponse(
        id="''",
        code="''",
        name="''",
        category=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    )
)
```

### Working with JSON

```python
from catapa import PayrollProcessSnapshotWorkflowReasonResponse

# Parse from JSON
json_str = '{"id": "example"}'
payroll_process_snapshot_workflow_reason_response = (
    PayrollProcessSnapshotWorkflowReasonResponse.from_json(json_str)
)

# Convert to JSON
print(payroll_process_snapshot_workflow_reason_response.to_json())
```

### Working with dictionaries

```python
from catapa import PayrollProcessSnapshotWorkflowReasonResponse

# Convert to/from dictionary
data_dict = payroll_process_snapshot_workflow_reason_response.to_dict()
payroll_process_snapshot_workflow_reason_response = (
    PayrollProcessSnapshotWorkflowReasonResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(payroll_process_snapshot_workflow_reason_response.id)
# Update properties
payroll_process_snapshot_workflow_reason_response.id = "new_value"
```
