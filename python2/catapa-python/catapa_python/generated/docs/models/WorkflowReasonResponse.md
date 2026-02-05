# WorkflowReasonResponse

## Properties

| Name           | Type                                                                  | Description |
| :------------- | :-------------------------------------------------------------------- | :---------- |
| `id`           | `str`                                                                 |             |
| `created_date` | `float`                                                               |             |
| `updated_date` | `float`                                                               |             |
| `code`         | `str`                                                                 |             |
| `name`         | `str`                                                                 |             |
| `category`     | [`WorkflowReasonCategoryResponse`](WorkflowReasonCategoryResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import WorkflowReasonResponse

workflow_reason_response = WorkflowReasonResponse(
    id="''",
    created_date=1.337,
    updated_date=1.337,
    code="''",
    name="''",
    category=None,  # [WorkflowReasonCategoryResponse](WorkflowReasonCategoryResponse.md)
)
```

### Working with JSON

```python
from catapa import WorkflowReasonResponse

# Parse from JSON
json_str = '{"id": "example"}'
workflow_reason_response = WorkflowReasonResponse.from_json(json_str)

# Convert to JSON
print(workflow_reason_response.to_json())
```

### Working with dictionaries

```python
from catapa import WorkflowReasonResponse

# Convert to/from dictionary
data_dict = workflow_reason_response.to_dict()
workflow_reason_response = WorkflowReasonResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(workflow_reason_response.id)
# Update properties
workflow_reason_response.id = "new_value"
```
