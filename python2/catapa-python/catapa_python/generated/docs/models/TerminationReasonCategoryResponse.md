# TerminationReasonCategoryResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `name` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import TerminationReasonCategoryResponse

termination_reason_category_response = TerminationReasonCategoryResponse(
    id="''", name="''"
)
```

### Working with JSON

```python
from catapa import TerminationReasonCategoryResponse

# Parse from JSON
json_str = '{"id": "example"}'
termination_reason_category_response = TerminationReasonCategoryResponse.from_json(
    json_str
)

# Convert to JSON
print(termination_reason_category_response.to_json())
```

### Working with dictionaries

```python
from catapa import TerminationReasonCategoryResponse

# Convert to/from dictionary
data_dict = termination_reason_category_response.to_dict()
termination_reason_category_response = TerminationReasonCategoryResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(termination_reason_category_response.id)
# Update properties
termination_reason_category_response.id = "new_value"
```
