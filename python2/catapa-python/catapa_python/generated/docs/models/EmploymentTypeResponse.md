# EmploymentTypeResponse

## Properties

| Name                    | Type   | Description |
| :---------------------- | :----- | :---------- |
| `id`                    | `str`  |             |
| `name`                  | `str`  |             |
| `employment_group_code` | `str`  |             |
| `month_duration`        | `int`  |             |
| `permanent`             | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmploymentTypeResponse

employment_type_response = EmploymentTypeResponse(
    id="''", name="''", employment_group_code="''", month_duration=56, permanent=True
)
```

### Working with JSON

```python
from catapa import EmploymentTypeResponse

# Parse from JSON
json_str = '{"id": "example"}'
employment_type_response = EmploymentTypeResponse.from_json(json_str)

# Convert to JSON
print(employment_type_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmploymentTypeResponse

# Convert to/from dictionary
data_dict = employment_type_response.to_dict()
employment_type_response = EmploymentTypeResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employment_type_response.id)
# Update properties
employment_type_response.id = "new_value"
```
