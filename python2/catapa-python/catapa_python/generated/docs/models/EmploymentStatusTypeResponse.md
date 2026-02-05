# EmploymentStatusTypeResponse

## Properties

| Name                            | Type   | Description |
| :------------------------------ | :----- | :---------- |
| `id`                            | `str`  |             |
| `default_data`                  | `bool` |             |
| `employment_status_number_type` | `str`  |             |
| `name`                          | `str`  |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmploymentStatusTypeResponse

employment_status_type_response = EmploymentStatusTypeResponse(
    id="''", default_data=True, employment_status_number_type="'PKWT_NUMBER'", name="''"
)
```

### Working with JSON

```python
from catapa import EmploymentStatusTypeResponse

# Parse from JSON
json_str = '{"id": "example"}'
employment_status_type_response = EmploymentStatusTypeResponse.from_json(json_str)

# Convert to JSON
print(employment_status_type_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmploymentStatusTypeResponse

# Convert to/from dictionary
data_dict = employment_status_type_response.to_dict()
employment_status_type_response = EmploymentStatusTypeResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employment_status_type_response.id)
# Update properties
employment_status_type_response.id = "new_value"
```
