# EmployeeVariableValidationResponse

## Properties

| Name      | Type        | Description |
| :-------- | :---------- | :---------- |
| `type`    | `str`       |             |
| `value`   | `float`     |             |
| `options` | `List[str]` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeVariableValidationResponse

employee_variable_validation_response = EmployeeVariableValidationResponse(
    type="'MIN'", value=1.337, options=[""]
)
```

### Working with JSON

```python
from catapa import EmployeeVariableValidationResponse

# Parse from JSON
json_str = '{"type": "example"}'
employee_variable_validation_response = EmployeeVariableValidationResponse.from_json(
    json_str
)

# Convert to JSON
print(employee_variable_validation_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeVariableValidationResponse

# Convert to/from dictionary
data_dict = employee_variable_validation_response.to_dict()
employee_variable_validation_response = EmployeeVariableValidationResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(employee_variable_validation_response.type)
# Update properties
employee_variable_validation_response.type = "new_value"
```
