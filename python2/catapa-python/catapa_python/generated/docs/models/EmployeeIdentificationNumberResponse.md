# EmployeeIdentificationNumberResponse

## Properties

| Name                    | Type  | Description |
| :---------------------- | :---- | :---------- |
| `identification_number` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeIdentificationNumberResponse

employee_identification_number_response = EmployeeIdentificationNumberResponse(
    identification_number="''"
)
```

### Working with JSON

```python
from catapa import EmployeeIdentificationNumberResponse

# Parse from JSON
json_str = '{"identification_number": "example"}'
employee_identification_number_response = (
    EmployeeIdentificationNumberResponse.from_json(json_str)
)

# Convert to JSON
print(employee_identification_number_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeIdentificationNumberResponse

# Convert to/from dictionary
data_dict = employee_identification_number_response.to_dict()
employee_identification_number_response = (
    EmployeeIdentificationNumberResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(employee_identification_number_response.identification_number)
# Update properties
employee_identification_number_response.identification_number = "new_value"
```
