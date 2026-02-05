# ReligionResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `name` | `str` |             |
| `code` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import ReligionResponse

religion_response = ReligionResponse(id="''", name="''", code="''")
```

### Working with JSON

```python
from catapa import ReligionResponse

# Parse from JSON
json_str = '{"id": "example"}'
religion_response = ReligionResponse.from_json(json_str)

# Convert to JSON
print(religion_response.to_json())
```

### Working with dictionaries

```python
from catapa import ReligionResponse

# Convert to/from dictionary
data_dict = religion_response.to_dict()
religion_response = ReligionResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(religion_response.id)
# Update properties
religion_response.id = "new_value"
```
