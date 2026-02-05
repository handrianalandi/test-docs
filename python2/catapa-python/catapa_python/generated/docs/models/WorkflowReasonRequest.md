# WorkflowReasonRequest

## Properties

| Name       | Type                        | Required | Description |
| :--------- | :-------------------------- | :------: | :---------- |
| `code`     | `str`                       |    ✅    |             |
| `name`     | `str`                       |    ✅    |             |
| `category` | [`IdRequest`](IdRequest.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import WorkflowReasonRequest

workflow_reason_request = WorkflowReasonRequest(
    code="'0'", name="'0'", category=None  # [IdRequest](IdRequest.md)
)
```

### Working with JSON

```python
from catapa import WorkflowReasonRequest

# Parse from JSON
json_str = '{"code": "example"}'
workflow_reason_request = WorkflowReasonRequest.from_json(json_str)

# Convert to JSON
print(workflow_reason_request.to_json())
```

### Working with dictionaries

```python
from catapa import WorkflowReasonRequest

# Convert to/from dictionary
data_dict = workflow_reason_request.to_dict()
workflow_reason_request = WorkflowReasonRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(workflow_reason_request.code)
# Update properties
workflow_reason_request.code = "new_value"
```
