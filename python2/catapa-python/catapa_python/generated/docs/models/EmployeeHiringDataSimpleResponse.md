# EmployeeHiringDataSimpleResponse

## Properties

| Name                    | Type   | Description |
| :---------------------- | :----- | :---------- |
| `id`                    | `str`  |             |
| `identification_number` | `str`  |             |
| `join_date`             | `date` |             |
| `name`                  | `str`  |             |
| `start_date`            | `date` |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeHiringDataSimpleResponse

employee_hiring_data_simple_response = EmployeeHiringDataSimpleResponse(
    id="''",
    identification_number="''",
    join_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    name="''",
    start_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
)
```

### Working with JSON

```python
from catapa import EmployeeHiringDataSimpleResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_hiring_data_simple_response = EmployeeHiringDataSimpleResponse.from_json(
    json_str
)

# Convert to JSON
print(employee_hiring_data_simple_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeHiringDataSimpleResponse

# Convert to/from dictionary
data_dict = employee_hiring_data_simple_response.to_dict()
employee_hiring_data_simple_response = EmployeeHiringDataSimpleResponse.from_dict(
    data_dict
)
```

### Accessing properties

```python
# Access properties
print(employee_hiring_data_simple_response.id)
# Update properties
employee_hiring_data_simple_response.id = "new_value"
```
