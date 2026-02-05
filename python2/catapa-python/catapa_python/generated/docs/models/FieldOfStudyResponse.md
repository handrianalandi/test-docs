# FieldOfStudyResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `name` | `str` |             |
| `code` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import FieldOfStudyResponse

field_of_study_response = FieldOfStudyResponse(id="''", name="''", code="''")
```

### Working with JSON

```python
from catapa import FieldOfStudyResponse

# Parse from JSON
json_str = '{"id": "example"}'
field_of_study_response = FieldOfStudyResponse.from_json(json_str)

# Convert to JSON
print(field_of_study_response.to_json())
```

### Working with dictionaries

```python
from catapa import FieldOfStudyResponse

# Convert to/from dictionary
data_dict = field_of_study_response.to_dict()
field_of_study_response = FieldOfStudyResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(field_of_study_response.id)
# Update properties
field_of_study_response.id = "new_value"
```
