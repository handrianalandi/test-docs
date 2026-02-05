# EmploymentStatusDetailResponse

## Properties

| Name                       | Type                                                                                  | Description |
| :------------------------- | :------------------------------------------------------------------------------------ | :---------- |
| `id`                       | `str`                                                                                 |             |
| `contract_start`           | `date`                                                                                | YYYY-MM-DD  |
| `contract_end`             | `date`                                                                                | YYYY-MM-DD  |
| `cost_center`              | [`CostCenterListItemResponse`](CostCenterListItemResponse.md)                         |             |
| `effective_date`           | `date`                                                                                | YYYY-MM-DD  |
| `created_by`               | `str`                                                                                 |             |
| `created_date`             | `float`                                                                               |             |
| `updated_by`               | `str`                                                                                 |             |
| `updated_date`             | `float`                                                                               |             |
| `employment_status_number` | `str`                                                                                 |             |
| `employment_status_type`   | [`EmploymentStatusTypeResponse`](EmploymentStatusTypeResponse.md)                     |             |
| `employment_type`          | [`EmploymentTypeResponse`](EmploymentTypeResponse.md)                                 |             |
| `job_level`                | [`JobLevelResponse`](JobLevelResponse.md)                                             |             |
| `job_title`                | [`JobTitleResponse`](JobTitleResponse.md)                                             |             |
| `location`                 | [`LocationResponse`](LocationResponse.md)                                             |             |
| `organization`             | [`OrganizationResponse`](OrganizationResponse.md)                                     |             |
| `permanent_date`           | `date`                                                                                | YYYY-MM-DD  |
| `sign_date`                | `date`                                                                                | YYYY-MM-DD  |
| `sub_location`             | [`SubLocationResponse`](SubLocationResponse.md)                                       |             |
| `operational_group`        | [`IdCodeNameResponse`](IdCodeNameResponse.md)                                         |             |
| `position`                 | [`EmploymentStatusDetailPositionResponse`](EmploymentStatusDetailPositionResponse.md) |             |

## Usage Examples

### Creating an instance

```python
from catapa import EmploymentStatusDetailResponse

employment_status_detail_response = EmploymentStatusDetailResponse(
    id="''",
    contract_start=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    contract_end=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    cost_center=None,  # [CostCenterListItemResponse](CostCenterListItemResponse.md)
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
    employment_status_number="''",
    employment_status_type=None,  # [EmploymentStatusTypeResponse](EmploymentStatusTypeResponse.md)
    employment_type=None,  # [EmploymentTypeResponse](EmploymentTypeResponse.md)
    job_level=None,  # [JobLevelResponse](JobLevelResponse.md)
    job_title=None,  # [JobTitleResponse](JobTitleResponse.md)
    location=None,  # [LocationResponse](LocationResponse.md)
    organization=None,  # [OrganizationResponse](OrganizationResponse.md)
    permanent_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    sign_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    sub_location=None,  # [SubLocationResponse](SubLocationResponse.md)
    operational_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    position=None,  # [EmploymentStatusDetailPositionResponse](EmploymentStatusDetailPositionResponse.md)
)
```

### Working with JSON

```python
from catapa import EmploymentStatusDetailResponse

# Parse from JSON
json_str = '{"id": "example"}'
employment_status_detail_response = EmploymentStatusDetailResponse.from_json(json_str)

# Convert to JSON
print(employment_status_detail_response.to_json())
```

### Working with dictionaries

```python
from catapa import EmploymentStatusDetailResponse

# Convert to/from dictionary
data_dict = employment_status_detail_response.to_dict()
employment_status_detail_response = EmploymentStatusDetailResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(employment_status_detail_response.id)
# Update properties
employment_status_detail_response.id = "new_value"
```
