# ShiftPatternTemplateItemResponse

## Properties

| Name                             | Type                                                                                | Description |
| :------------------------------- | :---------------------------------------------------------------------------------- | :---------- |
| `id`                             | `str`                                                                               |             |
| `name`                           | `str`                                                                               |             |
| `shift_pattern_template_details` | [`List[ShiftPatternTemplateDetailResponse]`](ShiftPatternTemplateDetailResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import ShiftPatternTemplateItemResponse

shift_pattern_template_item_response = ShiftPatternTemplateItemResponse(
    id="''",
    name="''",
    shift_pattern_template_details=[],  # List[[ShiftPatternTemplateDetailResponse](ShiftPatternTemplateDetailResponse.md)]
)
```

### Working with JSON

```python
from catapa import ShiftPatternTemplateItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
shift_pattern_template_item_response = ShiftPatternTemplateItemResponse.from_json(
    json_str
)

# Convert to JSON
print(shift_pattern_template_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import ShiftPatternTemplateItemResponse

# Convert to/from dictionary
data_dict = shift_pattern_template_item_response.to_dict()
shift_pattern_template_item_response = ShiftPatternTemplateItemResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(shift_pattern_template_item_response.id)
# Update properties
shift_pattern_template_item_response.id = "new_value"
```
