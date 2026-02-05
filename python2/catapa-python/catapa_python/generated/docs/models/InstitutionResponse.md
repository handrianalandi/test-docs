# InstitutionResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `name` | `str` |             |
| `code` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import InstitutionResponse

institution_response = InstitutionResponse(id="''", name="''", code="''")
```

### Working with JSON

```python
from catapa import InstitutionResponse

# Parse from JSON
json_str = '{"id": "example"}'
institution_response = InstitutionResponse.from_json(json_str)

# Convert to JSON
print(institution_response.to_json())
```

### Working with dictionaries

```python
from catapa import InstitutionResponse

# Convert to/from dictionary
data_dict = institution_response.to_dict()
institution_response = InstitutionResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(institution_response.id)
# Update properties
institution_response.id = "new_value"
```
