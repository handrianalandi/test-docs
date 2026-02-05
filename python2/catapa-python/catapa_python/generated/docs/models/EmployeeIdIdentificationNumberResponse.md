# EmployeeIdIdentificationNumberResponse

## Properties

| Name                    | Type  | Description |
| :---------------------- | :---- | :---------- |
| `id`                    | `str` |             |
| `identification_number` | `str` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeIdIdentificationNumberResponse

employee_id_identification_number_response = EmployeeIdIdentificationNumberResponse(
    id="''", identification_number="''"
)
```

### Working with JSON

```python
from catapa import EmployeeIdIdentificationNumberResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_id_identification_number_response = (
    EmployeeIdIdentificationNumberResponse.from_json(json_str)
)

# Convert to JSON
print(employee_id_identification_number_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeIdIdentificationNumberResponse

# Convert to/from dictionary
data_dict = employee_id_identification_number_response.to_dict()
employee_id_identification_number_response = (
    EmployeeIdIdentificationNumberResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(employee_id_identification_number_response.id)
# Update properties
employee_id_identification_number_response.id = "new_value"
```
