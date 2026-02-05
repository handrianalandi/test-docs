# EmployeeSimpleResponse

## Properties

| Name                    | Type  | Description |
| :---------------------- | :---- | :---------- |
| `id`                    | `str` |             |
| `identification_number` | `str` |             |
| `name`                  | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeSimpleResponse

employee_simple_response = EmployeeSimpleResponse(
    id="''", identification_number="''", name="''"
)
```

### Working with JSON

```python
from catapa import EmployeeSimpleResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_simple_response = EmployeeSimpleResponse.from_json(json_str)

# Convert to JSON
print(employee_simple_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeSimpleResponse

# Convert to/from dictionary
data_dict = employee_simple_response.to_dict()
employee_simple_response = EmployeeSimpleResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_simple_response.id)
# Update properties
employee_simple_response.id = "new_value"
```
