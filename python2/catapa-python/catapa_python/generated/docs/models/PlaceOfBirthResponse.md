# PlaceOfBirthResponse

## Properties

| Name    | Type                                | Description |
| :------ | :---------------------------------- | :---------- |
| `id`    | `str`                               |             |
| `code`  | `str`                               |             |
| `name`  | `str`                               |             |
| `state` | [`StateResponse`](StateResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import PlaceOfBirthResponse

place_of_birth_response = PlaceOfBirthResponse(
    id="''", code="''", name="''", state=None  # [StateResponse](StateResponse.md)
)
```

### Working with JSON

```python
from catapa import PlaceOfBirthResponse

# Parse from JSON
json_str = '{"id": "example"}'
place_of_birth_response = PlaceOfBirthResponse.from_json(json_str)

# Convert to JSON
print(place_of_birth_response.to_json())
```

### Working with dictionaries

```python
from catapa import PlaceOfBirthResponse

# Convert to/from dictionary
data_dict = place_of_birth_response.to_dict()
place_of_birth_response = PlaceOfBirthResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(place_of_birth_response.id)
# Update properties
place_of_birth_response.id = "new_value"
```
