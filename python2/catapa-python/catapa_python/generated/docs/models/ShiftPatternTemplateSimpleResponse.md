# ShiftPatternTemplateSimpleResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `name` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import ShiftPatternTemplateSimpleResponse

shift_pattern_template_simple_response = ShiftPatternTemplateSimpleResponse(
    id="''", name="''"
)
```

### Working with JSON

```python
from catapa import ShiftPatternTemplateSimpleResponse

# Parse from JSON
json_str = '{"id": "example"}'
shift_pattern_template_simple_response = ShiftPatternTemplateSimpleResponse.from_json(
    json_str
)

# Convert to JSON
print(shift_pattern_template_simple_response.to_json())
```

### Working with dictionaries

```python
from catapa import ShiftPatternTemplateSimpleResponse

# Convert to/from dictionary
data_dict = shift_pattern_template_simple_response.to_dict()
shift_pattern_template_simple_response = ShiftPatternTemplateSimpleResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(shift_pattern_template_simple_response.id)
# Update properties
shift_pattern_template_simple_response.id = "new_value"
```
