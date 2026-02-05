# EmployeeVariableResponse

## Properties

| Name           | Type                                                  | Description |
| :------------- | :---------------------------------------------------- | :---------- |
| `id`           | `str`                                                 |             |
| `employee_id`  | `str`                                                 |             |
| `employee`     | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md) |             |
| `name`         | `str`                                                 |             |
| `var_date`     | `date`                                                |             |
| `value`        | `str`                                                 |             |
| `created_by`   | `str`                                                 |             |
| `created_date` | `float`                                               |             |
| `updated_by`   | `str`                                                 |             |
| `updated_date` | `float`                                               |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeVariableResponse

employee_variable_response = EmployeeVariableResponse(
    id="''",
    employee_id="''",
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    name="''",
    var_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    value="''",
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
)
```

### Working with JSON

```python
from catapa import EmployeeVariableResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_variable_response = EmployeeVariableResponse.from_json(json_str)

# Convert to JSON
print(employee_variable_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeVariableResponse

# Convert to/from dictionary
data_dict = employee_variable_response.to_dict()
employee_variable_response = EmployeeVariableResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_variable_response.id)
# Update properties
employee_variable_response.id = "new_value"
```
