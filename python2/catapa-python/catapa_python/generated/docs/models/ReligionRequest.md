# ReligionRequest

## Properties

| Name   | Type  | Required | Description |
| :----- | :---- | :------: | :---------- |
| `name` | `str` |    ✅    |             |
| `code` | `str` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import ReligionRequest

religion_request = ReligionRequest(name="'0'", code="''")
```

### Working with JSON

```python
from catapa import ReligionRequest

# Parse from JSON
json_str = '{"name": "example"}'
religion_request = ReligionRequest.from_json(json_str)

# Convert to JSON
print(religion_request.to_json())
```

### Working with dictionaries

```python
from catapa import ReligionRequest

# Convert to/from dictionary
data_dict = religion_request.to_dict()
religion_request = ReligionRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(religion_request.name)
# Update properties
religion_request.name = "new_value"
```
