# PositionListItemResponse

## Properties

| Name           | Type    | Description |
| :------------- | :------ | :---------- |
| `id`           | `str`   |             |
| `code`         | `str`   |             |
| `name`         | `str`   |             |
| `created_by`   | `str`   |             |
| `created_date` | `float` |             |
| `updated_by`   | `str`   |             |
| `updated_date` | `float` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PositionListItemResponse

position_list_item_response = PositionListItemResponse(
    id="''",
    code="''",
    name="''",
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
)
```

### Working with JSON

```python
from catapa import PositionListItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
position_list_item_response = PositionListItemResponse.from_json(json_str)

# Convert to JSON
print(position_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import PositionListItemResponse

# Convert to/from dictionary
data_dict = position_list_item_response.to_dict()
position_list_item_response = PositionListItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(position_list_item_response.id)
# Update properties
position_list_item_response.id = "new_value"
```
