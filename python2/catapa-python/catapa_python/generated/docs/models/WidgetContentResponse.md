# WidgetContentResponse

## Properties

| Name    | Type    | Description        |
| :------ | :------ | :----------------- |
| `id`    | `str`   | Content identifier |
| `title` | `str`   | Content title      |
| `size`  | `float` | Content size       |

## Usage Examples

### Creating an instance

```python
from catapa import WidgetContentResponse

widget_content_response = WidgetContentResponse(id="''", title="''", size=1.337)
```

### Working with JSON

```python
from catapa import WidgetContentResponse

# Parse from JSON
json_str = '{"id": "example"}'
widget_content_response = WidgetContentResponse.from_json(json_str)

# Convert to JSON
print(widget_content_response.to_json())
```

### Working with dictionaries

```python
from catapa import WidgetContentResponse

# Convert to/from dictionary
data_dict = widget_content_response.to_dict()
widget_content_response = WidgetContentResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(widget_content_response.id)
# Update properties
widget_content_response.id = "new_value"
```
