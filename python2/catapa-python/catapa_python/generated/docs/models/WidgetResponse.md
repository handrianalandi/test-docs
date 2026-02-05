# WidgetResponse

## Properties

| Name          | Type                                                | Description                          |
| :------------ | :-------------------------------------------------- | :----------------------------------- |
| `id`          | `str`                                               | Unique identifier for the widget     |
| `position`    | `float`                                             | Position of the widget in the layout |
| `widget_type` | `str`                                               | Type of the widget                   |
| `content`     | [`WidgetContentResponse`](WidgetContentResponse.md) |                                      |

## Usage Examples

### Creating an instance

```python
from catapa import WidgetResponse

widget_response = WidgetResponse(
    id="''",
    position=1.337,
    widget_type="''",
    content=None,  # [WidgetContentResponse](WidgetContentResponse.md)
)
```

### Working with JSON

```python
from catapa import WidgetResponse

# Parse from JSON
json_str = '{"id": "example"}'
widget_response = WidgetResponse.from_json(json_str)

# Convert to JSON
print(widget_response.to_json())
```

### Working with dictionaries

```python
from catapa import WidgetResponse

# Convert to/from dictionary
data_dict = widget_response.to_dict()
widget_response = WidgetResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(widget_response.id)
# Update properties
widget_response.id = "new_value"
```
