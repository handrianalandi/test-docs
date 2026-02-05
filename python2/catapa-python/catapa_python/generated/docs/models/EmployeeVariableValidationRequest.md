# EmployeeVariableValidationRequest

## Properties

| Name      | Type        | Required | Description |
| :-------- | :---------- | :------: | :---------- |
| `type`    | `str`       |    ❌    |             |
| `value`   | `float`     |    ❌    |             |
| `options` | `List[str]` |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeVariableValidationRequest

employee_variable_validation_request = EmployeeVariableValidationRequest(
    type="'MIN'", value=1.337, options=[""]
)
```

### Working with JSON

```python
from catapa import EmployeeVariableValidationRequest

# Parse from JSON
json_str = '{"type": "example"}'
employee_variable_validation_request = EmployeeVariableValidationRequest.from_json(
    json_str
)

# Convert to JSON
print(employee_variable_validation_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeVariableValidationRequest

# Convert to/from dictionary
data_dict = employee_variable_validation_request.to_dict()
employee_variable_validation_request = EmployeeVariableValidationRequest.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(employee_variable_validation_request.type)
# Update properties
employee_variable_validation_request.type = "new_value"
```
