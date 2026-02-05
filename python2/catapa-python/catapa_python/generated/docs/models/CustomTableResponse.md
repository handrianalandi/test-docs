# CustomTableResponse

## Properties

| Name                     | Type                                                              | Description                               |
| :----------------------- | :---------------------------------------------------------------- | :---------------------------------------- |
| `id`                     | `str`                                                             | Unique identifier of the custom table     |
| `table_name`             | `str`                                                             | Technical name of the custom table        |
| `display_name`           | `str`                                                             | Display name of the custom table          |
| `menu_location`          | `str`                                                             | Location of the table in menu hierarchy   |
| `historical_type`        | `str`                                                             | Type of historical tracking for the table |
| `parent_entity`          | `str`                                                             | Parent entity reference                   |
| `parent_reference_field` | `str`                                                             | Field used for parent entity reference    |
| `columns`                | [`List[CustomTableColumnResponse]`](CustomTableColumnResponse.md) | List of columns in the table              |

## Usage Examples

### Creating an instance

```python
from catapa import CustomTableResponse

custom_table_response = CustomTableResponse(
    id="''",
    table_name="''",
    display_name="''",
    menu_location="''",
    historical_type="''",
    parent_entity="''",
    parent_reference_field="''",
    columns=[],  # List[[CustomTableColumnResponse](CustomTableColumnResponse.md)]
)
```

### Working with JSON

```python
from catapa import CustomTableResponse

# Parse from JSON
json_str = '{"id": "example"}'
custom_table_response = CustomTableResponse.from_json(json_str)

# Convert to JSON
print(custom_table_response.to_json())
```

### Working with dictionaries

```python
from catapa import CustomTableResponse

# Convert to/from dictionary
data_dict = custom_table_response.to_dict()
custom_table_response = CustomTableResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(custom_table_response.id)
# Update properties
custom_table_response.id = "new_value"
```
