# StateResponse

## Properties

| Name      | Type                                    | Description |
| :-------- | :-------------------------------------- | :---------- |
| `id`      | `str`                                   |             |
| `code`    | `str`                                   |             |
| `name`    | `str`                                   |             |
| `country` | [`CountryResponse`](CountryResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import StateResponse

state_response = StateResponse(
    id="''", code="''", name="''", country=None  # [CountryResponse](CountryResponse.md)
)
```

### Working with JSON

```python
from catapa import StateResponse

# Parse from JSON
json_str = '{"id": "example"}'
state_response = StateResponse.from_json(json_str)

# Convert to JSON
print(state_response.to_json())
```

### Working with dictionaries

```python
from catapa import StateResponse

# Convert to/from dictionary
data_dict = state_response.to_dict()
state_response = StateResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(state_response.id)
# Update properties
state_response.id = "new_value"
```
