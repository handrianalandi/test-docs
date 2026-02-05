# EmployeeDetailRequest

## Properties

| Name                | Type   | Required | Description        |
| :------------------ | :----- | :------: | :----------------- |
| `blood_type`        | `str`  |    ❌    |                    |
| `citizenship_id`    | `str`  |    ✅    | Country ID         |
| `date_of_birth`     | `date` |    ❌    | YYYY-MM-DD         |
| `foreign_labour`    | `bool` |    ❌    | (default: `False`) |
| `gender`            | `str`  |    ❌    |                    |
| `marital_status`    | `str`  |    ✅    |                    |
| `name`              | `str`  |    ✅    |                    |
| `place_of_birth_id` | `str`  |    ❌    | City ID            |
| `religion_id`       | `str`  |    ✅    |                    |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeDetailRequest

employee_detail_request = EmployeeDetailRequest(
    blood_type="'A'",
    citizenship_id="''",
    date_of_birth=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    foreign_labour=True,
    gender="'MALE'",
    marital_status="'SINGLE'",
    name="'0'",
    place_of_birth_id="''",
    religion_id="''",
)
```

### Working with JSON

```python
from catapa import EmployeeDetailRequest

# Parse from JSON
json_str = '{"blood_type": "example"}'
employee_detail_request = EmployeeDetailRequest.from_json(json_str)

# Convert to JSON
print(employee_detail_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeDetailRequest

# Convert to/from dictionary
data_dict = employee_detail_request.to_dict()
employee_detail_request = EmployeeDetailRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_detail_request.blood_type)
# Update properties
employee_detail_request.blood_type = "new_value"
```
