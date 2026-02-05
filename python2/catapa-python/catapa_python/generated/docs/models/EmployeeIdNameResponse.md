# EmployeeIdNameResponse

## Properties

| Name   | Type  | Description |
| :----- | :---- | :---------- |
| `id`   | `str` |             |
| `name` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeIdNameResponse

employee_id_name_response = EmployeeIdNameResponse(id="''", name="''")
```

### Working with JSON

```python
from catapa import EmployeeIdNameResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_id_name_response = EmployeeIdNameResponse.from_json(json_str)

# Convert to JSON
print(employee_id_name_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeIdNameResponse

# Convert to/from dictionary
data_dict = employee_id_name_response.to_dict()
employee_id_name_response = EmployeeIdNameResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_id_name_response.id)
# Update properties
employee_id_name_response.id = "new_value"
```
