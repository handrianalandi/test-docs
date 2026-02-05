# PlaceOfBirthRequest

## Properties

| Name    | Type                              | Required | Description |
| :------ | :-------------------------------- | :------: | :---------- |
| `id`    | `str`                             |    ❌    |             |
| `code`  | `str`                             |    ❌    |             |
| `name`  | `str`                             |    ❌    |             |
| `state` | [`StateRequest`](StateRequest.md) |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import PlaceOfBirthRequest

place_of_birth_request = PlaceOfBirthRequest(
    id="''", code="''", name="''", state=None  # [StateRequest](StateRequest.md)
)
```

### Working with JSON

```python
from catapa import PlaceOfBirthRequest

# Parse from JSON
json_str = '{"id": "example"}'
place_of_birth_request = PlaceOfBirthRequest.from_json(json_str)

# Convert to JSON
print(place_of_birth_request.to_json())
```

### Working with dictionaries

```python
from catapa import PlaceOfBirthRequest

# Convert to/from dictionary
data_dict = place_of_birth_request.to_dict()
place_of_birth_request = PlaceOfBirthRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(place_of_birth_request.id)
# Update properties
place_of_birth_request.id = "new_value"
```
