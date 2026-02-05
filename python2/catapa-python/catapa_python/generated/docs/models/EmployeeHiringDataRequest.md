# EmployeeHiringDataRequest

## Properties

| Name                    | Type   | Required | Description |
| :---------------------- | :----- | :------: | :---------- |
| `identification_number` | `str`  |    ✅    |             |
| `join_date`             | `date` |    ✅    |             |
| `name`                  | `str`  |    ✅    |             |
| `start_date`            | `date` |    ✅    |             |
| `point_of_hire_id`      | `str`  |    ❌    |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeHiringDataRequest

employee_hiring_data_request = EmployeeHiringDataRequest(
    identification_number="''",
    join_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    name="''",
    start_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    point_of_hire_id="''",
)
```

### Working with JSON

```python
from catapa import EmployeeHiringDataRequest

# Parse from JSON
json_str = '{"identification_number": "example"}'
employee_hiring_data_request = EmployeeHiringDataRequest.from_json(json_str)

# Convert to JSON
print(employee_hiring_data_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeHiringDataRequest

# Convert to/from dictionary
data_dict = employee_hiring_data_request.to_dict()
employee_hiring_data_request = EmployeeHiringDataRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_hiring_data_request.identification_number)
# Update properties
employee_hiring_data_request.identification_number = "new_value"
```
