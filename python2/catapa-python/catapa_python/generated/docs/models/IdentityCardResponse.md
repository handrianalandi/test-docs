# IdentityCardResponse

## Properties

| Name                 | Type  | Description |
| :------------------- | :---- | :---------- |
| `id`                 | `str` |             |
| `code`               | `str` |             |
| `name`               | `str` |             |
| `identity_card_type` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import IdentityCardResponse

identity_card_response = IdentityCardResponse(
    id="''", code="''", name="''", identity_card_type="''"
)
```

### Working with JSON

```python
from catapa import IdentityCardResponse

# Parse from JSON
json_str = '{"id": "example"}'
identity_card_response = IdentityCardResponse.from_json(json_str)

# Convert to JSON
print(identity_card_response.to_json())
```

### Working with dictionaries

```python
from catapa import IdentityCardResponse

# Convert to/from dictionary
data_dict = identity_card_response.to_dict()
identity_card_response = IdentityCardResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(identity_card_response.id)
# Update properties
identity_card_response.id = "new_value"
```
