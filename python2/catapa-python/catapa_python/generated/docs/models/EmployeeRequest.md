# EmployeeRequest

## Properties

| Name                         | Type   | Required | Description        |
| :--------------------------- | :----- | :------: | :----------------- |
| `name`                       | `str`  |    ✅    |                    |
| `username`                   | `str`  |    ❌    |                    |
| `email`                      | `str`  |    ❌    |                    |
| `join_date`                  | `date` |    ✅    | YYYY-MM-DD         |
| `start_date`                 | `date` |    ✅    | YYYY-MM-DD         |
| `contract_start`             | `date` |    ❌    | YYYY-MM-DD         |
| `contract_end`               | `date` |    ❌    | YYYY-MM-DD         |
| `date_of_birth`              | `date` |    ✅    | YYYY-MM-DD         |
| `employment_status_number`   | `str`  |    ❌    |                    |
| `employment_type_id`         | `str`  |    ✅    |                    |
| `foreign_labour`             | `bool` |    ❌    | (default: `False`) |
| `gender`                     | `str`  |    ✅    |                    |
| `identification_number`      | `str`  |    ❌    |                    |
| `identity_card_expired_date` | `date` |    ❌    | YYYY-MM-DD         |
| `identity_card_number`       | `str`  |    ✅    |                    |
| `job_level_id`               | `str`  |    ✅    |                    |
| `job_title_id`               | `str`  |    ✅    |                    |
| `location_id`                | `str`  |    ✅    |                    |
| `marital_status`             | `str`  |    ✅    |                    |
| `organization_id`            | `str`  |    ✅    |                    |
| `place_of_birth_id`          | `str`  |    ❌    | City               |
| `point_of_hire_id`           | `str`  |    ✅    | Location           |
| `religion_id`                | `str`  |    ✅    |                    |
| `citizenship_id`             | `str`  |    ✅    | Country            |
| `position_id`                | `str`  |    ❌    |                    |
| `sub_location_id`            | `str`  |    ❌    |                    |
| `operational_group_id`       | `str`  |    ❌    |                    |
| `work_email`                 | `str`  |    ❌    |                    |
| `cost_center_id`             | `str`  |    ❌    |                    |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeRequest

employee_request = EmployeeRequest(
    name="'0'",
    username="''",
    email="''",
    join_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    start_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    contract_start=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    contract_end=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    date_of_birth=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    employment_status_number="''",
    employment_type_id="''",
    foreign_labour=True,
    gender="'MALE'",
    identification_number="''",
    identity_card_expired_date=datetime.datetime.strptime(
        "1975-12-30", "%Y-%m-%d"
    ).date(),
    identity_card_number="'0'",
    job_level_id="''",
    job_title_id="''",
    location_id="''",
    marital_status="'SINGLE'",
    organization_id="''",
    place_of_birth_id="''",
    point_of_hire_id="''",
    religion_id="''",
    citizenship_id="''",
    position_id="''",
    sub_location_id="''",
    operational_group_id="''",
    work_email="''",
    cost_center_id="''",
)
```

### Working with JSON

```python
from catapa import EmployeeRequest

# Parse from JSON
json_str = '{"name": "example"}'
employee_request = EmployeeRequest.from_json(json_str)

# Convert to JSON
print(employee_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeRequest

# Convert to/from dictionary
data_dict = employee_request.to_dict()
employee_request = EmployeeRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_request.name)
# Update properties
employee_request.name = "new_value"
```
