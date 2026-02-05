# ShiftPatternTemplateRequest

## Properties

| Name                             | Type                                                                                      | Required | Description |
| :------------------------------- | :---------------------------------------------------------------------------------------- | :------: | :---------- |
| `name`                           | `str`                                                                                     |    ✅    |             |
| `shift_pattern_template_details` | [`List[ShiftPatternTemplateDetailItemRequest]`](ShiftPatternTemplateDetailItemRequest.md) |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import ShiftPatternTemplateRequest

shift_pattern_template_request = ShiftPatternTemplateRequest(
    name="''",
    shift_pattern_template_details=[],  # List[[ShiftPatternTemplateDetailItemRequest](ShiftPatternTemplateDetailItemRequest.md)]
)
```

### Working with JSON

```python
from catapa import ShiftPatternTemplateRequest

# Parse from JSON
json_str = '{"name": "example"}'
shift_pattern_template_request = ShiftPatternTemplateRequest.from_json(json_str)

# Convert to JSON
print(shift_pattern_template_request.to_json())
```

### Working with dictionaries

```python
from catapa import ShiftPatternTemplateRequest

# Convert to/from dictionary
data_dict = shift_pattern_template_request.to_dict()
shift_pattern_template_request = ShiftPatternTemplateRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(shift_pattern_template_request.name)
# Update properties
shift_pattern_template_request.name = "new_value"
```
