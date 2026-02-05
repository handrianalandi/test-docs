# WorkflowReasonCategoryResponse

## Properties

| Name                                | Type   | Description |
| :---------------------------------- | :----- | :---------- |
| `id`                                | `str`  |             |
| `code`                              | `str`  |             |
| `name`                              | `str`  |             |
| `restrict_duplicate_effective_date` | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import WorkflowReasonCategoryResponse

workflow_reason_category_response = WorkflowReasonCategoryResponse(
    id="''", code="''", name="''", restrict_duplicate_effective_date=True
)
```

### Working with JSON

```python
from catapa import WorkflowReasonCategoryResponse

# Parse from JSON
json_str = '{"id": "example"}'
workflow_reason_category_response = WorkflowReasonCategoryResponse.from_json(json_str)

# Convert to JSON
print(workflow_reason_category_response.to_json())
```

### Working with dictionaries

```python
from catapa import WorkflowReasonCategoryResponse

# Convert to/from dictionary
data_dict = workflow_reason_category_response.to_dict()
workflow_reason_category_response = WorkflowReasonCategoryResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(workflow_reason_category_response.id)
# Update properties
workflow_reason_category_response.id = "new_value"
```
