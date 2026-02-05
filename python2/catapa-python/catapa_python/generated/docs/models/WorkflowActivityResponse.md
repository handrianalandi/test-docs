# WorkflowActivityResponse

## Properties

| Name                | Type                                                      | Description |
| :------------------ | :-------------------------------------------------------- | :---------- |
| `id`                | `str`                                                     |             |
| `created_date`      | `float`                                                   |             |
| `updated_date`      | `float`                                                   |             |
| `workflow_template` | [`WorkflowTemplateResponse`](WorkflowTemplateResponse.md) |             |
| `effective_date`    | `str`                                                     |             |
| `workflow_reason`   | [`WorkflowReasonResponse`](WorkflowReasonResponse.md)     |             |
| `employee`          | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)     |             |

## Usage Examples

### Creating an instance

```python
from catapa import WorkflowActivityResponse

workflow_activity_response = WorkflowActivityResponse(
    id="''",
    created_date=1.337,
    updated_date=1.337,
    workflow_template=None,  # [WorkflowTemplateResponse](WorkflowTemplateResponse.md)
    effective_date="''",
    workflow_reason=None,  # [WorkflowReasonResponse](WorkflowReasonResponse.md)
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
)
```

### Working with JSON

```python
from catapa import WorkflowActivityResponse

# Parse from JSON
json_str = '{"id": "example"}'
workflow_activity_response = WorkflowActivityResponse.from_json(json_str)

# Convert to JSON
print(workflow_activity_response.to_json())
```

### Working with dictionaries

```python
from catapa import WorkflowActivityResponse

# Convert to/from dictionary
data_dict = workflow_activity_response.to_dict()
workflow_activity_response = WorkflowActivityResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(workflow_activity_response.id)
# Update properties
workflow_activity_response.id = "new_value"
```
