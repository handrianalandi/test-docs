# AdditionalAssignmentApprovalResponse

## Properties

| Name                     | Type                                                                                                      | Description |
| :----------------------- | :-------------------------------------------------------------------------------------------------------- | :---------- |
| `id`                     | `str`                                                                                                     |             |
| `action`                 | `str`                                                                                                     |             |
| `approval_status`        | `str`                                                                                                     |             |
| `rejection_reason`       | `str`                                                                                                     |             |
| `employment_status_type` | [`EmploymentStatusTypeResponse`](EmploymentStatusTypeResponse.md)                                         |             |
| `employment_type`        | [`EmploymentTypeResponse`](EmploymentTypeResponse.md)                                                     |             |
| `effective_date`         | `str`                                                                                                     |             |
| `end_date`               | `str`                                                                                                     |             |
| `sign_date`              | `str`                                                                                                     |             |
| `created_by`             | `str`                                                                                                     |             |
| `created_date`           | `float`                                                                                                   |             |
| `updated_by`             | `str`                                                                                                     |             |
| `updated_date`           | `float`                                                                                                   |             |
| `organization`           | [`OrganizationResponse`](OrganizationResponse.md)                                                         |             |
| `position`               | [`PositionResponse`](PositionResponse.md)                                                                 |             |
| `job_level`              | [`JobLevelResponse`](JobLevelResponse.md)                                                                 |             |
| `job_title`              | [`JobTitleResponse`](JobTitleResponse.md)                                                                 |             |
| `location`               | [`LocationResponse`](LocationResponse.md)                                                                 |             |
| `cost_center`            | [`CostCenterResponse`](CostCenterResponse.md)                                                             |             |
| `employee`               | [`EmployeeSimpleResponse`](EmployeeSimpleResponse.md)                                                     |             |
| `sub_location`           | [`AdditionalAssignmentApprovaleSubLocationResponse`](AdditionalAssignmentApprovaleSubLocationResponse.md) |             |
| `operational_group`      | [`IdCodeNameResponse`](IdCodeNameResponse.md)                                                             |             |
| `additional_assignment`  | [`AdditionalAssignmentResponse`](AdditionalAssignmentResponse.md)                                         |             |

## Usage Examples

### Creating an instance

```python
from catapa import AdditionalAssignmentApprovalResponse

additional_assignment_approval_response = AdditionalAssignmentApprovalResponse(
    id="''",
    action="'NONE'",
    approval_status="'APPROVED'",
    rejection_reason="''",
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
    sub_location=None,  # [AdditionalAssignmentApprovaleSubLocationResponse](AdditionalAssignmentApprovaleSubLocationResponse.md)
    operational_group=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    additional_assignment=None,  # [AdditionalAssignmentResponse](AdditionalAssignmentResponse.md)
)
```

### Working with JSON

```python
from catapa import AdditionalAssignmentApprovalResponse

# Parse from JSON
json_str = '{"id": "example"}'
additional_assignment_approval_response = (
    AdditionalAssignmentApprovalResponse.from_json(json_str)
)

# Convert to JSON
print(additional_assignment_approval_response.to_json())
```

### Working with dictionaries

```python
from catapa import AdditionalAssignmentApprovalResponse

# Convert to/from dictionary
data_dict = additional_assignment_approval_response.to_dict()
additional_assignment_approval_response = (
    AdditionalAssignmentApprovalResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(additional_assignment_approval_response.id)
# Update properties
additional_assignment_approval_response.id = "new_value"
```
