# PayrollProcessSnapshotEmploymentStatusResponse

## Properties

| Name                | Type                          | Description |
| :------------------ | :---------------------------- | :---------- |
| `effective_date`    | `date`                        |             |
| `position`          | [`IdResponse`](IdResponse.md) |             |
| `organization`      | [`IdResponse`](IdResponse.md) |             |
| `location`          | [`IdResponse`](IdResponse.md) |             |
| `sub_location`      | [`IdResponse`](IdResponse.md) |             |
| `job_title`         | [`IdResponse`](IdResponse.md) |             |
| `job_level`         | [`IdResponse`](IdResponse.md) |             |
| `employment_type`   | [`IdResponse`](IdResponse.md) |             |
| `operational_group` | [`IdResponse`](IdResponse.md) |             |
| `cost_center`       | [`IdResponse`](IdResponse.md) |             |
| `company`           | [`IdResponse`](IdResponse.md) |             |
| `contract_start`    | `date`                        |             |
| `contract_end`      | `date`                        |             |
| `permanent_date`    | `date`                        |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayrollProcessSnapshotEmploymentStatusResponse

payroll_process_snapshot_employment_status_response = (
    PayrollProcessSnapshotEmploymentStatusResponse(
        effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
        position=None,  # [IdResponse](IdResponse.md)
        organization=None,  # [IdResponse](IdResponse.md)
        location=None,  # [IdResponse](IdResponse.md)
        sub_location=None,  # [IdResponse](IdResponse.md)
        job_title=None,  # [IdResponse](IdResponse.md)
        job_level=None,  # [IdResponse](IdResponse.md)
        employment_type=None,  # [IdResponse](IdResponse.md)
        operational_group=None,  # [IdResponse](IdResponse.md)
        cost_center=None,  # [IdResponse](IdResponse.md)
        company=None,  # [IdResponse](IdResponse.md)
        contract_start=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
        contract_end=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
        permanent_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    )
)
```

### Working with JSON

```python
from catapa import PayrollProcessSnapshotEmploymentStatusResponse

# Parse from JSON
json_str = '{"effective_date": "example"}'
payroll_process_snapshot_employment_status_response = (
    PayrollProcessSnapshotEmploymentStatusResponse.from_json(json_str)
)

# Convert to JSON
print(payroll_process_snapshot_employment_status_response.to_json())
```

### Working with dictionaries

```python
from catapa import PayrollProcessSnapshotEmploymentStatusResponse

# Convert to/from dictionary
data_dict = payroll_process_snapshot_employment_status_response.to_dict()
payroll_process_snapshot_employment_status_response = (
    PayrollProcessSnapshotEmploymentStatusResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(payroll_process_snapshot_employment_status_response.effective_date)
# Update properties
payroll_process_snapshot_employment_status_response.effective_date = new_value
```
