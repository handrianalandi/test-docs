# CustomTableColumnResponse

## Properties

| Name              | Type                | Description                                         |
| :---------------- | :------------------ | :-------------------------------------------------- |
| `id`              | `str`               | Unique identifier of the column                     |
| `column_name`     | `str`               | Technical name of the column                        |
| `field_name`      | `str`               | CamelCase version of columnName                     |
| `display_name`    | `str`               | Display name of the column                          |
| `field_order`     | `int`               | Order of the field in the table                     |
| `data_type`       | `str`               | Data type of the column                             |
| `is_required`     | `bool`              | Whether the column is required                      |
| `is_reference`    | `bool`              | Whether the column is a reference to another entity |
| `column_metadata` | `Dict[str, object]` | Additional metadata for the column                  |
| `tooltip`         | `str`               | Optional custom tooltip to be shown to the user     |

## Usage Examples

### Creating an instance

```python
from catapa import CustomTableColumnResponse

custom_table_column_response = CustomTableColumnResponse(
    id="''",
    column_name="''",
    field_name="''",
    display_name="''",
    field_order=56,
    data_type="''",
    is_required=True,
    is_reference=True,
    column_metadata={},
    tooltip="''",
)
```

### Working with JSON

```python
from catapa import CustomTableColumnResponse

# Parse from JSON
json_str = '{"id": "example"}'
custom_table_column_response = CustomTableColumnResponse.from_json(json_str)

# Convert to JSON
print(custom_table_column_response.to_json())
```

### Working with dictionaries

```python
from catapa import CustomTableColumnResponse

# Convert to/from dictionary
data_dict = custom_table_column_response.to_dict()
custom_table_column_response = CustomTableColumnResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(custom_table_column_response.id)
# Update properties
custom_table_column_response.id = "new_value"
```
