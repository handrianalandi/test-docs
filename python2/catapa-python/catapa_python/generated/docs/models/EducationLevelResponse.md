# EducationLevelResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `name` | `str` |             |
| `code` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EducationLevelResponse

education_level_response = EducationLevelResponse(id="''", name="''", code="''")
```

### Working with JSON

```python
from catapa import EducationLevelResponse

# Parse from JSON
json_str = '{"id": "example"}'
education_level_response = EducationLevelResponse.from_json(json_str)

# Convert to JSON
print(education_level_response.to_json())
```

### Working with dictionaries

```python
from catapa import EducationLevelResponse

# Convert to/from dictionary
data_dict = education_level_response.to_dict()
education_level_response = EducationLevelResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(education_level_response.id)
# Update properties
education_level_response.id = "new_value"
```
