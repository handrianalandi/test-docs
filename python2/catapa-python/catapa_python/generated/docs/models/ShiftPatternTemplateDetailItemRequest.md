# ShiftPatternTemplateDetailItemRequest

## Properties

| Name       | Type                                                                                          | Required | Description |
| :--------- | :-------------------------------------------------------------------------------------------- | :------: | :---------- |
| `shift`    | [`ShiftPatternTemplateDetailItemRequestShift`](ShiftPatternTemplateDetailItemRequestShift.md) |    ✅    |             |
| `sequence` | `float`                                                                                       |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import ShiftPatternTemplateDetailItemRequest

shift_pattern_template_detail_item_request = ShiftPatternTemplateDetailItemRequest(
    shift=None,  # [ShiftPatternTemplateDetailItemRequestShift](ShiftPatternTemplateDetailItemRequestShift.md)
    sequence=1.337,
)
```

### Working with JSON

```python
from catapa import ShiftPatternTemplateDetailItemRequest

# Parse from JSON
json_str = '{"shift": "example"}'
shift_pattern_template_detail_item_request = (
    ShiftPatternTemplateDetailItemRequest.from_json(json_str)
)

# Convert to JSON
print(shift_pattern_template_detail_item_request.to_json())
```

### Working with dictionaries

```python
from catapa import ShiftPatternTemplateDetailItemRequest

# Convert to/from dictionary
data_dict = shift_pattern_template_detail_item_request.to_dict()
shift_pattern_template_detail_item_request = (
    ShiftPatternTemplateDetailItemRequest.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(shift_pattern_template_detail_item_request.shift)
# Update properties
shift_pattern_template_detail_item_request.shift = new_value
```
