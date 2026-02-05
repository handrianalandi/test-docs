# WorkflowTemplateResponse

## Properties

| Name      | Type  | Description |
| :-------- | :---- | :---------- |
| `id`      | `str` |             |
| `name`    | `str` |             |
| `type`    | `str` |             |
| `context` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import WorkflowTemplateResponse

workflow_template_response = WorkflowTemplateResponse(
    id="''", name="''", type="''", context="''"
)
```

### Working with JSON

```python
from catapa import WorkflowTemplateResponse

# Parse from JSON
json_str = '{"id": "example"}'
workflow_template_response = WorkflowTemplateResponse.from_json(json_str)

# Convert to JSON
print(workflow_template_response.to_json())
```

### Working with dictionaries

```python
from catapa import WorkflowTemplateResponse

# Convert to/from dictionary
data_dict = workflow_template_response.to_dict()
workflow_template_response = WorkflowTemplateResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(workflow_template_response.id)
# Update properties
workflow_template_response.id = "new_value"
```
