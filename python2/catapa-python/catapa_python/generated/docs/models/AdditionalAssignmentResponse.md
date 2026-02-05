# AdditionalAssignmentResponse

## Properties

| Name                     | Type                                                              | Description |
| :----------------------- | :---------------------------------------------------------------- | :---------- |
| `id`                     | `str`                                                             |             |
| `employment_status_type` | [`EmploymentStatusTypeResponse`](EmploymentStatusTypeResponse.md) |             |
| `employment_type`        | [`EmploymentTypeResponse`](EmploymentTypeResponse.md)             |             |
| `effective_date`         | `str`                                                             |             |
| `end_date`               | `str`                                                             |             |
| `sign_date`              | `str`                                                             |             |
| `created_by`             | `str`                                                             |             |
| `created_date`           | `float`                                                           |             |
| `updated_by`             | `str`                                                             |             |
| `updated_date`           | `float`                                                           |             |
| `organization`           | [`OrganizationResponse`](OrganizationResponse.md)                 |             |
| `position`               | [`PositionResponse`](PositionResponse.md)                         |             |
| `job_level`              | [`JobLevelResponse`](JobLevelResponse.md)                         |             |
| `job_title`              | [`JobTitleResponse`](JobTitleResponse.md)                         |             |
| `location`               | [`LocationResponse`](LocationResponse.md)                         |             |
| `cost_center`            | [`CostCenterResponse`](CostCenterResponse.md)                     |             |
| `employee`               | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)             |             |
| `sub_location`           | [`SubLocationResponse`](SubLocationResponse.md)                   |             |
| `operational_group`      | [`IdCodeNameResponse`](IdCodeNameResponse.md)                     |             |

## Usage Examples

### Creating an instance

```python
from catapa import AdditionalAssignmentResponse

additional_assignment_response = AdditionalAssignmentResponse(
    id="''",
    employment_status_type=None,  # [EmploymentStatusTypeResponse](EmploymentStatusTypeResponse.md)
    employment_type=None,  # [EmploymentTypeResponse](EmploymentTypeResponse.md)
    effective_date="''",
    end_date="''",
    sign_date="''",
    created_by="''",
    created_date=1.337,
    updated_by="''",
    updated_date=1.337,
    organization=None,  # [OrganizationResponse](OrganizationResponse.md)
    position=None,  # [PositionResponse](PositionResponse.md)
    job_level=None,  # [JobLevelResponse](JobLevelResponse.md)
    job_title=None,  # [JobTitleResponse](JobTitleResponse.md)
    location=None,  # [LocationResponse](LocationResponse.md)
    cost_center=None,  # [CostCenterResponse](CostCenterResponse.md)
    employee=None,  # [EmployeeSimpleResponse](EmployeeSimpleResponse.md)
    sub_location=None,  # [SubLocationResponse](SubLocationResponse.md)
    operational_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
)
```

### Working with JSON

```python
from catapa import AdditionalAssignmentResponse

# Parse from JSON
json_str = '{"id": "example"}'
additional_assignment_response = AdditionalAssignmentResponse.from_json(json_str)

# Convert to JSON
print(additional_assignment_response.to_json())
```

### Working with dictionaries

```python
from catapa import AdditionalAssignmentResponse

# Convert to/from dictionary
data_dict = additional_assignment_response.to_dict()
additional_assignment_response = AdditionalAssignmentResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(additional_assignment_response.id)
# Update properties
additional_assignment_response.id = "new_value"
```
