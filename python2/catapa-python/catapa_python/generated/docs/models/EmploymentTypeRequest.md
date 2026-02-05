# EmploymentTypeRequest

## Properties

| Name                    | Type   | Required | Description        |
| :---------------------- | :----- | :------: | :----------------- |
| `name`                  | `str`  |    ✅    |                    |
| `employment_group_code` | `str`  |    ✅    |                    |
| `month_duration`        | `int`  |    ✅    |                    |
| `permanent`             | `bool` |    ❌    | (default: `False`) |

## Usage Examples

### Creating an instance

```python
from catapa import EmploymentTypeRequest

employment_type_request = EmploymentTypeRequest(
    name="'0'", employment_group_code="'C0'", month_duration=0, permanent=True
)
```

### Working with JSON

```python
from catapa import EmploymentTypeRequest

# Parse from JSON
json_str = '{"name": "example"}'
employment_type_request = EmploymentTypeRequest.from_json(json_str)

# Convert to JSON
print(employment_type_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmploymentTypeRequest

# Convert to/from dictionary
data_dict = employment_type_request.to_dict()
employment_type_request = EmploymentTypeRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employment_type_request.name)
# Update properties
employment_type_request.name = "new_value"
```
