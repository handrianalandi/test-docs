# EmployeeResponse

## Properties

| Name                    | Type   | Description |
| :---------------------- | :----- | :---------- |
| `id`                    | `str`  |             |
| `identification_number` | `str`  |             |
| `name`                  | `str`  |             |
| `active`                | `bool` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeResponse

employee_response = EmployeeResponse(
    id="''", identification_number="''", name="''", active=True
)
```

### Working with JSON

```python
from catapa import EmployeeResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_response = EmployeeResponse.from_json(json_str)

# Convert to JSON
print(employee_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeResponse

# Convert to/from dictionary
data_dict = employee_response.to_dict()
employee_response = EmployeeResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_response.id)
# Update properties
employee_response.id = "new_value"
```
