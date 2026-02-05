# WorkflowReasonCategoryRequest

## Properties

| Name   | Type  | Required | Description |
| :----- | :---- | :------: | :---------- |
| `code` | `str` |    ✅    |             |
| `name` | `str` |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import WorkflowReasonCategoryRequest

workflow_reason_category_request = WorkflowReasonCategoryRequest(code="'0'", name="'0'")
```

### Working with JSON

```python
from catapa import WorkflowReasonCategoryRequest

# Parse from JSON
json_str = '{"code": "example"}'
workflow_reason_category_request = WorkflowReasonCategoryRequest.from_json(json_str)

# Convert to JSON
print(workflow_reason_category_request.to_json())
```

### Working with dictionaries

```python
from catapa import WorkflowReasonCategoryRequest

# Convert to/from dictionary
data_dict = workflow_reason_category_request.to_dict()
workflow_reason_category_request = WorkflowReasonCategoryRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(workflow_reason_category_request.code)
# Update properties
workflow_reason_category_request.code = "new_value"
```
