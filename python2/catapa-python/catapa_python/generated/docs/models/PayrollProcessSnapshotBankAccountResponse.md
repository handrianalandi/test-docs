# PayrollProcessSnapshotBankAccountResponse

## Properties

| Name       | Type  | Description |
| :--------- | :---- | :---------- |
| `id`       | `str` |             |
| `priority` | `int` |             |

## Usage Examples

### Creating an instance

```python
from catapa import PayrollProcessSnapshotBankAccountResponse

payroll_process_snapshot_bank_account_response = (
    PayrollProcessSnapshotBankAccountResponse(id="''", priority=56)
)
```

### Working with JSON

```python
from catapa import PayrollProcessSnapshotBankAccountResponse

# Parse from JSON
json_str = '{"id": "example"}'
payroll_process_snapshot_bank_account_response = (
    PayrollProcessSnapshotBankAccountResponse.from_json(json_str)
)

# Convert to JSON
print(payroll_process_snapshot_bank_account_response.to_json())
```

### Working with dictionaries

```python
from catapa import PayrollProcessSnapshotBankAccountResponse

# Convert to/from dictionary
data_dict = payroll_process_snapshot_bank_account_response.to_dict()
payroll_process_snapshot_bank_account_response = (
    PayrollProcessSnapshotBankAccountResponse.from_dict(data_dict)
)
```

### Accessing properties

```python
# Access properties
print(payroll_process_snapshot_bank_account_response.id)
# Update properties
payroll_process_snapshot_bank_account_response.id = "new_value"
```
