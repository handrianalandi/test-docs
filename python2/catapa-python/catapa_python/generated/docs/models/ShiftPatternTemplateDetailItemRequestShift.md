# ShiftPatternTemplateDetailItemRequestShift

## Properties

| Name | Type  | Required | Description       |
| :--- | :---- | :------: | :---------------- |
| `id` | `str` |    ✅    | Unique identifier |

## Usage Examples

### Creating an instance

```python
from catapa import ShiftPatternTemplateDetailItemRequestShift

shift_pattern_template_detail_item_request_shift = (
    ShiftPatternTemplateDetailItemRequestShift(id="''")
)
```

### Working with JSON

```python
from catapa import ShiftPatternTemplateDetailItemRequestShift

# Parse from JSON
json_str = '{"id": "example"}'
shift_pattern_template_detail_item_request_shift = (
    ShiftPatternTemplateDetailItemRequestShift.from_json(json_str)
)

# Convert to JSON
print(shift_pattern_template_detail_item_request_shift.to_json())
```

### Working with dictionaries

```python
from catapa import ShiftPatternTemplateDetailItemRequestShift

# Convert to/from dictionary
data_dict = shift_pattern_template_detail_item_request_shift.to_dict()
shift_pattern_template_detail_item_request_shift = (
    ShiftPatternTemplateDetailItemRequestShift.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(shift_pattern_template_detail_item_request_shift.id)
# Update properties
shift_pattern_template_detail_item_request_shift.id = "new_value"
```
