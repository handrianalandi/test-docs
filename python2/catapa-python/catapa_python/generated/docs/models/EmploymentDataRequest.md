# EmploymentDataRequest

## Properties

| Name                                | Type   | Required | Description        |
| :---------------------------------- | :----- | :------: | :----------------- |
| `contract_start`                    | `date` |    ❌    | YYYY-MM-DD         |
| `contract_end`                      | `date` |    ❌    | YYYY-MM-DD         |
| `effective_date`                    | `date` |    ✅    | YYYY-MM-DD         |
| `employment_status_number`          | `str`  |    ✅    |                    |
| `employment_status_type_id`         | `str`  |    ✅    |                    |
| `employment_type_id`                | `str`  |    ✅    |                    |
| `job_level_id`                      | `str`  |    ✅    |                    |
| `job_title_id`                      | `str`  |    ✅    |                    |
| `location_id`                       | `str`  |    ✅    |                    |
| `organization_id`                   | `str`  |    ✅    |                    |
| `cost_center_id`                    | `str`  |    ❌    |                    |
| `permanent_date`                    | `date` |    ❌    | YYYY-MM-DD         |
| `sign_date`                         | `date` |    ✅    | YYYY-MM-DD         |
| `generate_employment_status_number` | `bool` |    ❌    | (default: `False`) |
| `sub_location_id`                   | `str`  |    ❌    |                    |
| `operational_group_id`              | `str`  |    ❌    |                    |

## Usage Examples

### Creating an instance

```python
from catapa import EmploymentDataRequest

employment_data_request = EmploymentDataRequest(
    contract_start=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    contract_end=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    employment_status_number="''",
    employment_status_type_id="''",
    employment_type_id="''",
    job_level_id="''",
    job_title_id="''",
    location_id="''",
    organization_id="''",
    cost_center_id="''",
    permanent_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    sign_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    generate_employment_status_number=True,
    sub_location_id="''",
    operational_group_id="''",
)
```

### Working with JSON

```python
from catapa import EmploymentDataRequest

# Parse from JSON
json_str = '{"contract_start": "example"}'
employment_data_request = EmploymentDataRequest.from_json(json_str)

# Convert to JSON
print(employment_data_request.to_json())
```

### Working with dictionaries

```python
from catapa import EmploymentDataRequest

# Convert to/from dictionary
data_dict = employment_data_request.to_dict()
employment_data_request = EmploymentDataRequest.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employment_data_request.contract_start)
# Update properties
employment_data_request.contract_start = new_value
```
