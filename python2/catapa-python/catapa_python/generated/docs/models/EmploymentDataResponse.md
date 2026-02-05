# EmploymentDataResponse

## Properties

| Name                       | Type                                                                  | Description |
| :------------------------- | :-------------------------------------------------------------------- | :---------- |
| `id`                       | `str`                                                                 |             |
| `contract_start`           | `date`                                                                | YYYY-MM-DD  |
| `contract_end`             | `date`                                                                | YYYY-MM-DD  |
| `cost_center`              | [`CostCenterResponse`](CostCenterResponse.md)                         |             |
| `effective_date`           | `date`                                                                | YYYY-MM-DD  |
| `employment_status_number` | `str`                                                                 |             |
| `employment_status_type`   | [`EmploymentStatusTypeResponse`](EmploymentStatusTypeResponse.md)     |             |
| `employment_type`          | [`EmploymentTypeResponse`](EmploymentTypeResponse.md)                 |             |
| `job_level`                | [`JobLevelResponse`](JobLevelResponse.md)                             |             |
| `job_title`                | [`JobTitleResponse`](JobTitleResponse.md)                             |             |
| `location`                 | [`LocationResponse`](LocationResponse.md)                             |             |
| `organization`             | [`OrganizationResponse`](OrganizationResponse.md)                     |             |
| `position`                 | [`EmploymentDataPositionResponse`](EmploymentDataPositionResponse.md) |             |
| `permanent_date`           | `date`                                                                | YYYY-MM-DD  |
| `sign_date`                | `date`                                                                | YYYY-MM-DD  |
| `sub_location`             | [`SubLocationResponse`](SubLocationResponse.md)                       |             |
| `operational_group`        | [`IdCodeNameResponse`](IdCodeNameResponse.md)                         |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmploymentDataResponse

employment_data_response = EmploymentDataResponse(
    id="''",
    contract_start=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    contract_end=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    cost_center=None,  # [CostCenterResponse](CostCenterResponse.md)
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    employment_status_number="''",
    employment_status_type=None,  # [EmploymentStatusTypeResponse](EmploymentStatusTypeResponse.md)
    employment_type=None,  # [EmploymentTypeResponse](EmploymentTypeResponse.md)
    job_level=None,  # [JobLevelResponse](JobLevelResponse.md)
    job_title=None,  # [JobTitleResponse](JobTitleResponse.md)
    location=None,  # [LocationResponse](LocationResponse.md)
    organization=None,  # [OrganizationResponse](OrganizationResponse.md)
    position=None,  # [EmploymentDataPositionResponse](EmploymentDataPositionResponse.md)
    permanent_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    sign_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    sub_location=None,  # [SubLocationResponse](SubLocationResponse.md)
    operational_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import EmploymentDataResponse

# Parse from JSON
json_str = '{"id": "example"}'
employment_data_response = EmploymentDataResponse.from_json(json_str)

# Convert to JSON
print(employment_data_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmploymentDataResponse

# Convert to/from dictionary
data_dict = employment_data_response.to_dict()
employment_data_response = EmploymentDataResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employment_data_response.id)
# Update properties
employment_data_response.id = "new_value"
```
