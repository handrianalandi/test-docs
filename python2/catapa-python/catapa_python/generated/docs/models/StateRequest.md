# StateRequest

## Properties

| Name      | Type                                  | Required | Description |
| :-------- | :------------------------------------ | :------: | :---------- |
| `id`      | `str`                                 |    ❌    |             |
| `code`    | `str`                                 |    ❌    |             |
| `name`    | `str`                                 |    ❌    |             |
| `country` | [`CountryRequest`](CountryRequest.md) |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import StateRequest

state_request = StateRequest(
    id="''", code="''", name="''", country=None  # [CountryRequest](CountryRequest.md)
)
```

### Working with JSON

```python
from catapa import StateRequest

# Parse from JSON
json_str = '{"id": "example"}'
state_request = StateRequest.from_json(json_str)

# Convert to JSON
print(state_request.to_json())
```

### Working with dictionaries

```python
from catapa import StateRequest

# Convert to/from dictionary
data_dict = state_request.to_dict()
state_request = StateRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(state_request.id)
# Update properties
state_request.id = "new_value"
```
