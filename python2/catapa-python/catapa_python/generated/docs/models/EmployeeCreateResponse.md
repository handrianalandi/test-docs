# EmployeeCreateResponse

## Properties

| Name                         | Type                                                  | Description |
| :--------------------------- | :---------------------------------------------------- | :---------- |
| `id`                         | `str`                                                 |             |
| `marital_status`             | `str`                                                 |             |
| `religion`                   | [`ReligionResponse`](ReligionResponse.md)             |             |
| `foreign_labour`             | `bool`                                                |             |
| `citizenship`                | `object`                                              |             |
| `identification_number`      | `str`                                                 |             |
| `name`                       | `str`                                                 |             |
| `date_of_birth`              | `str`                                                 |             |
| `place_of_birth`             | [`PlaceOfBirthResponse`](PlaceOfBirthResponse.md)     |             |
| `join_date`                  | `str`                                                 |             |
| `start_date`                 | `str`                                                 |             |
| `gender`                     | `str`                                                 |             |
| `point_of_hire`              | [`PointOfHireResponse`](PointOfHireResponse.md)       |             |
| `employment_status_number`   | `str`                                                 |             |
| `organization`               | [`OrganizationResponse`](OrganizationResponse.md)     |             |
| `job_title`                  | [`JobTitleResponse`](JobTitleResponse.md)             |             |
| `job_level`                  | [`JobLevelResponse`](JobLevelResponse.md)             |             |
| `location`                   | [`LocationResponse`](LocationResponse.md)             |             |
| `employment_type`            | [`EmploymentTypeResponse`](EmploymentTypeResponse.md) |             |
| `contract_start`             | `str`                                                 |             |
| `contract_end`               | `str`                                                 |             |
| `identity_card_number`       | `str`                                                 |             |
| `identity_card_expired_date` | `date`                                                |             |
| `email`                      | `str`                                                 |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmployeeCreateResponse

employee_create_response = EmployeeCreateResponse(
    id="''",
    marital_status="''",
    religion=None,  # [ReligionResponse](ReligionResponse.md)
    foreign_labour=True,
    citizenship=None,
    identification_number="''",
    name="''",
    date_of_birth="''",
    place_of_birth=None,  # [PlaceOfBirthResponse](PlaceOfBirthResponse.md)
    join_date="''",
    start_date="''",
    gender="''",
    point_of_hire=None,  # [PointOfHireResponse](PointOfHireResponse.md)
    employment_status_number="''",
    organization=None,  # [OrganizationResponse](OrganizationResponse.md)
    job_title=None,  # [JobTitleResponse](JobTitleResponse.md)
    job_level=None,  # [JobLevelResponse](JobLevelResponse.md)
    location=None,  # [LocationResponse](LocationResponse.md)
    employment_type=None,  # [EmploymentTypeResponse](EmploymentTypeResponse.md)
    contract_start="''",
    contract_end="''",
    identity_card_number="''",
    identity_card_expired_date=datetime.datetime.strptime(
        "1975-12-30", "%Y-%m-%d"
    ).date(),
    email="''",
)
```

### Working with JSON

```python
from catapa import EmployeeCreateResponse

# Parse from JSON
json_str = '{"id": "example"}'
employee_create_response = EmployeeCreateResponse.from_json(json_str)

# Convert to JSON
print(employee_create_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmployeeCreateResponse

# Convert to/from dictionary
data_dict = employee_create_response.to_dict()
employee_create_response = EmployeeCreateResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employee_create_response.id)
# Update properties
employee_create_response.id = "new_value"
```
