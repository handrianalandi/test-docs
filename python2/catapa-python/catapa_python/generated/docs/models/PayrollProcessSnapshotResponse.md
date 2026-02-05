# PayrollProcessSnapshotResponse

## Properties

| Name                               | Type                                                                                                                  | Description |
| :--------------------------------- | :-------------------------------------------------------------------------------------------------------------------- | :---------- |
| `employee_id`                      | `str`                                                                                                                 |             |
| `effective_date`                   | `date`                                                                                                                |             |
| `termination_date`                 | `date`                                                                                                                |             |
| `employment_status`                | [`PayrollProcessSnapshotEmploymentStatusResponse`](PayrollProcessSnapshotEmploymentStatusResponse.md)                 |             |
| `kpp`                              | [`IdResponse`](IdResponse.md)                                                                                         |             |
| `paygroup`                         | [`IdCodeNameResponse`](IdCodeNameResponse.md)                                                                         |             |
| `payroll_sequence_number`          | `int`                                                                                                                 |             |
| `previous_payroll_sequence_number` | `int`                                                                                                                 |             |
| `payment_item_group`               | [`IdResponse`](IdResponse.md)                                                                                         |             |
| `bank_account_configuration`       | [`PayrollProcessSnapshotBankAccountConfigurationResponse`](PayrollProcessSnapshotBankAccountConfigurationResponse.md) |             |
| `workflow_activities`              | [`List[PayrollProcessSnapshotWorkflowActivityResponse]`](PayrollProcessSnapshotWorkflowActivityResponse.md)           |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayrollProcessSnapshotResponse

payroll_process_snapshot_response = PayrollProcessSnapshotResponse(
    employee_id="''",
    effective_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    termination_date=datetime.datetime.strptime("1975-12-30", "%Y-%m-%d").date(),
    employment_status=None,  # [PayrollProcessSnapshotEmploymentStatusResponse](PayrollProcessSnapshotEmploymentStatusResponse.md)
    kpp=None,  # [IdResponse](IdResponse.md)
    paygroup=None,  # [IdCodeNameResponse](IdCodeNameResponse.md)
    payroll_sequence_number=56,
    previous_payroll_sequence_number=56,
    payment_item_group=None,  # [IdResponse](IdResponse.md)
    bank_account_configuration=None,  # [PayrollProcessSnapshotBankAccountConfigurationResponse](PayrollProcessSnapshotBankAccountConfigurationResponse.md)
    workflow_activities=[],  # List[[PayrollProcessSnapshotWorkflowActivityResponse](PayrollProcessSnapshotWorkflowActivityResponse.md)]
)
```

### Working with JSON

```python
from catapa import PayrollProcessSnapshotResponse

# Parse from JSON
json_str = '{"employee_id": "example"}'
payroll_process_snapshot_response = PayrollProcessSnapshotResponse.from_json(json_str)

# Convert to JSON
print(payroll_process_snapshot_response.to_json())
```

### Working with dictionaries

```python
from catapa import PayrollProcessSnapshotResponse

# Convert to/from dictionary
data_dict = payroll_process_snapshot_response.to_dict()
payroll_process_snapshot_response = PayrollProcessSnapshotResponse.from_dict(data_dict)
```

### Accessing properties

```python
# Access properties
print(payroll_process_snapshot_response.employee_id)
# Update properties
payroll_process_snapshot_response.employee_id = "new_value"
```
