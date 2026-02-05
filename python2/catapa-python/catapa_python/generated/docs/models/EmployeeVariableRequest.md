# EmployeeVariableRequest

## Properties

| Name          | Type   | Required | Description |
| :------------ | :----- | :------: | :---------- |
| `employee_id` | `str`  |    ✅    |             |
| `name`        | `str`  |    ✅    |             |
| `var_date`    | `date` |    ✅    |             |
| `value`       | `str`  |    ✅    |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeVariableRequest

employee_variable_request = EmployeeVariableRequest(
    employee_id="''",
    name="''",
    var_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    value="''",
)
```

### Working with JSON

```python
from catapa import EmployeeVariableRequest

# Parse from JSON
json_str = '{"employee_id": "example"}'
employee_variable_request = EmployeeVariableRequest.from_json(json_str)

# Convert to JSON
print(employee_variable_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeVariableRequest

# Convert to/from dictionary
data_dict = employee_variable_request.to_dict()
employee_variable_request = EmployeeVariableRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_variable_request.employee_id)
# Update properties
employee_variable_request.employee_id = "new_value"
```
