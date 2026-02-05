# ShiftPatternTemplateDetailResponse

## Properties

| Name       | Type                                | Description |
| :--------- | :---------------------------------- | :---------- |
| `shift`    | [`ShiftResponse`](ShiftResponse.md) |             |
| `sequence` | `float`                             |             |

## Usage Examples

### Creating an instance

```python
from catapa import ShiftPatternTemplateDetailResponse

shift_pattern_template_detail_response = ShiftPatternTemplateDetailResponse(
    shift=None, sequence=1.337  # [ShiftResponse](ShiftResponse.md)
)
```

### Working with JSON

```python
from catapa import ShiftPatternTemplateDetailResponse

# Parse from JSON
json_str = '{"shift": "example"}'
shift_pattern_template_detail_response = ShiftPatternTemplateDetailResponse.from_json(
    json_str
)

# Convert to JSON
print(shift_pattern_template_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import ShiftPatternTemplateDetailResponse

# Convert to/from dictionary
data_dict = shift_pattern_template_detail_response.to_dict()
shift_pattern_template_detail_response = ShiftPatternTemplateDetailResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(shift_pattern_template_detail_response.shift)
# Update properties
shift_pattern_template_detail_response.shift = new_value
```
