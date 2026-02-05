# StateListItemResponse

## Properties

| Name          | Type                                    | Description |
| :------------ | :-------------------------------------- | :---------- |
| `id`          | `str`                                   |             |
| `code`        | `str`                                   |             |
| `name`        | `str`                                   |             |
| `country`     | [`CountryResponse`](CountryResponse.md) |             |
| `description` | `str`                                   |             |

## Usage Examples

### Creating an instance

```python
from catapa import StateListItemResponse

state_list_item_response = StateListItemResponse(
    id="''",
    code="''",
    name="''",
    country=None,  # [CountryResponse](CountryResponse.md)
    description="''",
)
```

### Working with JSON

```python
from catapa import StateListItemResponse

# Parse from JSON
json_str = '{"id": "example"}'
state_list_item_response = StateListItemResponse.from_json(json_str)

# Convert to JSON
print(state_list_item_response.to_json())
```

### Working with dictionaries

```python
from catapa import StateListItemResponse

# Convert to/from dictionary
data_dict = state_list_item_response.to_dict()
state_list_item_response = StateListItemResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(state_list_item_response.id)
# Update properties
state_list_item_response.id = "new_value"
```
