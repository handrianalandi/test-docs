# PayrollProcessSnapshotWorkflowTemplateResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `type` | `str` |             |
| `name` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayrollProcessSnapshotWorkflowTemplateResponse

payroll_process_snapshot_workflow_template_response = (
    PayrollProcessSnapshotWorkflowTemplateResponse(id="''", type="''", name="''")
)
```

### Working with JSON

```python
from catapa import PayrollProcessSnapshotWorkflowTemplateResponse

# Parse from JSON
json_str = '{"id": "example"}'
payroll_process_snapshot_workflow_template_response = (
    PayrollProcessSnapshotWorkflowTemplateResponse.from_json(json_str)
)

# Convert to JSON
print(payroll_process_snapshot_workflow_template_response.to_json())
```

### Working with dictionaries

```python
from catapa import PayrollProcessSnapshotWorkflowTemplateResponse

# Convert to/from dictionary
data_dict = payroll_process_snapshot_workflow_template_response.to_dict()
payroll_process_snapshot_workflow_template_response = (
    PayrollProcessSnapshotWorkflowTemplateResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(payroll_process_snapshot_workflow_template_response.id)
# Update properties
payroll_process_snapshot_workflow_template_response.id = "new_value"
```
